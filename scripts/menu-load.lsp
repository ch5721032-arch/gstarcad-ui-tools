;; menu-load.lsp - Load a custom menu/toolbar file
;; Command: MenuLoad
;; Usage: APPLOAD -> MenuLoad -> pick .mnu/.cui file -> menu loads
(defun c:MenuLoad ( / path )
  (setq path (getfiled "Load menu file" "" "mnu,cui" 4))
  (if path
    (progn
      (command "_.MENU" path)
      (princ (strcat "\nMenu loaded: " path))
    )
  )
  (princ)
)
(princ "\nmenu-load.lsp loaded. Type MenuLoad to run.")
(princ)
