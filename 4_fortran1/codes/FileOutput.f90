program FileOutput
  write(6,*) 'Input x and y.'
  read(5,*) x, y     ! x, yをキーボードから打ち込む. 

  open(unit=1, file='output.dat')     ! 出力先としてoutput.datを開く. 装置番号を1とする. 
  write(1,*) 'x = ', x, 'y = ', y     ! 結果が装置番号1に出力される. 
  write(1,*) 'x + y = ', x+y
  write(1,*) 'x - y = ', x-y
  write(1,*) 'x * y = ', x*y
  write(1,*) 'x / y = ', x/y
  write(1,*) 'x = ', x, 'y = ', y     
  close(unit=1)     ! 装置番号1を閉じる. 

  stop
end program FileOutput