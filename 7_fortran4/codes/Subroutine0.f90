program DotProduct
  implicit none
  integer:: i
  double precision:: x(3), y(3), dot

! x, yÇÃíl. 
  x(1) = 1.d0
  x(2) = 2.d0
  x(3) = 3.d0

  y(1) = 4.d0
  y(2) = 5.d0
  y(3) = 6.d0

! ì‡êœåvéZ. 
  dot = 0.d0
  do i = 1, 3
    dot = dot + x(i)*y(i)
  enddo
  write(6,*) dot

  stop
end program DotProduct
