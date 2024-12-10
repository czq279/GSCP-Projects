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

- F_G = GMm/r^2
    - ΣF = ma
    - ma = GMm/r^2
- Acceleration of Earth: a = GM/r^2
- Potential energy: U = -GMm/r

where r is the distance between the objects’ center of mass, M is the mass of the Sun, and m is the mass of the Earth. G is the universal gravitational constant

## Constants
GM = 4π^2 AU^3/yr^2
τ = 0.001 yrs
m = 1 M_🜨

## Example
_Initial Conditions_

r_x = 1 AU

r_y = 0 AU

r_z = 0 AU

v_x = 0 AU/yr

v_y = 2π AU/yr

v_z = 0 AU/yr

## Graphs

### Position (AU)
![Screenshot from 2024-12-10 02-49-19](https://github.com/user-attachments/assets/b8cbc173-f0aa-45d4-a153-6632c9fd695d)

### Velocity (AU/yr)
![Screenshot from 2024-12-10 02-48-59](https://github.com/user-attachments/assets/53cc7551-0ee5-4066-8adc-367e5f560555)

### Acceleration (AU/yr^2)
![Screenshot from 2024-12-10 02-45-55](https://github.com/user-attachments/assets/a55fbca6-5aee-4a3a-b62b-a2766d73bce8)

### Total, Potential, and Kinetic Energy (M🜨 • AU^2/yr^2)
![Screenshot from 2024-12-10 02-55-20](https://github.com/user-attachments/assets/796760f2-d95c-43c1-8b53-1ba5d88a57db)



