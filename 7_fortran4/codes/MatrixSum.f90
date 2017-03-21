program MatrixSum
  implicit none
  integer:: i, j
  real(8):: a(2,2), b(2,2), c(2,2)

  a(1,1) = 1.d0
  a(1,2) = 2.d0
  a(2,1) = 3.d0
  a(2,2) = 4.d0

  b(1,1) = 5.d0
  b(1,2) = 6.d0
  b(2,1) = 7.d0
  b(2,2) = 8.d0

  do j = 1, 2
    do i = 1, 2
      c(i,j) = a(i,j) + b(i,j)
    enddo
  enddo

  stop
end program MatrixSum
