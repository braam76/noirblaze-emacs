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
   `(default ((t (:foreground ,gray-400 :background ,gray-900))))
   `(cursor ((t (:background ,white))))
   `(fringe ((t (:background ,gray-900))))
   `(mode-line ((t (:foreground ,gray-400 :background ,gray-800))))
   `(region ((t (:foreground ,gray-900 :background ,gray-600))))
   `(secondary-selection ((t (:background ,gray-700))))
   `(font-lock-builtin-face ((t (:foreground ,zinc-gray-600))))
   `(font-lock-comment-face ((t (:foreground ,gray-700))))
   `(font-lock-function-name-face ((t (:foreground ,white))))
   `(font-lock-keyword-face ((t (:foreground ,zinc-gray-600))))
   `(font-lock-string-face ((t (:foreground ,hot-pink))))
   `(font-lock-type-face ((t (:foreground ,zinc-gray-500))))
   `(font-lock-constant-face ((t (:foreground ,hot-pink))))
   `(font-lock-variable-name-face ((t (:foreground ,white))))
   `(minibuffer-prompt ((t (:foreground ,hot-pink :bold t))))
   `(font-lock-warning-face ((t (:foreground "red" :bold t))))))

;;;###autoload
(when (and load-file-name (boundp 'custom-theme-load-path))
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'noirblaze)
