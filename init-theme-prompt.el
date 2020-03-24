(defun select-theme ()
  "Asks the user if they want to load a light theme or a dark theme"
  (if (y-or-n-p "Load light theme?")
      (load-theme 'gruvbox-light-soft t)
    (load-theme 'tango-dark t)))

(select-theme)
