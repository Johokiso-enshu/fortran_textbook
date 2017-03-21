program TrigonometricFunction3
  implicit none     ! ˆÃ–Ù‚ÌŒ^éŒ¾‚Ì‹Ö~. 
  double precision:: pi, theta
  
  pi = acos(-1.d0)     ! ‰~ü—¦. 

  write(6,*) 'input theta'     ! ‚½‚¾‚Ì•¶š—ñ. ‚È‚­‚Ä‚à‚æ‚¢‚ª, ‚ ‚é‚ÆeØ. 
  read(5,*) theta     ! ‚±‚±‚Å•Ï” theta ‚ğ‰æ–Ê‚©‚ç“ü—Í‚·‚é. 
  
  theta = (theta /180.d0)*pi     ! deg‚©‚çrad‚Ö‚Ì•ÏŠ·. 

  write(6,*) 'sin(x) = ', sin(theta)
  write(6,*) 'cos(x) = ', cos(theta)
  write(6,*) 'tan(x) = ', tan(theta)

  stop
end program TrigonometricFunction3
