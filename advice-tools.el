;;; advice-tools.el --- Tools for managing function advices. -*- lexical-binding: t -*-

;; Author: Boris Glavic
;; Maintainer: Boris Glavic
;; Version: 20200813
;; Package-Requires: ()
;; Homepage: homepage
;; Keywords: advice, library


;; This file is not part of GNU Emacs

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.


;;; Commentary:

;; Tools for adding and removing advice from/to functions.

;;; Code:

;;;###autoload
(defun advice-tools/advice-unadvice (sym)
  "Remove all advices from symbol SYM."
  (interactive "aFunction symbol: ")
  (advice-mapc (lambda (advice _props) (advice-remove sym advice)) sym)
  )

;;;###autoload
(defun advice-tools/advice-add-if-def (f type theadvice)
  "Add advice `THEADVICE' as type `T to function `f' if the function to be advised and the advising function both exists."
  (when (and (fboundp f)  (fboundp theadvice))
    (advice-add f type theadvice)
    )
  )

;;;###autoload
(defun advice-tools/advice-remove-if-def (f theadvice)
  "Add advice if the function to be advised and the advising function both exists."
  (when (and (fboundp f)  (fboundp theadvice))
    (advice-remove f theadvice)
    )
  )

(provide 'advice-tools)
;;; advice-tools.el ends here
