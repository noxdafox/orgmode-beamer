(use-package tex
  :ensure auctex
  :defer t
  :config
  (setq TeX-PDF-mode t)
  (setq TeX-engine 'xetex))

(use-package org
  :config
  (setq org-latex-pdf-process
        '("xelatex -shell-escape -interaction nonstopmode %f"
          "xelatex -shell-escape -interaction nonstopmode %f")))

(use-package ox-latex
  :config
  (setq org-latex-listings 'minted)
  (setq org-latex-minted-options
        '(("frame" "none")
	  ("fontsize" "\\scriptsize")))
  (setq org-latex-minted-langs
        (append org-latex-minted-langs '((elixir "elixir")
                                         (erlang "erlang")
                                         (python "python")))))
