program FileInput
  open(unit=1, file='input.dat')     ! 入力先としてinput.datを開く. 装置番号を1とする. 
  read(1,*) x, y     ! x, yをinput.datから読み込む. 
  close(unit=1)

  open(unit=2, file='output.dat')     ! 出力先としてoutput.datを開く. 装置番号を2とする. 
  write(2,*) 'x = ', x, 'y = ', y
  write(2,*) 'x + y = ', x+y
  write(2,*) 'x - y = ', x-y
  write(2,*) 'x * y = ', x*y
  write(2,*) 'x / y = ', x/y
  close(unit=2)

  stop
end program FileInput