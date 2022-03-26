;;; chicken-test.scm
(import lazy-ffi)
(require-library lazy-ffi)
#~("msvcrt.dll" "dll-test.dll")

; print from pointer
(define test (#~get_pointer #x00AF9F4E return: pointer:))
(#~printf "test\n")
(#~printf "0x%08X\n" test)
(#~print_char_from_pointer test)

;; write to file
(define pointerval (#~get_char_from_pointer test return: char:))
(define outputfile (#~fopen "C:\\work\\c\\chicken-sacrifice\\test-foreign-dll\\test-res.txt" "w" return: pointer:))
(#~fprintf outputfile "strength: %02X\n" pointerval)
(#~fclose outputfile)

(import (chicken format))
(printf "test~%")
(printf "~a~%" "test")
; 0x4d2
(printf "~x" 1234)
(printf "~C" 61)

;; char get_char_from_pointer(char *pointer) {return *pointer;}
;(define test2 (#~get_char_from_pointer test return: char:))
;(#~print test2)

;(#~freopen "CONOUT$" "w" #~stdout)
;(#~freopen "CONOUT$" "w" current-output-port)
;(#~freopen "CONOUT$" "w" stdout)

; start server at 0.0.0.0 port 9873
;(import nrepl)
;(nrepl 9873)


; (require-library (chicken foreign))
;
; -require-extension NAME
; -no-bound-checks - disable bound variable checks
; -include-path PATHNAME
; CHICKEN_REPOSITORY_PATH
; (import (chicken foreign))
; ;char_address = (LPVOID)0x00AF9F4E; ;GOG (str stat)
; (define newpointer (address->pointer #x00AF9F4E))
; (set! newpointer (address->pointer #x00AF9F4E))
; (define newpointer (pointer-s16-ref #x00AF9F4E))
;
; (define-foreign-type port-number int      ; used by servent type
;  (foreign-lambda int "htons" int)
;  (foreign-lambda int "ntohs" int) )


