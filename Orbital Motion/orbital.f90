program orbital

implicit none

!units: 

real(8), dimension(3) :: r, v, a
real(8), dimension(3) :: k1v, k2v, k3v, k4v, k1a, k2a, k3a, k4a, tempr, tempv
real(8) :: pi, tau, t, GM, K, U, E, m
integer(4) :: i

pi = 4.0d0*atan(1.0d0)
tau = 1.0d-3
GM = 4.0d0*pi**2.0d0
m = 1.0d0

t = 0.0d0
r(1) = 1.0d0
r(2) = 0.0d0
r(3) = 0.0d0
v(1) = 0.0d0
v(2) = 2.0d0*pi
v(3) = 0.0d0

open(unit = 10, file = 'p_orb.dat')
open(unit = 20, file = 'v_orb.dat')
open(unit = 30, file = 'a_orb.dat')
open(unit = 40, file = 'K_orb.dat')
open(unit = 50, file = 'U_orb.dat')
open(unit = 60, file = 'E_orb.dat')
write(10,*) "#x-values		y-values"
write(20,*) "#x-values		y-values"
write(30,*) "#x-values		y-values"
write(40,*) "#x-values		y-values"
write(50,*) "#x-values		y-values"
write(60,*) "#x-values		y-values"

do while (t <= 1)
	a = -GM/(norm2(r)**3)*r
	k1v = v 
	k1a = a
	
	tempr = r + 0.5d0*tau*k1v
	tempv = v + 0.5d0*tau*k1a
	a = -GM/(norm2(tempr)**3)*tempr
	k2v = tempv 
	k2a = a
	
	tempr = r + 0.5d0*tau*k2v
	tempv = v + 0.5d0*tau*k2a
	a = -GM/(norm2(tempr)**3)*tempr
	k3v = tempv 
	k3a = a
	
	tempr = r + tau*k3v
	tempv = v + tau*k3a
	a = -GM/(norm2(tempr)**3)*tempr
	k4v = tempv 
	k4a = a

	r = r + (tau/6.0d0)*(k1v + 2.0d0*k2v + 2.0d0*k3v + k4v)
	v = v + (tau/6.0d0)*(k1a + 2.0d0*k2a + 2.0d0*k3a + k4a)
	a = -GM/(norm2(r)**3)*r
	t = t + tau
	
	K = 0.5d0*m*norm2(v)**2.0d0
	U = -GM*m/norm2(r)
	E = K + U
	
	write(10,*) r
	write(20,*) v
	write(30,*) a
	write(40,*) t, K
	write(50,*) t, U
	write(60,*) t, E
end do

end program
