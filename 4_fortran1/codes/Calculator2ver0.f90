program Calculator
  Implicit None ! 暗黙の型宣言の禁止。詳しくは後述。
  integer x ! ”x” という名前の整数の変数を用いることを宣言する。
  integer y
  x = 3**2  ! x に 3**2 の計算結果を格納する。
  y = 4**2
  write(6,*) (x + y)**2   ! (x+y)**2 の計算結果を表示させる
end program Calculator
