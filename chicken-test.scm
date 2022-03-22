;;; chicken-test.scm
(import lazy-ffi)
(require-library lazy-ffi)

#~"msvcrt.dll"
(#~printf "test %d\n" 5)

#~"dll-test.dll"
(define test (#~get_pointer #x00AF9F4E return: pointer:))
(#~printf "0x%08X\n" test)

; char get_char_from_pointer(char *pointer) {return *pointer;}
(define test2 (#~get_char_from_pointer test return: char:))
(#~printf "%02X" test2)

; void print_char_from_pointer(char *pointer) {printf("%c\n", *pointer);}
(#~print_char_from_pointer test)
(#~printf "%c\n" test2)



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


