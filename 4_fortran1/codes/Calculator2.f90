program Calculator2
  implicit none     ! 暗黙の型宣言の禁止. 
  integer:: x     ! ”x” という名前の整数型の変数を用いることを宣言. 
  integer:: y

  x = 2     ! xに2という整数値を代入. 
  y = 3     ! yに3という整数値を代入. 
  
  write(6,*) 'x + y = ', x + y     ! 和の計算. 
  write(6,*) 'x - y = ', x - y     ! 差の計算. 
  write(6,*) 'x * y = ', x * y     ! 積の計算. 
  write(6,*) 'x / y = ', x / y     ! 商の計算. 
  write(6,*) 'x ^ y = ', x ** y    ! べき乗の計算. 
  
  stop
end program Calculator2
