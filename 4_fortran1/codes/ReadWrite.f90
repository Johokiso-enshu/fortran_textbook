program ReadWrite
  write(6,*) 'Input x and y.'
  read(5,*) x, y     ! x, yをキーボードから打ち込む. 装置番号5は標準入力. 
  write(6,*) 'x = ', x, 'y = ', y     ! 打ち込んだ数字がそのまま表示される. 
  stop
end program ReadWrite