program BuiltinFunction
  implicit none     ! 暗黙の型宣言の禁止.
  write(6,*) abs(-2.0)
  write(6,*) sin(1.0)
  write(6,*) sqrt(sin(1.0)) 
  stop
end program BuiltinFunction
