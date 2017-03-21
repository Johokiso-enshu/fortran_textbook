program DoLoop
  implicit none
  integer:: i

  do i = 1, 10
    write(6,*) i, 2*i, i**2
  enddo
  
  stop
end program DoLoop