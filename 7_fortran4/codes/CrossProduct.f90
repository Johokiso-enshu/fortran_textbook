program Main
  implicit none
  real(8):: a(3), b(3), c(3)

  a(1) = 1.d0
  a(2) = 2.d0
  a(3) = 3.d0
  b(1) = 4.d0
  b(2) = 5.d0
  b(3) = 6.d0

  call CrossProduct(a, b, c)

  write(6,*) c(1), c(2), c(3)

  stop
end program Main

subroutine CrossProduct(x, y, z)
  implicit none
  integer:: i
  real(8):: x(3), y(3), z(3)

  z(1) = x(2)*y(3) - x(3)*y(2)
  z(2) = x(3)*y(1) - x(1)*y(3)
  z(3) = x(1)*y(2) - x(2)*y(1)

  return
end subroutine CrossProduct
