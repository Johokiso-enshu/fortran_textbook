program VariableType2
  implicit none     ! 暗黙の型宣言の禁止. 
  character(len=5) c1, c2, c3, c4     ! c1, c2, c3, c4は5文字の文字型. 
  
  c1 = 'Kyoto'
  c2 = 'City'
  c3 = 'Prize'
  c4 = 'University'

  write(6,*) '"', c1//c2, '"'     ! //は文字型の結合. 
  write(6,*) '"', c1//c3, '"'
  write(6,*) '"', c1//c4, '"'

  stop
end program VariableType2