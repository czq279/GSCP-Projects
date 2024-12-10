program air_drag

implicit none
real(8) :: y0, v0, y, v, t, tau, g, a, d, m, c, ar, pi, p
real(8) :: b, vc, yc, y0c, v0c

pi = 4.0d0*atan(1.0d0)

write(*,*) "This model is for problems on Earth and has the negative direction to be towards the Earth's surface."

write(*,*) "What do you want your initial height in meters to be?"
read(*,*) y0

write(*,*) "What do you want your initial velocity in m/s to be?"
read(*,*) v0

tau = 1.0d-3
g = -9.8d0
a = g
t = 0.0d0
v = v0
y = y0
m = 0.145d0
C = 0.47d0
Ar = pi*0.037d0**2
p = 1.225d0
y0c = y0
v0c = v0


open(unit = 10, file = 'position_time.dat')
open(unit = 20, file = 'velocity_time.dat')
open(unit = 30, file = 'acceleration_time.dat')
write(10,*) "#x-values		y-values"
write(20,*) "#x-values		y-values"
write(30,*) "#x-values		y-values"

do while (y >= 0)
	d = (-0.5d0*C*Ar*p*v*abs(v))/m
	a = g + d
	v = v0 + tau*a
	y = y0 + tau*(v+v0)*0.5d0
	t = t + tau
	write(10,*) t, y
	write(20,*) t, v
	write(30,*) t, a
	v0 = v
	y0 = y
end do

write(*,*) "The total time it took for the object to fall is ", t , " seconds"

g = 9.8d0
b = C*p*Ar/2.0d0/m
vc = SQRT(g/b)*dtanh(SQRT(b*g)*t)
yc = y0c - ((1.0d0/b)*LOG(dcosh(SQRT(b*g)*t)))

if (v0c == 0) then
	write(*,*) b
	write(*,*) vc, yc
endif

end program
