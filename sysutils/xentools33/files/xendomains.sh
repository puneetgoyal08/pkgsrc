#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: xendomains.sh,v 1.1.1.1 2007/06/14 19:39:45 bouyer Exp $
#
# PROVIDE: xendomains
# REQUIRE: xenbackendd
# KEYWORD: shutdown
#
# xendomains		This required variable is a whitespace-separated
#			list of domains, e.g., xendomains="dom1 dom2 dom3".
#
# xendomains_config	This optional variable is a format string that
#			represents the path to the configuration file for
#			each domain.  "%s" is substituted with the name of
#			the domain.  The default is "@PKG_SYSCONFDIR@/%s".
#
# xendomains_prehook	This optional variable is a format string that
#			represents the command to run, if it exists, before
#			starting each domain.  "%s" is substituted with the
#			name of the domain.  The default is
#			"@PKG_SYSCONFDIR@/%s-pre".
#
# xendomains_posthook	This optional variable is a format string that
#			represents the command to run, if it exists, after
#			stopping each domain.  "%s" is substituted with the
#			name of the domain.  The default is
#			"@PKG_SYSCONFDIR@/%s-post".
#

. /etc/rc.subr

name="xendomains"
ctl_command="@PREFIX@/sbin/xm"
start_cmd="xendomains_start"
stop_cmd="xendomains_stop"
list_cmd="xendomains_list"
extra_commands="list"
privcmd_path="@PROCPATH@/xen/privcmd"

xendomains_start()
{
	[ -n "$xendomains" ] || return

	if [ ! -f ${privcmd_path} ]; then
		echo "${name}: Cannot find ${privcmd_path}!"
		exit 1
	fi

	echo "Starting xen domains."
	for domain in $xendomains; do
		case "$domain" in
		"")	continue ;;
		esac

		# Start off by running the pre-hook script if it's present.
		if [ -n "${xendomains_prehook}" ]; then
			cmdline=`printf "${xendomains_prehook}" $domain`
			cmd="${cmdline%% *}"
			if [ -x "$cmd" ]; then
				$cmdline || echo "Pre-hook \`\`$cmdline'' failed... skipping $domain."
				continue
			fi
		fi

		# Ask xend to create the domain.
		if [ -n "${xendomains_config}" ]; then
			file=`printf "${xendomains_config}" $domain`
			if [ -f "$file" ]; then
				${ctl_command} create "$file"
			fi
		fi
	done
}

xendomains_list() {
	# Output a whitespace-separated list of live guest domains.
	${ctl_command} list | awk '
		(FNR <= 2) { next }
		($5 !~ /s/) { s = s " " $1 }
		END { sub(" *", "", s); print s }'
}

xendomains_stop()
{
	# Determine an appropriate timeout waiting for all domains to
	# stop -- always wait at least 60s, and add 5s per active domain.
	#
	numdomains=$(xendomains_list | awk '{ print NF }')
	[ $numdomains -gt 0 ] || return
	timeout=$((60 + numdomains * 5))

	# Ask xend to stop every domain, and poll xend every 10s up to the
	# timeout period to check if all the domains are stopped.  We
	# consider a domain in the "s" (shutdown) state to be stopped.
	#
	echo "Stopping xen domains."
	for domain in $(xendomains_list); do
		${ctl_command} shutdown --halt $domain
	done
	while [ $timeout -gt 0 ]; do
		livedomains=$(xendomains_list)
		[ -n "$livedomains" ] || break
		timeout=$((timeout - 10))
		sleep 10
	done
	livedomains=$(xendomains_list)
	if [ -n "$livedomains" ]; then
		echo "Failed to stop: $livedomains"
	else
		echo "All domains stopped."
	fi

	# Finish off by running the post-hook script if it's present.
	for domain in $xendomains; do
		case "$domain" in
		"")	continue ;;
		esac
		if [ -n "${xendomains_posthook}" ]; then
			cmdline=`printf "${xendomains_posthook}" $domain`
			cmd="${cmdline%% *}"
			if [ -x "$cmd" ]; then
				$cmdline || echo "Post-hook \`\`$cmdline'' failed."
			fi
		fi
	done
}

load_rc_config $name

: ${xendomains_config="@PKG_SYSCONFDIR@/%s"}
: ${xendomains_prehook="@PKG_SYSCONFDIR@/%s-pre"}
: ${xendomains_posthook="@PKG_SYSCONFDIR@/%s-post"}

run_rc_command "$1"
