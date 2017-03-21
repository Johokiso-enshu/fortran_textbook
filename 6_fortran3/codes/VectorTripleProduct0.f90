program VectorTripleProduct
  implicit none
  real(8):: a(3), b(3), c(3), d(3), lhs(3), rhs(3)
  real(8):: dot1, dot2
  integer:: i
  a(1) = 1.d0
  a(2) = 2.d0
  a(3) = 3.d0

  b(1) = 4.d0
  b(2) = 5.d0
  b(3) = 6.d0

  c(1) = 7.d0
  c(2) = 8.d0
  c(3) = 9.d0

  call CrossProduct(a, b, c)
  call CrossProduct(d, c, lhs)

  call DotProduct(3, a, c, dot1)
  call DotProduct(3, b, c, dot2)

  do i = 1, 3
    rhs(i) = dot1*b(i) +dot2*a(i)

    write(6,*) i, lhs(i), rhs(i)
  enddo


  stop
end program VectorTripleProduct

subroutine CrossProduct(x, y, z)
  implicit none
  integer:: i
  real(8):: x(3), y(3), z(3)

  z(1) = x(2)*y(3) - x(3)*y(2)
  z(2) = x(3)*y(1) - x(1)*y(3)
  z(3) = x(1)*y(2) - x(2)*y(1)

  return
end subroutine CrossProduct

subroutine DotProduct(n, x, y, dot)
  implicit none
  integer:: i, n
  real(8):: x(n), y(n), dot

  dot = 0.d0
  do i = 1, n
    dot = dot + x(i)*y(i)
  enddo

  return
end subroutine DotProduct
