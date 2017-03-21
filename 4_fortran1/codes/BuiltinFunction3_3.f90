program TrigonometricFunction3
  implicit none     ! 暗黙の型宣言の禁止. 
  double precision:: pi, theta
  
  pi = acos(-1.d0)     ! 円周率. 

  write(6,*) 'input theta'     ! ただの文字列. なくてもよいが, あると親切. 
  read(5,*) theta     ! ここで変数 theta を画面から入力する. 
  
  theta = (theta /180.d0)*pi     ! degからradへの変換. 

  write(6,*) 'sin(x) = ', sin(theta)
  write(6,*) 'cos(x) = ', cos(theta)
  write(6,*) 'tan(x) = ', tan(theta)

  stop
end program TrigonometricFunction3
