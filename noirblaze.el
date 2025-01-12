(let ((gray-900 "#121212")
      (gray-800 "#323232")
      (gray-700 "#535353")
      (gray-600 "#737373")
      (gray-500 "#949494")
      (gray-450 "#a7a7a7")
      (gray-400 "#b4b4b4")
      (gray-300 "#d5d5d5")
      (gray-200 "#f5f5f5")

      (zinc-gray-900 "#212121")
      (zinc-gray-600 "#7a7a7a")
      (zinc-gray-500 "#787878")
      (zinc-gray-200 "#b0b0b0")

      (hot-pink "#ff0088")
      (white "#ffffff"))

  (deftheme noirblaze "A minimal emacs theme with a touch of hot pink. Ported from Vim.")

  (custom-theme-set-faces
   'noirblaze
   ;; Default colors, if other is not applied (I think)
   `(default ((t (:foreground ,gray-400 :background ,gray-900))))
   ;; Fringe is same color as background for default ^ value
   `(fringe ((t (:background ,gray-900))))
   
   ;; Cursor and minibuffer
   `(cursor ((t (:background ,white))))
   `(mode-line ((t (:foreground ,gray-400 :background ,gray-800))))
   `(minibuffer-prompt ((t (:foreground ,hot-pink :bold t))))

   ;; Selecting region
   `(region ((t (:foreground ,gray-900 :background ,gray-600))))
   `(secondary-selection ((t (:background ,gray-700))))

   ;; Basic keywords colors
   `(font-lock-builtin-face ((t (:foreground ,zinc-gray-600))))
   `(font-lock-comment-face ((t (:foreground ,gray-700))))
   `(font-lock-function-name-face ((t (:foreground ,white))))
   `(font-lock-keyword-face ((t (:foreground ,zinc-gray-600))))
   `(font-lock-string-face ((t (:foreground ,hot-pink))))
   `(font-lock-type-face ((t (:foreground ,zinc-gray-500))))
   `(font-lock-constant-face ((t (:foreground ,hot-pink))))
   `(font-lock-variable-name-face ((t (:foreground ,white))))
   `(font-lock-warning-face ((t (:foreground "red" :bold t))))

   ;; Ido mode (file navigation in minibuffer)
   `(ido-subdir ((t (:foreground ,hot-pink))))
   `(ido-first-match ((t (:foreground ,gray-400 :bold t))))
   `(ido-only-match ((t (:foreground ,gray-400 :bold t))))

   ;; Dired buffer
   `(dired-directory ((t (:foreground ,hot-pink :background ,gray-900))))
   `(dired-header ((t (:foreground ,hot-pink))))
   ))

;;;###autoload
(when (and load-file-name (boundp 'custom-theme-load-path))
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'noirblaze)
