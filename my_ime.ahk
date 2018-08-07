#Include IME.ahk
#Include alt-ime-ahk.ahk

; クリック動作
sc03A & LButton::send ^{LButton}

; CapslockでCtrl相当の動作を実行するよう変更
sc03A & q::send ^{q}
sc03A & w::send ^{w}
sc03A & e::send ^{e}
sc03A & r::send ^{r}
sc03A & t::send ^{t}
sc03A & y::send ^{y}
sc03A & u::send ^{u}
sc03A & i::send ^{i}
sc03A & o::send ^{o}
sc03A & p::send ^{p}
sc03A & a::send ^{a}
sc03A & s::send ^{s}
sc03A & d::send ^{d}
sc03A & f::send ^{f}
sc03A & g::send ^{g}
sc03A & h::send ^{h}
sc03A & j::send ^{j}
sc03A & k::send ^{k}
sc03A & l::send ^{l}
sc03A & z::send ^{z}
sc03A & x::send ^{x}
sc03A & c::send ^{c}
sc03A & v::send ^{v}
sc03A & b::send ^{b}
;sc03A & n::send ^{n}
sc03A & m::send ^{m}
sc03A & .::send ^{.}

;NキーだけはShiftキーとの同時押しに対応
sc03A & n::
If GetKeyState("Shift", "P")
 Send, +^{n}
Else
 Send,  ^{n}
return

;バックスペースとバックスラッシュを入れ替え
\::send, {BS}
BS::\

;Ctrl+Enterを模擬
Enter::
If GetKeyState("sc03A", "P")
 Send, ^{Enter}
Else 
 Send {Enter}
return
