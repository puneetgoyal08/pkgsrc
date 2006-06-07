# $NetBSD: bsd.check.mk,v 1.1 2006/06/03 23:11:42 jlam Exp $
#
# This Makefile fragment is included by bsd.pkg.mk and provides all
# variables and targets related to build and install checks.
#
# The following are the "public" targets provided this module:
#
#    check-files-pre, check-files-post, check-files
#    check-interpreter, check-shlibs, check-vulnerable, check-wrkref
#

.include "${PKGSRCDIR}/mk/check/check-files.mk"
.include "${PKGSRCDIR}/mk/check/check-interpreter.mk"
.include "${PKGSRCDIR}/mk/check/check-shlibs.mk"
.include "${PKGSRCDIR}/mk/check/check-vulnerable.mk"
.include "${PKGSRCDIR}/mk/check/check-wrkref.mk"

######################################################################
### check-clean (PRIVATE)
######################################################################
### check-clean is a helper target onto which one can hook all of the
### targets that clean up the output of "check" targets.
###
.PHONY: check-clean
check-clean:
	@${DO_NADA}
