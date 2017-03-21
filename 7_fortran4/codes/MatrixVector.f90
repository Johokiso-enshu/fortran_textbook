program Main
  implicit none
  integer:: i, j
  real(8):: a(3,3), x(3), b(3)

  a(1,1) = 1.d0
  a(1,2) = 2.d0
  a(1,3) = 3.d0
  a(2,1) = 4.d0
  a(2,2) = 5.d0
  a(2,3) = 6.d0
  a(3,1) = 7.d0
  a(3,2) = 8.d0
  a(3,3) = 9.d0

  x(1) = 1.d0
  x(2) = 2.d0
  x(3) = 3.d0

  call MatrixVector(3, a, x, b)

  do i = 1, 3
    write(6,*) i, b(i)
  enddo

  stop
end program Main

subroutine MatrixVector(n, a, x, b)
  implicit none
  integer:: i, j, n
  real(8):: a(n,n), x(n), b(n)

  do i=1, n
    b(i) = 0.d0

    do j=1, n
      b(i) = a(i,j)*x(j)
    enddo
  enddo

  return
end subroutine MatrixVector
