;;; mruber-darker-theme.el --- Theme based on the gruber darker for emacs 29+.

;; Copyright (C) 2024-2025 Guilherme M. de Oliveira
;; Copyright (C) 2013-2016 Alexey Kutepov a.k.a rexim
;; Copyright (C) 2009-2010 Jason R. Blevins

;; Author: Guilherme Monteiro de Oliveira <guilherme@monteiroliveira.com>

(deftheme mruber-darker)

(defun mruber-darker-set-face (font-name &rest args)
  (list font-name `((t ,args))))

(let ((mruber-darker-white     "#FFFFFF")
      (mruber-darker-black     "#000000")
      (mruber-darker-fg        "#E4E4EF")
      (mruber-darker-fg-1      "#F4F4FF")
      (mruber-darker-fg-2      "#F5F5F5")
      (mruber-darker-bg        "#181818")
      (mruber-darker-bg-1      "#282828")
      (mruber-darker-bg-2      "#453D41")
      (mruber-darker-bg-3      "#484848")
      (mruber-darker-bg-4      "#52494E")
      (mruber-darker-color-1   "#F43841")
      (mruber-darker-color-1-1 "#C73C3F")
      (mruber-darker-color-1-2 "#FF4F58")
      (mruber-darker-color-2   "#BFAD80")
      (mruber-darker-color-3   "#2D6E96")
      (mruber-darker-color-4   "#8B8589")
      (mruber-darker-color-5   "#95A99F")
      (mruber-darker-color-6   "#435C6B")
      (mruber-darker-color-6-1 "#565F73")
      (mruber-darker-color-6-2 "#303540")
      (mruber-darker-color-7   "#9E95C7"))

  (custom-theme-set-variables
   'mruber-darker
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'mruber-darker

   ;; Basic (essentials)
   (mruber-darker-set-face 'default             :background mruber-darker-bg :foreground mruber-darker-fg)
   (mruber-darker-set-face 'border              :background mruber-darker-bg :foreground mruber-darker-bg-2)
   (mruber-darker-set-face 'cursor              :background mruber-darker-color-3)
   (mruber-darker-set-face 'fringe              :background nil :foreground mruber-darker-bg-2)
   (mruber-darker-set-face 'vertical-border     :foreground mruber-darker-bg-2)
   (mruber-darker-set-face 'link                :foreground mruber-darker-color-6 :underline t)
   (mruber-darker-set-face 'link-visited        :foreground mruber-darker-color-7 :underline t)
   (mruber-darker-set-face 'match               :background mruber-darker-bg-4)
   (mruber-darker-set-face 'shadow              :foreground mruber-darker-bg-4)
   (mruber-darker-set-face 'minibuffer-prompt   :foreground mruber-darker-color-6)
   (mruber-darker-set-face 'region              :background mruber-darker-bg-3 :foreground nil)
   (mruber-darker-set-face 'secondary-selection :background mruber-darker-bg-3 :foreground nil)
   (mruber-darker-set-face 'trailing-whitespace :foreground mruber-darker-black :background mruber-darker-color-1)
   (mruber-darker-set-face 'tooltip             :background mruber-darker-bg-4 :foreground mruber-darker-white)

   ;; Font lock
   (mruber-darker-set-face 'font-lock-builtin-face           :foreground mruber-darker-color-3)
   (mruber-darker-set-face 'font-lock-comment-face           :foreground mruber-darker-color-4 :slant 'italic)
   (mruber-darker-set-face 'font-lock-comment-delimiter-face :foreground mruber-darker-color-4)
   (mruber-darker-set-face 'font-lock-constant-face          :foreground mruber-darker-color-5)
   (mruber-darker-set-face 'font-lock-doc-face               :foreground mruber-darker-color-2)
   (mruber-darker-set-face 'font-lock-doc-string-face        :foreground mruber-darker-color-2)
   (mruber-darker-set-face 'font-lock-function-name-face     :foreground mruber-darker-color-6)
   (mruber-darker-set-face 'font-lock-keyword-face           :foreground mruber-darker-color-3 :bold t :slant 'italic)
   (mruber-darker-set-face 'font-lock-preprocessor-face      :foreground mruber-darker-color-5)
   (mruber-darker-set-face 'font-lock-reference-face         :foreground mruber-darker-color-5)
   (mruber-darker-set-face 'font-lock-string-face            :foreground mruber-darker-color-2)
   (mruber-darker-set-face 'font-lock-type-face              :foreground mruber-darker-color-5)
   (mruber-darker-set-face 'font-lock-variable-name-face     :foreground mruber-darker-fg-1)
   (mruber-darker-set-face 'font-lock-warning-face           :foreground mruber-darker-color-1)

   ;; Mode Line
   (mruber-darker-set-face 'mode-line           :background mruber-darker-bg-1 :foreground mruber-darker-white)
   (mruber-darker-set-face 'mode-line-buffer-id :background mruber-darker-bg-1 :foreground mruber-darker-white)
   (mruber-darker-set-face 'mode-line-inactive  :background mruber-darker-bg-1 :foreground mruber-darker-color-5)

   ;; Dired
   (mruber-darker-set-face 'dired-directory    :foreground mruber-darker-color-6 :weight 'bold)
   (mruber-darker-set-face 'dired-ignored      :foreground mruber-darker-color-5 :inherit 'unspecified)

   ;; Line Highlighting
   (mruber-darker-set-face 'highlight                   :background mruber-darker-bg-1 :foreground nil)
   (mruber-darker-set-face 'highlight-current-line-face :background mruber-darker-bg-1 :foreground nil)

   ;; line numbers
   (mruber-darker-set-face 'line-number              :inherit 'default :foreground mruber-darker-bg-4)
   (mruber-darker-set-face 'line-number-current-line :inherit 'line-number :foreground mruber-darker-color-3)

   ;; Whitespace
   (mruber-darker-set-face 'whitespace-space            :background mruber-darker-bg :foreground mruber-darker-bg-1)
   (mruber-darker-set-face 'whitespace-tab              :background mruber-darker-bg :foreground mruber-darker-bg-1)
   (mruber-darker-set-face 'whitespace-hspace           :background mruber-darker-bg :foreground mruber-darker-bg-2)
   (mruber-darker-set-face 'whitespace-line             :background mruber-darker-bg-2 :foreground mruber-darker-color-1-2)
   (mruber-darker-set-face 'whitespace-newline          :background mruber-darker-bg :foreground mruber-darker-bg-2)
   (mruber-darker-set-face 'whitespace-trailing         :background mruber-darker-color-1 :foreground mruber-darker-color-1)
   (mruber-darker-set-face 'whitespace-empty            :background mruber-darker-color-3 :foreground mruber-darker-color-3)
   (mruber-darker-set-face 'whitespace-indentation      :background mruber-darker-color-3 :foreground mruber-darker-color-1)
   (mruber-darker-set-face 'whitespace-space-after-tab  :background mruber-darker-color-3 :foreground mruber-darker-color-3)
   (mruber-darker-set-face 'whitespace-space-before-tab :background mruber-darker-color-4 :foreground mruber-darker-color-4)

   ;; Org mode
   (mruber-darker-set-face 'org-agenda-structure  :foreground mruber-darker-color-6)
   (mruber-darker-set-face 'org-column            :background mruber-darker-bg-1)
   (mruber-darker-set-face 'org-column-title      :background mruber-darker-bg-1 :underline t :weight 'bold)
   (mruber-darker-set-face 'org-done              :foreground mruber-darker-color-2)
   (mruber-darker-set-face 'org-todo              :foreground mruber-darker-color-1-1)
   (mruber-darker-set-face 'org-upcoming-deadline :foreground mruber-darker-color-7)

   ;; Magit
   (mruber-darker-set-face 'magit-branch                :foreground mruber-darker-color-6)
   (mruber-darker-set-face 'magit-diff-hunk-header      :background mruber-darker-bg-2)
   (mruber-darker-set-face 'magit-diff-file-header      :background mruber-darker-bg-4)
   (mruber-darker-set-face 'magit-log-sha1              :foreground mruber-darker-color-1-1)
   (mruber-darker-set-face 'magit-log-author            :foreground mruber-darker-color-4)
   (mruber-darker-set-face 'magit-log-head-label-remote :foreground mruber-darker-color-2 :background mruber-darker-bg-1)
   (mruber-darker-set-face 'magit-log-head-label-local  :foreground mruber-darker-color-6 :background mruber-darker-bg-1)
   (mruber-darker-set-face 'magit-log-head-label-tags   :foreground mruber-darker-color-3 :background mruber-darker-bg-1)
   (mruber-darker-set-face 'magit-log-head-label-head   :foreground mruber-darker-fg :background mruber-darker-bg-1)
   (mruber-darker-set-face 'magit-item-highlight        :background mruber-darker-bg-1)
   (mruber-darker-set-face 'magit-tag                   :foreground mruber-darker-color-3 :background mruber-darker-bg)
   (mruber-darker-set-face 'magit-blame-heading         :background mruber-darker-bg-1 :foreground mruber-darker-fg)

   ;; Compilation
   (mruber-darker-set-face 'compilation-info           :foreground mruber-darker-color-2 :inherit 'unspecified)
   (mruber-darker-set-face 'compilation-warning        :foreground mruber-darker-color-4 :bold t :inherit 'unspecified)
   (mruber-darker-set-face 'compilation-error          :foreground mruber-darker-color-1-1)
   (mruber-darker-set-face 'compilation-mode-line-fail :foreground mruber-darker-color-1 :weight 'bold :inherit 'unspecified)
   (mruber-darker-set-face 'compilation-mode-line-exit :foreground mruber-darker-color-2 :weight 'bold :inherit 'unspecified)

   ;; Completion
   (mruber-darker-set-face 'completions-annotations :inherit 'shadow)

   ;; Company
   (mruber-darker-set-face 'company-tooltip                      :foreground mruber-darker-fg :background mruber-darker-bg-1)
   (mruber-darker-set-face 'company-tooltip-annotation           :foreground mruber-darker-color-4 :background mruber-darker-bg-2)
   (mruber-darker-set-face 'company-tooltip-annotation-selection :foreground mruber-darker-color-4 :background mruber-darker-bg-2)
   (mruber-darker-set-face 'company-tooltip-selection            :foreground mruber-darker-fg :background mruber-darker-bg-2)
   (mruber-darker-set-face 'company-tooltip-mouse                :background mruber-darker-bg-1)
   (mruber-darker-set-face 'company-tooltip-common               :foreground mruber-darker-color-2)
   (mruber-darker-set-face 'company-tooltip-common-selection     :foreground mruber-darker-color-2)
   (mruber-darker-set-face 'company-scrollbar-fg                 :background mruber-darker-bg-1)
   (mruber-darker-set-face 'company-scrollbar-bg                 :background mruber-darker-bg-2)
   (mruber-darker-set-face 'company-preview                      :background mruber-darker-color-2)
   (mruber-darker-set-face 'company-preview-common               :foreground mruber-darker-color-2 :background mruber-darker-bg-1)))

(provide-theme 'mruber-darker)
