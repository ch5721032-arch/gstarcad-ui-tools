;; alias-batch.lsp - Define command aliases from a text file
;; Command: AliasBatch
;; Usage: APPLOAD -> AliasBatch -> pick .txt with one "alias,command" per line
(defun c:AliasBatch ( / path f line )
  (setq path (getfiled "Alias list" "" "txt" 4))
  (if path
    (progn
      (setq f (open path "r"))
      (while (setq line (read-line f))
        (command "_.ALIASEDIT" "_A" (substr line 1 (vl-string-position 44 line)) (substr line (+ (vl-string-position 44 line) 2)))
      )
      (close f)
      (princ (strcat "\nAliases loaded from " path))
    )
  )
  (princ)
)
(princ "\nalias-batch.lsp loaded. Type AliasBatch to run.")
(princ)
