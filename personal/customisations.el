(setq prelude-guru nil)

;; Show line numbers in margin
(global-linum-mode 1)

;; Theming
(global-hl-line-mode 0)
(setq whitespace-mode 0)

;; Disable to most annoying 'feature' ever.
(setq sp-autoescape-string-quote nil)

;; tab width of 4
(setq c-basic-offset 4)

;; standard width for my emacs window - 80 is not enough, what is this - 1970?
(setq whitespace-line-column 120)

;; copy and comment - http://stackoverflow.com/a/23588908/627806
(defun copy-and-comment-region (beg end &optional arg)
  "Duplicate the region and comment-out the copied text.
See `comment-region' for behavior of a prefix arg."
  (interactive "r\nP")
  (copy-region-as-kill beg end)
  (goto-char end)
  (yank)
  (comment-region beg end arg))

(global-set-key (kbd "C-c c") 'copy-and-comment-region)

;; delete trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(set-face-attribute 'default nil :height 125)
;;(set-face-attribute 'default nil :height 200)

;; Unbind Pesky Sleep Button which crashes emacs for me.
(global-unset-key [(control z)])

;; setup files ending in “.hbs” to open in web-mode
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
(require 'web-mode)
(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  )
(add-hook 'web-mode-hook  'my-web-mode-hook)

(provide 'customisations)
;;; customisations.el ends here
