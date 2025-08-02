;;; mruber-darker-simple-theme.el --- Theme based on the gruber darker simplified (i think) for emacs 29+.

;; Just ~turn off~ some faces, make things more simple.

;; Author: Guilherme Monteiro de Oliveira <guilherme@monteiroliveira.com>

(deftheme mruber-darker-simple)

(defun mruber-darker-simple-set-face (font-name &rest args)
  (list font-name `((t ,args))))

(let ((mruber-darker-simple-white     "#FFFFFF")
      (mruber-darker-simple-black     "#000000")
      (mruber-darker-simple-fg        "#E4E4EF")
      (mruber-darker-simple-bg        "#181818")
      (mruber-darker-simple-bg-type-1 "#282828")
      (mruber-darker-simple-bg-type-2 "#453D41")
      (mruber-darker-simple-bg-type-3 "#484848")
      (mruber-darker-simple-bg-type-4 "#52494E")
      (mruber-darker-simple-comment   "#8B8589")
      (mruber-darker-simple-main      "#3888BA")
      (mruber-darker-simple-extra     "#9CAEBA")
      (mruber-darker-simple-error     "#BA3838")
      (mruber-darker-simple-accented  "#BA8438")
      )

  (custom-theme-set-variables
   'mruber-darker-simple
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'mruber-darker-simple
   (mruber-darker-simple-set-face 'default                              :background mruber-darker-simple-bg :foreground mruber-darker-simple-fg)
   (mruber-darker-simple-set-face 'border                               :background mruber-darker-simple-bg :foreground mruber-darker-simple-bg-type-2)
   (mruber-darker-simple-set-face 'cursor                               :background mruber-darker-simple-main)
   (mruber-darker-simple-set-face 'fringe                               :background nil :foreground mruber-darker-simple-bg-type-2)
   (mruber-darker-simple-set-face 'link                                 :foreground mruber-darker-simple-extra :underline t)
   (mruber-darker-simple-set-face 'link-visited                         :foreground mruber-darker-simple-comment :underline t)
   (mruber-darker-simple-set-face 'match                                :background mruber-darker-simple-bg-type-4)
   (mruber-darker-simple-set-face 'shadow                               :foreground mruber-darker-simple-bg-type-4)
   (mruber-darker-simple-set-face 'vertical-border                      :foreground mruber-darker-simple-bg-type-2)
   (mruber-darker-simple-set-face 'minibuffer-prompt                    :foreground mruber-darker-simple-extra)
   (mruber-darker-simple-set-face 'show-paren-match                     :background mruber-darker-simple-bg-type-4)
   (mruber-darker-simple-set-face 'show-paren-match-expression          :background mruber-darker-simple-bg-type-4)
   (mruber-darker-simple-set-face 'region                               :background mruber-darker-simple-bg-type-3 :foreground nil)
   (mruber-darker-simple-set-face 'secondary-selection                  :background mruber-darker-simple-bg-type-3 :foreground nil)
   (mruber-darker-simple-set-face 'tooltip                              :background mruber-darker-simple-bg-type-4 :foreground mruber-darker-simple-white)
   (mruber-darker-simple-set-face 'trailing-whitespace                  :foreground mruber-darker-simple-black :background mruber-darker-simple-error)

   (mruber-darker-simple-set-face 'font-lock-builtin-face               :foreground mruber-darker-simple-main)
   (mruber-darker-simple-set-face 'font-lock-keyword-face               :foreground mruber-darker-simple-main :bold t)
   (mruber-darker-simple-set-face 'font-lock-comment-face               :foreground mruber-darker-simple-comment :slant 'italic)
   (mruber-darker-simple-set-face 'font-lock-comment-delimiter-face     :foreground mruber-darker-simple-comment)
   (mruber-darker-simple-set-face 'font-lock-string-face                :foreground mruber-darker-simple-white)
   (mruber-darker-simple-set-face 'font-lock-type-face                  :foreground mruber-darker-simple-white)
   (mruber-darker-simple-set-face 'font-lock-warning-face               :foreground mruber-darker-simple-error)
   (mruber-darker-simple-set-face 'font-lock-variable-name-face         :foreground mruber-darker-simple-fg)
   (mruber-darker-simple-set-face 'font-lock-constant-face              :foreground mruber-darker-simple-extra)
   (mruber-darker-simple-set-face 'font-lock-doc-face                   :foreground mruber-darker-simple-white)
   (mruber-darker-simple-set-face 'font-lock-doc-string-face            :foreground mruber-darker-simple-white)
   (mruber-darker-simple-set-face 'font-lock-function-name-face         :foreground mruber-darker-simple-white)
   (mruber-darker-simple-set-face 'font-lock-preprocessor-face          :foreground mruber-darker-simple-white)
   (mruber-darker-simple-set-face 'font-lock-reference-face             :foreground mruber-darker-simple-white)

   (mruber-darker-simple-set-face 'mode-line                            :background mruber-darker-simple-bg-type-1 :foreground mruber-darker-simple-white)
   (mruber-darker-simple-set-face 'mode-line-buffer-id                  :background mruber-darker-simple-bg-type-1 :foreground mruber-darker-simple-white)
   (mruber-darker-simple-set-face 'mode-line-inactive                   :background mruber-darker-simple-bg-type-1 :foreground mruber-darker-simple-extra)

   (mruber-darker-simple-set-face 'highlight                            :background mruber-darker-simple-bg-type-1 :foreground nil)
   (mruber-darker-simple-set-face 'highlight-current-line-face          :background mruber-darker-simple-bg-type-1 :foreground nil)

   (mruber-darker-simple-set-face 'line-number                          :inherit 'default :foreground mruber-darker-simple-bg-type-4)
   (mruber-darker-simple-set-face 'line-number-current-line             :inherit 'line-number :foreground mruber-darker-simple-main)

   (mruber-darker-simple-set-face 'dired-directory                      :foreground mruber-darker-simple-main :weight 'bold)
   (mruber-darker-simple-set-face 'dired-ignored                        :foreground mruber-darker-simple-extra :inherit 'unspecified)
   (mruber-darker-simple-set-face 'dired-broken-symlink                 :foreground mruber-darker-simple-error :weight 'bold)

   (mruber-darker-simple-set-face 'whitespace-space                     :background mruber-darker-simple-bg :foreground mruber-darker-simple-bg-type-1)
   (mruber-darker-simple-set-face 'whitespace-tab                       :background mruber-darker-simple-bg :foreground mruber-darker-simple-bg-type-1)
   (mruber-darker-simple-set-face 'whitespace-hspace                    :background mruber-darker-simple-bg :foreground mruber-darker-simple-bg-type-1)
   (mruber-darker-simple-set-face 'whitespace-line                      :background mruber-darker-simple-bg :foreground mruber-darker-simple-error)
   (mruber-darker-simple-set-face 'whitespace-newline                   :background mruber-darker-simple-bg :foreground mruber-darker-simple-bg-type-2)
   (mruber-darker-simple-set-face 'whitespace-trailing                  :background mruber-darker-simple-error :foreground mruber-darker-simple-error)
   (mruber-darker-simple-set-face 'whitespace-empty                     :background mruber-darker-simple-bg :foreground mruber-darker-simple-bg-type-1)
   (mruber-darker-simple-set-face 'whitespace-indentation               :background mruber-darker-simple-bg :foreground mruber-darker-simple-bg-type-1)
   (mruber-darker-simple-set-face 'whitespace-space-after-tab           :background mruber-darker-simple-bg :foreground mruber-darker-simple-main)
   (mruber-darker-simple-set-face 'whitespace-space-before-tab          :background mruber-darker-simple-bg :foreground mruber-darker-simple-comment)

   (mruber-darker-simple-set-face 'magit-branch                         :foreground mruber-darker-simple-extra)
   (mruber-darker-simple-set-face 'magit-diff-hunk-header               :background mruber-darker-simple-bg-type-2)
   (mruber-darker-simple-set-face 'magit-diff-file-header               :background mruber-darker-simple-bg-type-4)
   (mruber-darker-simple-set-face 'magit-log-sha1                       :foreground mruber-darker-simple-error)
   (mruber-darker-simple-set-face 'magit-log-author                     :foreground mruber-darker-simple-comment)
   (mruber-darker-simple-set-face 'magit-log-head-label-remote          :foreground mruber-darker-simple-main :background mruber-darker-simple-bg-type-1)
   (mruber-darker-simple-set-face 'magit-log-head-label-local           :foreground mruber-darker-simple-extra :background mruber-darker-simple-bg-type-1)
   (mruber-darker-simple-set-face 'magit-log-head-label-tags            :foreground mruber-darker-simple-main :background mruber-darker-simple-bg-type-1)
   (mruber-darker-simple-set-face 'magit-log-head-label-head            :foreground mruber-darker-simple-fg :background mruber-darker-simple-bg-type-1)
   (mruber-darker-simple-set-face 'magit-item-highlight                 :background mruber-darker-simple-bg-type-1)
   (mruber-darker-simple-set-face 'magit-tag                            :foreground mruber-darker-simple-main :background mruber-darker-simple-bg)
   (mruber-darker-simple-set-face 'magit-blame-heading                  :background mruber-darker-simple-bg-type-1 :foreground mruber-darker-simple-fg)
   (mruber-darker-simple-set-face 'magit-header-line                    :foreground mruber-darker-simple-main :bold t)
   (mruber-darker-simple-set-face 'magit-section-heading                :foreground mruber-darker-simple-main :bold t)
   (mruber-darker-simple-set-face 'magit-branch-local                   :foreground mruber-darker-simple-white)

   (mruber-darker-simple-set-face 'compilation-info                     :foreground mruber-darker-simple-main :inherit 'unspecified)
   (mruber-darker-simple-set-face 'compilation-warning                  :foreground mruber-darker-simple-accented :bold t :inherit 'unspecified)
   (mruber-darker-simple-set-face 'compilation-error                    :foreground mruber-darker-simple-error)
   (mruber-darker-simple-set-face 'compilation-mode-line-fail           :foreground mruber-darker-simple-error :weight 'bold :inherit 'unspecified)
   (mruber-darker-simple-set-face 'compilation-mode-line-exit           :foreground mruber-darker-simple-white :weight 'bold :inherit 'unspecified)

   (mruber-darker-simple-set-face 'completions-annotations              :inherit 'shadow)

   (mruber-darker-simple-set-face 'ido-first-match                      :foreground mruber-darker-simple-main :bold nil)
   (mruber-darker-simple-set-face 'ido-only-match                       :foreground mruber-darker-simple-accented :bold t)
   (mruber-darker-simple-set-face 'ido-subdir                           :foreground mruber-darker-simple-extra :bold t)

   (mruber-darker-simple-set-face 'company-tooltip                      :foreground mruber-darker-simple-fg :background mruber-darker-simple-bg-type-1)
   (mruber-darker-simple-set-face 'company-tooltip-annotation           :foreground mruber-darker-simple-comment :background mruber-darker-simple-bg-type-2)
   (mruber-darker-simple-set-face 'company-tooltip-annotation-selection :foreground mruber-darker-simple-comment :background mruber-darker-simple-bg-type-2)
   (mruber-darker-simple-set-face 'company-tooltip-selection            :foreground mruber-darker-simple-fg :background mruber-darker-simple-bg-type-2)
   (mruber-darker-simple-set-face 'company-tooltip-mouse                :background mruber-darker-simple-bg-type-1)
   (mruber-darker-simple-set-face 'company-tooltip-common               :foreground mruber-darker-simple-main)
   (mruber-darker-simple-set-face 'company-tooltip-common-selection     :foreground mruber-darker-simple-main)
   (mruber-darker-simple-set-face 'company-scrollbar-fg                 :background mruber-darker-simple-bg)
   (mruber-darker-simple-set-face 'company-scrollbar-bg                 :background mruber-darker-simple-bg)
   (mruber-darker-simple-set-face 'company-preview                      :background mruber-darker-simple-main :foreground mruber-darker-simple-white)
   (mruber-darker-simple-set-face 'company-preview-common               :foreground mruber-darker-simple-main :background mruber-darker-simple-bg-type-1)
   )
  )

(provide-theme 'mruber-darker-simple)
