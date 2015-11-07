
;; Scala-mode2
(unless (package-installed-p 'scala-mode2)
  (package-refresh-contents) (package-install 'scala-mode2))

(add-to-list 'load-path "~/.emacs.d/elpa/scala-mode2-20150617.2350/scala-mode2")
(require 'scala-mode2)

;; sbt mode for repl integration

(unless (package-installed-p 'sbt-mode)
  (package-refresh-contents) (package-install 'sbt-mode))

;(add-to-list 'load-path "/path/to/sbt-mode/")
(require 'sbt-mode)

;; ensime

(unless (package-installed-p 'ensime)
  (package-refresh-contents) (package-install 'ensime))

(require 'ensime)
(add-hook 'scala-mode2-hook 'ensime-scala-mode-hook)
(add-hook 'scala-mode-hook #'yas-minor-mode)
;; but company-mode / yasnippet conflict. Disable TAB in company-mode with
(define-key company-active-map [tab] nil)

