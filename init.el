;; -*- coding:utf-8 mode: emacs-lisp -*-

(add-to-list 'load-path "~/.emacs.d/site-lisp/rspec-mode")
(require 'rspec-mode)

;(add-to-list 'load-path (expand-file-name "~/.emacs.d/site-lisp"))

;(add-to-list 'load-path (expand-file-name "~/.emacs.d/site-lisp/rails-minor-mode"))
;(require 'rails)

(add-to-list 'load-path "~/.emacs.d/site-lisp/color-theme")

 (require 'color-theme)
 (setq my-color-themes (list 'color-theme-billw 'color-theme-jsc-dark 
                              'color-theme-sitaramv-solaris 'color-theme-resolve
                              'color-theme-classic 'color-theme-jonadabian-slate
                              'color-theme-kingsajz 'color-theme-shaman
                              'color-theme-subtle-blue 'color-theme-snowish
                              'color-theme-sitaramv-nt 'color-theme-wheat))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(case-fold-search t)
 '(column-number-mode t)
 '(display-battery-mode t)
 '(display-time-mode t)
 '(global-font-lock-mode t nil (font-lock))
 '(load-home-init-file t t)
 '(set-terminal-coding-system "utf-8"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

 '(diff-added-face ((t (:foreground "green"))))
 '(diff-changed-face ((t (:foreground "yellow"))))
 '(diff-header-face ((t (:foreground "cyan"))))
 '(diff-hunk-header-face ((t (:foreground "magenta"))))
 '(diff-removed-face ((t (:foreground "red"))))
 '(flymake-errline ((((class color)) (:background "LightPink" :foreground "black"))))
 '(flymake-warnline ((((class color)) (:background "LightBlue2" :foreground "black"))))
 '(font-lock-builtin-face ((t (:foreground "deepskyblue"))))
 '(font-lock-comment-face ((t (:foreground "gray60"))))
 '(font-lock-doc-face ((t (:foreground "darkkhaki"))))
 '(font-lock-function-name-face ((t (:foreground "green" :background "black"))))
 '(font-lock-keyword-face ((t (:background "blue" :foreground "white"))))
 '(font-lock-string-face ((t (:foreground "white"))))
 '(font-lock-type-face ((t (:background "cyan" :foreground "black"))))
 '(font-lock-variable-name-face ((t (:foreground "yellow"))))
 '(highlight ((t (:foreground "black" :background "darkseagreen2"))))
 '(region ((t (:background "sienna")))))



;(set-default-font "-adobe-avant garde gothic-*-*-*-*-*-*-*-*-*-*-*-*")
(set-default-font "terminus-14")
;(set-default-font "monospace-11")

;; Uso espacios en vez de tabs
; (setq-default indent-tabs-mode nil)

(defun my-tabs-makefile-hook ()
  (setq indent-tabs-mode t))
(add-hook 'makefile-mode-hook 'my-tabs-makefile-hook)

; ========== Enable Line and Column Numbering ==========
;
; ; Show line-number in the mode line
(line-number-mode 1)

; ; Show column-number in the mode line
(column-number-mode 1)

; ========= Set colours ==========
;
; ; Set cursor and mouse-pointer colours
(set-cursor-color "red")
(set-mouse-color "goldenrod")
;
; ; Set region background colour
(set-face-background 'region "blue")
;
; ; Set emacs background colour

(set-background-color "black")
(set-foreground-color "grey")

; (setq c-default-style
;        '((php-mode . "php") ))

;; Agregamos el soporte para subversion
;;
;; (require 'vc-svn)

(autoload 'ruby-mode "ruby-mode" "Ruby editing mode." t)
(setq auto-mode-alist  (cons '("\\.rb$" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("Rakefile$" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("rakefile$" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("\\.rake$" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("\\.gemspec$" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("\\.rhtml$" . html-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("Gemfile$" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("\\.md$" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("\\.haml$" . haml-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("packaging$" . sh-mode) auto-mode-alist))

; Activo el sql-mode para los archivos .psql
(setq auto-mode-alist  (cons '("\\.psql$" . sql-mode) auto-mode-alist))

;;Customized syntax highlighting colors
(set-foreground-color "#dbdbdb")
(set-background-color "#000000")
(set-cursor-color "#ff0000")


(if (> (display-color-cells) 20)
    (custom-set-faces
     '(font-lock-builtin-face ((t (:foreground "deepskyblue"))))
     '(font-lock-comment-face ((t (:foreground "gray60"))))
     '(font-lock-doc-face ((t (:foreground "darkkhaki"))))
     '(font-lock-keyword-face ((t (:foreground "magenta"))))
     '(font-lock-function-name-face ((t (:foreground "green" :background "black"))))
;     '(font-lock-string-face ((t (:foreground "gold"))))
     '(font-lock-type-face ((t (:foreground "cyan" :background "slateblue"))))
     '(font-lock-variable-name-face ((t (:foreground "yellow"))))

     '(region ((t (:background "sienna"))))
     '(highlight ((t (:foreground "black" :background "darkseagreen2"))))

     '(diff-added-face ((t (:foreground "green"))))
     '(diff-changed-face ((t (:foreground "yellow"))))
     '(diff-header-face ((t (:foreground "cyan"))))
     '(diff-hunk-header-face ((t (:foreground "magenta"))))
     '(diff-removed-face ((t (:foreground "red")))))
)


;;;;;;;;;
;;;; KEYS
;;;;;;;;;;;;
;;;
(setq suggest-key-bindings t)
;;(global-set-key "\C-x\ s" 'ecb-goto-window-sources)
;;(global-set-key "\C-x\ d" 'ecb-goto-window-directories)
;;(global-set-key "\C-x\ h" 'ecb-goto-window-history)
;;(global-set-key "\C-x\ m" 'ecb-goto-window-methods)
(global-set-key "\C-x\ g" 'goto-line)
(global-set-key "\C-x\ i" 'indent-region)
(put 'downcase-region 'disabled nil)

;; (add-to-list 'load-path "~/.emacs.d/site-lisp/emacs-pry")
;;(require 'pry)
;; optional suggestions
;;(global-set-key [S-f9] 'pry-intercept)
;;(global-set-key [f9] 'pry-intercept-rerun)

;; When show-paren-mode is enabled a matching parenthesis is highlighted based on the location of point 
(show-paren-mode t)

;; Emacs autocomplete
(global-set-key [(tab)] 'smart-tab)
(defun smart-tab ()
  "This smart tab is minibuffer compliant: it acts as usual in
    the minibuffer. Else, if mark is active, indents region. Else if
    point is at the end of a symbol, expands it. Else indents the
    current line."
  (interactive)
  (if (minibufferp)
      (unless (minibuffer-complete)
        (dabbrev-expand nil))
    (if mark-active
        (indent-region (region-beginning)
                       (region-end))
      (if (looking-at "\\_>")
          (dabbrev-expand nil)
        (indent-for-tab-command)))))


;; Macros copadas para ruby
(fset 'ruby-insert-debugger
   "require 'debugger' ; debugger")

(global-set-key (kbd "C-c d") 'ruby-insert-debugger)

(fset 'ruby-remove-debugger
   [escape ?x ?r ?e ?p ?l tab ?s tab tab return ?r ?e ?q ?u ?i ?r ?e ?  ?\' ?d ?e ?u backspace ?b ?u ?g ?g ?e ?r ?\' ?  ?\; ?  ?d ?e ?u backspace ?b ?u ?g ?g ?e ?r return return])
(global-set-key (kbd "C-c D") 'ruby-remove-debugger)

(fset 'ruby-insert-map
   "map{|| }")
(global-set-key (kbd "C-c r m") 'ruby-insert-map)

(fset 'ruby-insert-each
   "each{|| }")
(global-set-key (kbd "C-c r e") 'ruby-insert-each)

(fset 'ruby-insert-class
   [?c ?l ?a ?s ?s return return ?e ?n ?d up up right right ? ])

(global-set-key (kbd "C-c r c") 'ruby-insert-class)

(fset 'ruby-insert-test
   [?t ?e ?s ?t ?  ?\' ?\' ?  ?d ?o ?  return return ?e ?n ?d up up right right right])
(global-set-key (kbd "C-c r t") 'ruby-insert-test)

(fset 'ruby-run-tests
      [escape ?x ?c ?o ?m ?p ?i ?l ?e return backspace backspace backspace backspace backspace backspace backspace backspace ?/ ?h ?o ?m ?e ?/ ?g ?r ?a ?m ?o ?s ?/ ?. ?r ?b ?e ?n ?v ?/ ?s ?h ?i ?m ?s ?/ ?r ?a ?k ?e return])

(global-set-key (kbd "C-c C-c x") 'ruby-run-tests)

(fset 'ruby-insert-cuba-app
   [?\C-c ?r ?c ?< ?  ?C ?u ?a backspace ?b ?a return return ?  ?  ?d ?e ?f ?i ?n ?e ?  ?d ?o return return ?  ?  ?e ?n ?d up up up up right])

(global-set-key (kbd "C-c r q") 'ruby-insert-cuba-app)

(fset 'open-wip
   [?\C-x ?\C-f backspace backspace ?/ ?h ?o ?m ?e tab ?g ?r ?a ?m ?o ?s ?/ ?s ?r ?c ?/ ?a ?l ?t tab ?c ?f ?- tab ?s ?t tab])
(global-set-key (kbd "C-c o w") 'open-wip)




