
(require 'package)
(package-initialize)
;;(add-to-list 'package-archives
;;	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
;;(package-refresh-contents)

(custom-set-variables
 '(package-selected-packages (quote (ctags-update ctags))))

(custom-set-faces)

(keyboard-translate ?\C-h ?\C-?)

(menu-bar-mode -1)
(global-linum-mode 1)
(setq column-number-mode t)
(setq linum-format "%4d  ")

(setq backup-directory-alist `(("." . "~/.saves")))

(custom-set-variables
 '(load-home-init-file t t)
 '(inhibit-startup-screen t))


(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)
(setq require-final-newline t)
