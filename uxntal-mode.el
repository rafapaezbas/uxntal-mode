;; a simple major mode, uxntal

(setq uxntal-highlights
      '(
        ("(.*)" . 'font-lock-comment-face)
        ("BRK" . 'font-lock-keyword-face)
        ("LIT" . 'font-lock-keyword-face)
        ("\\(INC[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(POP[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(DUP[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(NIP[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(SWP[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(OVR[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(ROT[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(EQU[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(NEQ[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(GTH[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(LTH[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(JMP[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(JCN[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(JSR[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(STH[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(LDZ[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(STZ[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(LDR[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(STR[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(LDA[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(STA[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(DEI[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(DEO[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(ADD[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(SUB[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(MUL[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(DIV[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(AND[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(ORA[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(EOR[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\\(SFT[[:digit:]]?k?r?\\)" . 'font-lock-keyword-face)
        ("\|[[:alnum:]]*" . 'font-lock-keyword-face)
        ("\$[[:alnum:]]*" . 'font-lock-keyword-face)
        ("%[[:graph:]]*" . 'font-lock-function-name-face)
        ("@[[:graph:]]*" . 'font-lock-constant-face)
        (",?&[[:graph:]]*" . 'font-lock-constant-face)
        ("\\.[[:graph:]]*" . 'font-lock-variable-name-face)
        (",[[:graph:]]*" . 'font-lock-variable-nameype-face)
        (";[[:graph:]]*" . 'font-lock-variable-nameype-face)
        ("\\\"[[:graph:]]*" . 'font-lock-keyword-face)
        ))

(define-derived-mode uxntal-mode fundamental-mode "uxntal"
  "major mode for editing uxntal language code."
  (setq font-lock-string-face nil) 
  (setq font-lock-defaults '(uxntal-highlights)))

(add-hook 'find-file-hook
          (lambda ()
            (if (string= (file-name-extension buffer-file-name) "tal")
                (uxntal-mode))))

(provide 'uxntal-mode)
