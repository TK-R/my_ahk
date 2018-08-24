#Include IME.ahk
#Include alt-ime-ahk.ahk

; Altで所定の動作を行うように変更
!h::send {BS}
!i::send {Up}
!j::send {Left}
!k::send {Down}
!l::send {Right}

PgUp::
PgDn::
^PgUp::
^PgDn::
+PgUp::
+PgDn::
!PgUp::
!PgDn::
#PgUp::
#PgDn::
