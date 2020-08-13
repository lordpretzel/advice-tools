;;; advice-tools-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "advice-tools" "advice-tools.el" (0 0 0 0))
;;; Generated autoloads from advice-tools.el

(autoload 'advice-tools/advice-unadvice "advice-tools" "\
Remove all advices from symbol SYM.

\(fn SYM)" t nil)

(autoload 'advice-tools/advice-add-if-def "advice-tools" "\
Add advice `THEADVICE' as type `T to function `f' if the function to be advised and the advising function both exists.

\(fn F TYPE THEADVICE)" nil nil)

(autoload 'advice-tools/advice-remove-if-def "advice-tools" "\
Add advice if the function to be advised and the advising function both exists.

\(fn F THEADVICE)" nil nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; advice-tools-autoloads.el ends here
