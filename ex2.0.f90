program ex20
implicit none
	integer :: n,i,j,t
	real :: x(400),y(400)
	real ::a1,a2,w1,w2,phi1,phi2
	!-----------------------------------------
	read(*,*) n
	do i=1,n,1
		read(*,*) a1,a2,w1,w2,phi1,phi2
		do j=1,199,1
			t=0.01*(j-100)
	    	x(j)=a1*cos(w1*t+phi1)
	    	y(j)=a2*cos(w2*t+phi2)
	    	write(*,*) x(j)," ",y(j)
	    end do 
	end do 
	close(unit=10)
	stop
end

