program div
	implicit none
	integer::i,j
	real:: x,l,r
!----------------------
	open(unit=20,file='div.dat')
	read(*,*) l,r
	call find(l,r)
	print(20,*) "x=",x
end
!----------------------
subroutine find(l,r)
	real l,r,fl,fr,m 
	fl=e^l*log(l)-l^2
	fr=e^r*log(r)-r^2
	if (fl*fr<0) then
		m=(l+r)/2
		fm=e^m*log(m)-m^2
		if (abs(fm)<0.0000001) then
			x=m
		else
			call find(l,m)
			call find(m,r)
		end if 
	end if 
end subroutine

