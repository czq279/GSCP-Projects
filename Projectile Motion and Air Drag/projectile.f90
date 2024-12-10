program projectie_motion

implicit none

real(8), allocatable, dimension(:) :: r, v, a, v00, d
real(8) :: C, Ar, pi, p, m, tau, t, g, v0, theta, rad, maxz, z
integer(4) :: i

allocate(r(3), v(3), a(3), v00(3), d(3))

write(*,*) "What do you want your initial height in meters to be?"
read(*,*) r(3)

write(*,*) "What do you want your initial velocity in m/s to be?"
read(*,*) v0 

write(*,*) "What do you want your angle in degrees to be? (x-z plane)"
read(*,*) theta

write(*,*) "What do you want your ball's mass in kg to be?"
read(*,*) m

write(*,*) "What do you want your ball's radius in meters to be?"
read(*,*) rad

pi = 4.0d0*atan(1.0d0)

tau = 1.0d-3
g = -9.8d0
theta = theta/180.0d0*pi

a(3) = g
a(2) = 0.0d0
a(1) = 0.0d0

t = 0.0d0

v(3) = v0*sin(theta)
v(2) = 0.0d0 
v(1) = v0*cos(theta)

v00 = v

r(2) = 0.0d0
r(1) = 0.0d0

C = 0.47d0
Ar = pi*rad**2
p = 1.225d0


open(unit = 10, file = 'p.dat')
open(unit = 20, file = 'v.dat')
open(unit = 30, file = 'a.dat')
open(unit = 40, file = 'rxt.dat')
open(unit = 50, file = 'vxt.dat')
open(unit = 60, file = 'axt.dat')
open(unit = 70, file = 'rzt.dat')
open(unit = 80, file = 'vzt.dat')
open(unit = 90, file = 'azt.dat')
write(10,*) "#x-values		y-values	z-values"
write(20,*) "#x-values		y-values	z-values"
write(30,*) "#x-values		y-values	z-values"
write(40,*) "#x-values		y-values"
write(50,*) "#x-values		y-values"
write(60,*) "#x-values		y-values"
write(70,*) "#x-values		y-values"
write(80,*) "#x-values		y-values"
write(90,*) "#x-values		y-values"

do while (r(3) >= 0)
	z = r(3)
	v = v + tau*a
	r = r + tau*(v+v00)*0.50d0
	t = t + tau
	v00 = v

	write(10,*) r
	write(20,*) v
	write(30,*) a
	write(40,*) t, r(1)
	write(50,*) t, v(1)
	write(60,*) t, a(1)
	write(70,*) t, r(3)
	write(80,*) t, v(3)
	write(90,*) t, a(3)
	
	if (r(3) > z) then
		maxz = r(3)
	end if
end do

write(*,*) maxz

write(*,*) "The total time it took for the object to fall is ", t , " seconds"
write(*,*) "The range of the object is ", r(1) , " meters"

end program
