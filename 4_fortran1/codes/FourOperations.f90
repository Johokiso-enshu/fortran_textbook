program FourOperations
  write(6,*) 'Input x and y.'
  read(5,*) x, y     ! x, yをキーボードから打ち込む. 

  write(6,*) 'x = ', x, 'y = ', y     ! 打ち込んだ数字がそのまま表示される. 
  write(6,*) 'x + y = ', x+y
  write(6,*) 'x - y = ', x-y
  write(6,*) 'x * y = ', x*y
  write(6,*) 'x / y = ', x/y

  stop
end program FourOperations