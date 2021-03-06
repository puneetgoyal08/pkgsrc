$NetBSD$

* Fix potential XSS vulnerability, r1044.

--- system/modules/frontend/ModuleArticlenav.php.orig	2009-11-21 12:49:18.000000000 +0000
+++ system/modules/frontend/ModuleArticlenav.php
@@ -91,7 +91,7 @@ class ModuleArticlenav extends Module
 				return '';
 			}
 
-			$strAlias = (strlen($this->objArticles->alias) && !$GLOBALS['TL_CONFIG']['disableAlias']) ? $this->objArticles->alias : $this->objArticles->id;
+			$strAlias = ($this->objArticles->alias != '' && !$GLOBALS['TL_CONFIG']['disableAlias']) ? $this->objArticles->alias : $this->objArticles->id;
 			$this->redirect($this->addToUrl('articles=' . $strAlias));
 		}
 
