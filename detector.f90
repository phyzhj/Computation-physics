program detector
	implicit none
	integer::i
	real::x,y
	real::x0(6),y0(6)
!------------------------------
	do i=1,6
		read(*,*) x0(i),y0(i)
	end do
	read(*,*) x
	call lagr(x0,y0,6,x,y)
	open(unit=10,file='detector.dat')
	write(10,*) x,y
	do i=1,6
		write(10,*) x0(i),y0(i)
	end do
end 
!-------------------------------
subroutine lagr(x0,y0,n,x,y)
	real::x,y,p
	real::x0(n),y0(n)
	integer::n,i,j
	y=0.0
	do i=1,n
		p=1.0
		do j=1,n
			if (i/=j) p=p*(x-x0(j))/(x0(i)-x0(j))
		end do 
		y=y+p*y0(i)
	end do
end 