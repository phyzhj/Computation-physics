program ex20
implicit none
	integer,parameter :: m=100
	integer :: n 
	real,parameter :: a1=1.0,b1=1.0
	real :: x(M),y(M)
	real,external :: calcuX,calcuY
	real ::w1,w2,phi1,phi2
	common w1,w2,phi1,phi2
!-----------------------------------------
	read(*,*) n
	do i=1,n,1
		read(*,*) w1,w2,phi1,phi2
		call calcu(x,y)
	end do 

	stop
end

!------------------------------------------
subroutine calcu(x,y)
implicit none
	real :: x(M),y(M)
	real :: w1,w2,phi1,phi2
	common w1,w2,phi1,phi2
    
end subroutine calcu