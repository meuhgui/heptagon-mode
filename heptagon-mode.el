(defgroup heptagon-mode nil "A mode for Heptagon")

(defvar heptagon-font-lock-keywords)
(setq
 heptagon-font-lock-keywords
 '(("(\\*\\(?:[^*]\\|\\*[^/]\\)*\\*+)" . font-lock-comment-face)
   ("\\<\\(int\\|float\\|bool\\)\\>" . font-lock-type-face)
   ("->" . font-lock-keyword-face)
   "\\<type\\>" "\\<const\\>" "\\<fun\\>" "\\<node\\>" "\\<returns\\>"
   "\\<var\\>" "\\<let\\>" "\\<tel\\>" "\\<if\\>" "\\<then\\>" "\\<else\\>"
   "\\<pre\\>" "\\<fby\\>" "\\<reset\\>" "\\<every\\>" "\\<merge\\>"
   "\\<when\\>" "\\<on\\>" "\\<last\\>" "\\<automaton\\>" "\\<state\\>"
   "\\<do\\>" "\\<until\\>" "\\<unless\\>" "\\<continue\\>" "\\<end\\>"
   "\\<switch\\>" "\\<present\\>" "\\<default\\>" "\\<with\\>" "\\<map\\>"
   "\\<fold\\>" "\\<mapfold\\>" "\\<mapi\\>" "\\<foldi\\>" "\\<mapfoldi\\>"))

(add-to-list 'auto-mode-alist '("\\.ept\\'" . heptagon-mode))

(define-derived-mode heptagon-mode prog-mode "Heptagon"
  "Major mode for editing Heptagon source code."
  (setq font-lock-defaults '(heptagon-font-lock-keywords)))

(provide 'heptagon-mode)
