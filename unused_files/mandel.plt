reset

set ter jpeg size 1200,1200
set out 'mandel.jpeg'

#set ter pos eps enhanced color
#set out 'mandel.eps'

set size square

set palette negative


#set xrange[-0.236:-0.233]
#set yrange[0.825:0.828]
set xrange[-2:1]
set yrange[-1.5:1.5]

set cbrange[0:100]

set pm3d map

splot 'mandelbrot.dat'u 1:2:3 w pm3d

unset out
set ter wxt

reset