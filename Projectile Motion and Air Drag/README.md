# Projectile Motion and Air Drag

## Overall Method
Use the Midpoint method to model the motion of a falling object and a projectile, both affected by air drag.

## Reasoning

The Midpoint method was the second calculus approximation technique that we learned. This approximation method, despite not being as precise as higher order approximation methods, is more precise than the Euler method. It is also more efficient to apply and works for simpler physical phenomena which do not require a high amount of precision.

**Note**: the Midpoint method is a modification of the Euler method that uses the midpoint of the initial and final velocities rather than just the final velocity in calculating the position of the object for that interval. 

## Using the Midpoint Method

**For an interval of time, τ**:

Calculate the initial acceleration of the object. Using that acceleration, calculate the final velocity of the object at the end of the interval. Then, use the average of the initial and final velocities to find the approximate position of the object for that interval.

## Acceleration and Position Equations

**Air Drag**

Force of air drag: FD = ½ρv2CdA

Acceleration of air drag: A = ½ρv2CdA/m

where ρ is the density of the fluid (in this case air), v is the speed of the object, Cd is the drag coefficient, and A is the cross sectional area of the object. 

Cross sectional area: A = πr2

where r is the radius of the ball.

## Projectile Motion
The x and y positions of the projectile are calculated with the angle, Θ, taken into account. Otherwise, the only other modifier from simple kinematics is air drag (detailed above).

## Constants

**General**

τ = 0.001 s

g = -9.8 m/s

**Air Drag**

ρ = 1.225 kg/m3

Cd = 0.47

## Air Drag Example

### Initial Conditions

Height, y0 = 10 m

Velocity (in the y direction), v0 = +1 m/s

### Graphs

#### Position (m)

#### Velocity (m/s)

#### Acceleration (m/s2)

### Results
Total fall time: 1.5550 s

## Projectile Motion Example

### Initial Conditions

Height, y0 = 10 m

x = 0 m

y = 10 m

z = 0 m

v0 = 1 m/s

Θ = 30°

m = 1 kg

r = 0.037 m

### Graphs

#### Position (m)

#### Velocity (m/s)

#### Acceleration (m/s2)

### Results

Maximum height 10.0128 m

Total fall time: 1.4810 s

Range: 1.2826 m
