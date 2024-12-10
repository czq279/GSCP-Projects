program Damping

implicit none

real(8) :: tau, m, kx, pi, period, b
real(8), allocatable, dimension(:) :: E, K, U, t, x, v, a
integer(4) :: i, n, cycles

write(*,*) "This model is for damped harmonic motion"

write(*,*) "What do you want your spring constant to be?"
read(*,*) kx

write(*,*) "What do you want your mass to be?"
read(*,*) m

write(*,*) "What do you want your damping coefficient to be?"
read(*,*) b

write(*,*) "How many cycles do you want?"
read(*,*) cycles

pi = 4.0d0*atan(1.0d0)
tau = 1.0d-2
period = 2*pi*sqrt(m/kx)

n = floor(cycles*period/tau)

allocate(E(n), K(n), U(n), t(n+1), x(n+1), v(n+1), a(n))

open(unit = 10, file = 'pt_damping.dat')
open(unit = 20, file = 'vt_damping.dat')
open(unit = 30, file = 'at_damping.dat')
write(10,*) "#x-values		y-values"
write(20,*) "#x-values		y-values"
write(30,*) "#x-values		y-values"

open(unit = 40, file = 'E_damping.dat')
open(unit = 50, file = 'K_damping.dat')
open(unit = 60, file = 'U_damping.dat')
write(40,*) "#x-values		y-values"
write(50,*) "#x-values		y-values"
write(60,*) "#x-values		y-values"

t(1) = 0.0d0
x(1) = 1.0d0
v(1) = 0.0d0

write(10,*) t(1), x(1)
write(20,*) t(1), v(1)
write(30,*) t(1), a(1)
write(40,*) t(1), E(1)
write(50,*) t(1), K(1)
write(60,*) t(1), U(1)

x(2) = x(1) + v(1)*tau + 0.5d0*a(1)*tau**2

do i = 2, n
	!Euler
	!a(i) = (-1.0d0*kx*x(i)-1.0d0*b*v(i))/m
	!v(i+1) = v(i) + a(i)*tau
	!x(i+1) = x(i) + tau*v(i+1)
	!t(i+1) = t(i) + tau
	!K(i) = 0.5d0*m*v(i)**2
	!U(i) = 0.5d0*kx*x(i)**2
	!E(i) = K(i) + U(i)
	
	!Verlet
	a(i) = (-1.0d0*kx*x(i)-1.0d0*b*v(i-1))/m
	x(i+1) = 2.0d0*x(i) - x(i-1) + a(i)*tau**2.0d0
	v(i) = (x(i+1) - x(i-1))/(2.0d0*tau)
	t(i) = t(i-1) + tau
	K(i) = 0.5d0*m*v(i)**2
	U(i) = 0.5d0*kx*x(i)**2
	E(i) = K(i) + U(i)
	write(10,*) t(i), x(i)
	write(20,*) t(i), v(i)
	write(30,*) t(i), a(i)
	write(40,*) t(i), E(i)
	write(50,*) t(i), K(i)
	write(60,*) t(i), U(i)
end do

end program
