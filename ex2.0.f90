program ex20
implicit none
	integer :: n,i,j
	real :: x(400),y(400)
	real,external :: calcuX,calcuY
	real ::a1,a2,w1,w2,phi1,phi2
	common a1,a2,w1,w2,phi1,phi2
	!-----------------------------------------
	open(unit=10,file='ans.out')
	read(*,*) n
	do i=1,n,1
		read(*,*) a1,a2,w1,w2,phi1,phi2
		call calcu(x,y)
	    do j=1,199,1
	    	write(10,*) x(j)," ",y(j)
	    end do 
	end do 
	close(unit=10)
	stop
end

!------------------------------------------
subroutine calcu(x,y)
implicit none
	real :: x(400),y(400)
	real :: a1,a2,w1,w2,phi1,phi2
	common a1,a2,w1,w2,phi1,phi2
	real,external :: calcuX,calcuY
	integer:: t0
	real :: t 
	do t0=1,199,1
		t=0.01*(t0-100)
		x(t0)=calcuX(a1,w1,phi1,t)
		y(t0)=calcuY(a2,w2,phi2,t)
	end do 
end

!-------------------------------------------
real function calcuX(a1,w1,phi1,t)
implicit none
	real :: a1,w1,phi1,t
    calcuX=a1*cos(w1*t+phi1)
    return	
end 
!-------------------------------------------
real function calcuY(a2,w2,phi2,t)
implicit none
	real :: a2,w2,phi2,t
    calcuY=a2*cos(w2*t+phi2)
    return	
end 