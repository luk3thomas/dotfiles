(live-add-packs '(~/.live-packs/lthomas-pack))
(live-add-packs '(~/.live-packs/lthomas-pack/lib/evilpack))

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )
