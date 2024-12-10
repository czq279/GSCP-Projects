# Orbital Motion

## Overall Method
Use the Runge-Kutta method (RK4) to model the motion of the Earth orbiting around the Sun for one year.

## Reasoning
The RK4 method is used over Verlet integration and the Euler method because it allows for more precision as it is a higher degree (fourth degree) and is self-starting, unlike Verlet integration.

## Using the RK4 Method
First, use k1, k2, k3, and k4 approximate values of acceleration, velocity, and position at different times over the chosen interval, τ.
- k1 uses the Euler method to approximate these values at the beginning of the interval
- k2 uses the initial condition and k1 to approximate these values at the midpoint of the interval
- k3 uses the initial condition and k2 to approximate these values at the midpoint of the interval
- k4 uses the initial condition and k3 to approximate these values at the end of the interval
Then, using a weighted average (weighing k2 and k3 double that of k1 and k4), find the final approximated values of velocity, and position for that interval. Lastly, recalculate the acceleration based on the final approximated position.

## Energy and Acceleration Equations

Gravitational Force: 

- F_G = GMm/r2
    - ΣF = ma
    - ma = GMm/r2
- Acceleration of Earth: a = GM/r2
- Potential energy: U = -GMm/r

where r is the distance between the objects’ center of mass, M is the mass of the Sun, and m is the mass of the Earth. G is the universal gravitational constant

## Constants
GM = 4π2 AU3/yr2
τ = 0.001 yrs
m = 1 M🜨

## Example
_Initial Conditions_

rx = 1 AU

ry = 0 AU

rz = 0 AU

vx = 0 AU/yr

vy = 2π AU/yr

vz = 0 AU/yr

## Graphs

### Position (AU)

### Velocity (AU/yr)

### Acceleration (AU/yr2)

### Total, Potential, and Kinetic Energy (M🜨 • AU2/yr2)



