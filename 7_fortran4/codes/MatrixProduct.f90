program Main
  implicit none
  integer:: i, j
  real(8):: a(3,3), b(3,3), c(3,3)

  a(1,1) = 1.d0
  a(1,2) = 2.d0
  a(1,3) = 3.d0
  a(2,1) = 4.d0
  a(2,2) = 5.d0
  a(2,3) = 6.d0
  a(3,1) = 7.d0
  a(3,2) = 8.d0
  a(3,3) = 9.d0

  b(1,1) = 9.d0
  b(1,2) = 8.d0
  b(1,3) = 7.d0
  b(2,1) = 6.d0
  b(2,2) = 5.d0
  b(2,3) = 4.d0
  b(3,1) = 3.d0
  b(3,2) = 2.d0
  b(3,3) = 1.d0

  call MatrixPruduct(3, a, b, c)

  do i = 1, 3
    do j = 1, 3
      write(6,*) i, j, c(i,j)
    enddo
  enddo

  stop
end program Main

subroutine MatrixPruduct(n, a, b, c)
  implicit none
  integer:: i, j, k, n
  real(8):: a(n,n), b(n,n), c(n,n)

  do i = 1, n
    do j = 1, n

      c(i,j) = 0.d0
      do k = 1, n
        c(i,j) = a(i,k)*b(k,j)
      enddo

    enddo
  enddo

  return
end subroutine
