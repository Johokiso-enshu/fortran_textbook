program TypeConversion
  implicit none     ! 暗黙の型宣言の禁止. 
  integer:: i, j
  real(8):: x, y
  complex(8):: z

  x = sqrt(3.d0)*0.5d0
  y = 0.5d0
  
  z = dcmplx(x, y)     ! dcmplx(x, y)は倍精度複素数型への変換. 
  write(6,*) z

  x = dble(z**2)     ! dble(z)はzの実部(倍精度実数型). 
  y = dimag(z**2)     ! dimag(z)はzの虚部(倍精度実数型). 
  write(6,*) x, y

  i = int(y)     ! int(x)は整数型への変換(切り捨て). 
  j = nint(y)     ! nint(x)は整数型への変換(四捨五入). 
  write(6,*) i, j
  
  y = dble(j)
  write(6,*) y     ! dble(x)は整数型から倍精度実数型への変換にも使用可. 
  
  stop
end program TypeConversion