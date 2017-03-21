program VariableType
  implicit none      ! 暗黙の型宣言の禁止. 
  integer:: i, j     ! i, jは整数型. 
  double precision:: a, b     ! a, bは倍精度実数型. 

  i = 10
  j = 3
  
  a = 10.0d0     ! a = 1.d1, 1.0d1, 1.d+1 となどと書いてもよい. 
  b =  3.0d0
  
  write(6,*) i/j, a/b, dble(i)/dble(j)     ! dble()は整数型→倍精度実数型への変換

  stop
end program VariableType