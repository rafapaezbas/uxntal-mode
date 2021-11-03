;; a simple major mode, uxntal

(setq uxntal-highlights
      '(
        ("(.*)" . 'font-lock-comment-face)
        ("\|[[:alnum:]]*" . 'font-lock-keyword-face)
        ("\$[[:alnum:]]*" . 'font-lock-keyword-face)
        ("%[[:graph:]]*" . 'font-lock-function-name-face)
        ("@[[:graph:]]*" . 'font-lock-constant-face)
        (",?&[[:graph:]]*" . 'font-lock-constant-face)
        ("\\(^\\|[[:space:]]\\)\\.[[:graph:]]*" . 'font-lock-variable-name-face)
        (",[[:graph:]]*" . 'font-lock-variable-nameype-face)
        (";[[:graph:]]*" . 'font-lock-variable-nameype-face)
        ("\\\"[[:graph:]]*" . 'font-lock-keyword-face)
        ("BRK" . 'font-lock-keyword-face)
        ("LIT" . 'font-lock-keyword-face)
        ("\\(INC[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(POP[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(DUP[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(NIP[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(SWP[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(OVR[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(ROT[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(EQU[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(NEQ[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(GTH[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(LTH[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(JMP[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(JCN[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(JSR[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(STH[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(LDZ[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(STZ[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(LDR[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(STR[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(LDA[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(STA[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(DEI[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(DEO[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(ADD[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(SUB[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(MUL[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(DIV[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(AND[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(ORA[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(EOR[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ("\\(SFT[[:digit:]]?k?r?\\(\s\\|\t\\|\n\\)\\)" . 'font-lock-keyword-face)
        ))

(defun uxntal-insert-devices ()
  "Inserts devices boiler plate code"
  (interactive)
  (insert 
"|00 @System     [ &vector $2 &wst      $1 &rst    $1 &pad   $4 &r      $2 &g      $2 &b    $2 &debug  $1 &halt $1 ]
|10 @Console    [ &vector $2 &read     $1 &pad    $5 &write $1 &error  $1 ]
|20 @Screen     [ &vector $2 &width    $2 &height $2 &pad   $2 &x      $2 &y      $2 &addr $2 &pixel  $1 &sprite $1 ]
|30 @Audio0     [ &vector $2 &position $2 &output $1 &pad   $3 &adsr   $2 &length $2 &addr $2 &volume $1 &pitch $1 ]
|40 @Audio1     [ &vector $2 &position $2 &output $1 &pad   $3 &adsr   $2 &length $2 &addr $2 &volume $1 &pitch $1 ]
|50 @Audio2     [ &vector $2 &position $2 &output $1 &pad   $3 &adsr   $2 &length $2 &addr $2 &volume $1 &pitch $1 ]
|60 @Audio3     [ &vector $2 &position $2 &output $1 &pad   $3 &adsr   $2 &length $2 &addr $2 &volume $1 &pitch $1 ]
|80 @Controller [ &vector $2 &button   $1 &key    $1 ]
|90 @Mouse      [ &vector $2 &x        $2 &y      $2 &state $1 &wheel  $1 ]
|a0 @File       [ &vector $2 &success  $2 &offset-hs $2 &offset-ls $2 &name   $2 &length $2 &load $2 &save   $2 ]
|b0 @DateTime   [ &year   $2 &month    $1 &day    $1 &hour  $1 &minute $1 &second $1 &dotw $1 &doty   $2 &isdst $1 ]"))


(define-derived-mode uxntal-mode fundamental-mode "uxntal"
  "major mode for editing uxntal language code."
  (setq font-lock-string-face nil) 
  (setq font-lock-defaults '(uxntal-highlights)))
  
(define-key uxntal-mode-map (kbd "C-c C-d") 'uxntal-insert-devices)

(add-hook 'find-file-hook
          (lambda ()
            (if (string= (file-name-extension buffer-file-name) "tal")
                (uxntal-mode))))

(provide 'uxntal-mode)
