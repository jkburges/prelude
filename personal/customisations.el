(setq prelude-guru nil)

;; Show line numbers in margin
(global-linum-mode 1)

;; Split windows horizontally by default
(setq split-height-threshold nil)
(setq split-width-threshold 0)

;; Theming
(load-theme 'adwaita)
(global-hl-line-mode 0)
(setq whitespace-mode 0)

;; Disable to most annoying 'feature' ever.
(setq sp-autoescape-string-quote nil)

;; tab width of 4
(setq c-basic-offset 4)

;; standard width for my emacs window - 80 is not enough, what is this - 1970?
(setq whitespace-line-column 120)

(provide 'customisations)
;;; customisations.el ends here
