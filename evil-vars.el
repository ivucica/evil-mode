;;;; Settings and variables

(defvar evil-state nil
  "The current Evil state.
To change the state, use `evil-change-state'
or call the state function (e.g., `evil-normal-state').")
(make-variable-buffer-local 'evil-state)

(defvar evil-modeline-tag nil
  "Modeline indicator for the current state.")
(make-variable-buffer-local 'evil-modeline-tag)

(defvar evil-states-alist nil
  "Specifications made by `evil-define-state'.
Entries have the form (STATE . PLIST), where PLIST is a property
list specifying various aspects of the state. To access a property,
use `evil-state-property'.")

(defvar evil-mode-map-alist nil
  "Association list of keymaps to use for Evil modes.
Elements have the form (MODE . KEYMAP), with the first keymaps
having higher priority.")
(make-variable-buffer-local 'evil-mode-map-alist)

(defconst evil-suppress-map (make-keymap)
  "Full keymap disabling default bindings to self-insert-command.")
(suppress-keymap evil-suppress-map)

(defconst evil-version "0.1"
  "The current version of Evil")

(defun evil-version ()
  (interactive)
  (message "Evil version %s" evil-version))

(provide 'evil-vars)

;;; evil-vars.el ends here
