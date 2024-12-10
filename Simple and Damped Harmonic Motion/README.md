# Simple and Damped Harmonic Motion Readme

## Overall Method

Use Verlet integration to model the motion of an oscillating spring (simple and damped).

## Reasoning

Verlet integration, despite not being self-starting, is more precise than the Euler or Midpoint methods and is fairly simple to apply. Also, the acceleration of the object depends on the position of the object. Thus, calculating a time step ahead allowed me to calculate the acceleration of the present time step. This was the third calculus approximation method that we learned.

## Using Verlet Integration

*To start*:

Use the Euler method to calculate the second position of the object (given initial position).

*To continue for an interval of time, τ*:

Calculate the acceleration of the object. Using that acceleration, calculate the subsequent position of the object. Finally, find the velocity of the object using the prior and subsequent positions of the object. 

## Position and Energy Equations

### General

Period: T = 2π(m/k)1/2

Spring potential energy: Us = ½kx2

### SHM

Spring force: Fs = -kx

Acceleration: a = -kx/m

where x is the position of the object, k is the spring constant, and m is the mass of the object. 

### DHM

Damped spring force: Fs = - kx - bv

Acceleration: a = (- kx - bv)/m

where x is the position of the object, v is the velocity of the object, k is the spring constant, b is the damping coefficient, and m is the mass of the object. 

## Constants

τ = 0.01 

## SHM Example

### Initial Conditions

Position: 1 m

Spring constant: 1 N/m

Mass: 0.1 kg

Cycles: 10

### Graphs

#### Position (m)

#### Velocity (m/s)

#### Acceleration (m/s2)

#### Total, Potential, and Kinetic Energy (J)

## DHM Example

### Initial Conditions

Position: 1 m

Spring constant: 1 N/m

Mass: 0.1 kg

Cycles: 10

Damping coefficient: 0.01 kg/s

### Graphs

#### Position (m)

#### Velocity (m/s)

#### Acceleration (m/s2)

#### Total, Potential, and Kinetic Energy (J)



