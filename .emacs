(require 'package)

(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
;; (package-initialize)

(setq package-list '(intero markdown-mode hindent yaml-mode neotree treemacs projectile eproject diff-hl csv-mode fiplr magit undo-tree helm))

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(menu-bar-mode -1)
(tool-bar-mode -1)

(global-nlinum-mode 1)
(global-diff-hl-mode 1)
(diff-hl-margin-mode)

(global-company-mode)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default c-basic-offset 2) 

(setq column-number-mode t)
(setq helm-mode-fuzzy-match t)
(setq nlinum-format "%2d  ")

(setq backup-directory-alist `(("." . "~/.saves")))

(global-set-key (kbd "M-\\") 'company-complete)
(global-set-key (kbd "M-n") 'company-select-next)
(global-set-key (kbd "M-p") 'company-select-previous)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") #'helm-buffers-list)

(setq-default indent-tabs-mode nil)

(global-unset-key (kbd "M-F"))
(global-set-key (kbd "M-F") 'fiplr-find-file)

;; (add-hook 'haskell-mode-hook 'intero-mode)
(add-hook 'elisp-mode-hook 'company-elisp)

;; (add-to-list 'custom-theme-load-path "~/cieplak/zenburn-emacs")
;; (load-theme 'zenburn t)

(setq whitespace-style '(face trailing tabs))
(custom-set-faces
 '(whitespace-tab ((t (:background "red")))))
(global-whitespace-mode)

(custom-set-variables
 '(inhibit-startup-screen t)
 '(load-home-init-file t t)
 '(package-selected-packages
   '(nlinum yaml-mode neotree treemacs projectile eproject diff-hl csv-mode fiplr magit undo-tree helm intero))
 '(show-trailing-whitespace t))
(if (display-graphic-p)
    (progn
      (toggle-scroll-bar -1)
      (setq initial-frame-alist
            '(
              (width . 106)
              (height . 60)
              ))
      (setq default-frame-alist
            '(
              (width . 106)
              (height . 60)
              ))))
(custom-set-faces)
