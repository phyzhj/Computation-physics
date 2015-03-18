program lissajous
	implicit none
	integer,parameter::m=500
    integer::i
	real,parameter::pi=3.14159
	real::w1,w2,phi1,phi2,t 
!-----------------------------------------------
    open(unit=10,file='lissajous.txt')
    read(*,*) w1,w2,phi1,phi2
    do i=1,m
    	t=2*pi*i/m
    	write(10,*) cos(w1*t+phi1)," ",cos(w2*t+phi2)
    end do
    close(10)	
end 
