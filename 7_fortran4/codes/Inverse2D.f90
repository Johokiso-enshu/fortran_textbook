program Main
  implicit none
  integer:: i, j
  real(8):: a(2,2), b(2,2)

  a(1,1) = 1.d0
  a(1,2) = 2.d0
  a(2,1) = 3.d0
  a(2,2) = 4.d0

  call Inverse2D(a, b)

  do i = 1, 2
    do j = 1, 2
      write(6,*) i,j,b(i,j)
    enddo
  enddo

  stop
end program Main

subroutine Inverse2D(a, b)
  implicit none
  real(8):: det
  real(8):: a(2,2), b(2,2)

  det=a(1,1)*a(2,2)-a(1,2)*a(2,1)

  b(1,1) = +a(2,2)/det
  b(1,2) = -a(1,2)/det
  b(2,1) = -a(2,1)/det
  b(2,2) = +a(1,1)/det

  return
end subroutine Inverse2D
