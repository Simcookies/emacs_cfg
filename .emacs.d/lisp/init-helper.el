;; Make shortcut for init.el
(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(defun kill-whole-word ()
  (interactive)
  (backward-word)
  (kill-word 1))

(defun ruby-test-testcase-name (name method)
  "Returns the sanitized name of the test"
  (cond
   ;; assume methods created with it are from minitest
   ;; so no need to sanitize them
   ((string= method "it")
    name)
   ((string= method "should") ;; shoulda
    name)
   ((string= name "setup")
    nil)
   ((string= method "test")
    name)
   ((string-match "^[\"']\\(.*\\)[\"']$\" name)
   (replace-regexp-in-string
     \"\\?\" \"\\\\\\\\?\"
     (replace-regexp-in-string
       \"'_?\\|(_?\\|)_?\" \".*\"
       (replace-regexp-in-string \" +\" \"_\" (match-string 1 name)))))
 ((string= method \"def\")
   name)))\"]\\)\"]"))))

;; Diminish some mirror mode
(defmacro my/safe-diminish (file mode &optional new-name)
  "https://github.com/larstvei/dot-emacs/blob/master/init.org"
  `(with-eval-after-load ,file
     (diminish ,mode ,new-name)))

(provide 'init-helper)
;;; init-help.el ends until here.
