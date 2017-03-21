program Main
  implicit none
  double precision:: a(3), b(3), dot

! a, bの値. 
  a(1) = 1.d0
  a(2) = 2.d0
  a(3) = 3.d0

  b(1) = 4.d0
  b(2) = 5.d0
  b(3) = 6.d0

! 内積計算のサブルーチンを呼び出し. 
  call DotProduct(3, a, b, dot)

  write(6,*) dot

  stop
end program Main

subroutine DotProduct(n, x, y, dot)
  implicit none
  integer:: i, n
  double precision:: x(n), y(n), dot

  dot = 0.d0
  do i = 1, n
    dot = dot + x(i)*y(i)
  enddo

  return
end subroutine DotProduct
