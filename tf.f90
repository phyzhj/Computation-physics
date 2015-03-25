program tf
      integer::i,j,n
      real::t(20),e(20),c(20),h
!---------------------------------
	open(unit=10,file='tf.in')
	open(unit=20,file='tf.dat')
	do i=1,20
		read(10,*) t(i),e(i)
	end do
	h=5 
	do i=2,19
	    c(i)=(e(i+1)-e(i-1))/(2*h)
	    write(20,*) t(i),e(i),c(i)
	end do
end
