
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
(global-linum-mode 1)
(setq column-number-mode t)
(setq helm-mode-fuzzy-match t)
(setq linum-format "%2d  ")
(setq backup-directory-alist `(("." . "~/.saves")))
(global-set-key (kbd "M-\\") 'company-complete)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") #'helm-buffers-list)
(global-unset-key (kbd "M-F"))
(global-set-key (kbd "M-F") 'fiplr-find-file)
(add-hook 'haskell-mode-hook 'intero-mode)
(add-to-list 'custom-theme-load-path "~/cieplak/zenburn-emacs")
(load-theme 'zenburn t)
(custom-set-variables
 '(inhibit-startup-screen t)
 '(load-home-init-file t t)
 '(package-selected-packages
   (quote
    (diff-hl csv-mode fiplr magit undo-tree helm intero))))
(if (display-graphic-p)
    (progn
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
