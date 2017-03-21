program LightSpeed
  !
  ! この例題では, 光が1秒間に地球を何周するかを計算する. 
  !
  implicit none     ! 暗黙の型宣言の禁止. 
  double precision:: c          ! 光速 
  double precision:: dia_km     ! 地球の直径 単位：km
  double precision:: dia_m      ! 地球の直径 単位：m
  double precision:: circumference ! 地球赤道面の円周. 
  double precision:: pi         ! 円周率 

  c = 299792458.d0      ! 単位：[m/s]
  dia_km = 12742.d0     ! 単位：[km]
  pi = acos(-1.d0)      ! 円周率. 単位:[1]

  dia_m = dia_km * 1.0d3     ! 単位を km から m に変換する. 
  circumference = dia_m * pi  ! 円周(単位：m)を直径×円周率で求める. 
  write(6,*) c/circumference, ' times/s'
  
  stop
end program LightSpeed
