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

Force of air drag: FD = ½ρ(v^2)CdA

Acceleration of air drag: A = ½ρ(v^2)C_dA/m

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

ρ = 1.225 kg/m^3

Cd = 0.47

## Air Drag Example

### Initial Conditions

Height, y0 = 10 m

Velocity (in the y direction), v0 = +1 m/s

### Graphs

#### Position (m)
![Screenshot from 2024-12-10 04-58-40](https://github.com/user-attachments/assets/aaa00280-ccf0-445b-98e4-ee9d01722e71)

#### Velocity (m/s)
![Screenshot from 2024-12-10 04-58-17](https://github.com/user-attachments/assets/3901b60c-6d3f-4eb8-98e9-6990cee48935)

#### Acceleration (m/s^2)
![Screenshot from 2024-12-10 04-57-25](https://github.com/user-attachments/assets/7bbc384b-6d77-4993-a444-bc6c9ce0f533)

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
![Screenshot from 2024-12-10 04-49-49](https://github.com/user-attachments/assets/2fa0b63a-6a60-4229-b5ed-a51e7417c5c3)

#### Velocity (m/s)
![Screenshot from 2024-12-10 04-49-17](https://github.com/user-attachments/assets/b9d4c98a-e2df-4665-a65b-3ddc4153070e)

#### Acceleration (m/s^2)
![Screenshot from 2024-12-10 04-48-39](https://github.com/user-attachments/assets/16e522e0-daf9-409e-8129-187ccbbacf4a)

### Results

Maximum height 10.0128 m

Total fall time: 1.4810 s

Range: 1.2826 m
