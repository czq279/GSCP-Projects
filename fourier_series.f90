program fourier_series

implicit none

real(8) :: x, y, xf, yf, b, pi
integer(4) :: nmax, n


write(*,*) "What is nmax?"
read (*,*) nmax

pi = 4.0d0*atan(1.0d0)

open(unit = 10, file = 'function.dat')

write(10, *) "# x-values   y-values"

x = 0.0d0

do while (x < pi)
   y = x
   write(10, *) x, y
   x = x + 0.01
end do

do while (pi < x .and. x <= 2*pi)
   y = x-2*pi
   write(10, *) x, y
   x = x + 0.01
end do

open(unit = 20, file = 'fourier.dat')

write(20,*) "# x-values 		  y-values"

xf = 0.0d0
yf = 0.0d0
n = 1

do while (xf <= 2 * pi)
   do while (n <= nmax)
      b = ( ( (-1.0d0) ** (n + 1.0d0) ) * 2.0d0) / n
      yf = b * sin(n * xf) + yf
      n = n + 1
   end do
   n = 1
   write(20, *) xf, yf
   xf = xf + 0.01
   yf = 0.0d0
end do

end program
