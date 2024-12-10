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

Period: T = 2π(m/k)^(1/2)

Spring potential energy: Us = ½kx^2

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
![Screenshot from 2024-12-10 05-38-07](https://github.com/user-attachments/assets/fbf16d5b-e189-4ffd-ae5c-341da5530ba0)

#### Velocity (m/s)
![Screenshot from 2024-12-10 05-37-53](https://github.com/user-attachments/assets/73d4fedb-8f21-4a6e-b457-fa7176a6f2f1)

#### Acceleration (m/s^2)
![Screenshot from 2024-12-10 05-37-40](https://github.com/user-attachments/assets/44707e51-d208-4145-90e7-54e0e606624f)

#### Total, Potential, and Kinetic Energy (J)
![Screenshot from 2024-12-10 05-38-44](https://github.com/user-attachments/assets/484e4349-92f7-4c5a-aa89-2e85353c3106)

## DHM Example

### Initial Conditions

Position: 1 m

Spring constant: 1 N/m

Mass: 0.1 kg

Cycles: 10

Damping coefficient: 0.01 kg/s

### Graphs

#### Position (m)
![Screenshot from 2024-12-10 05-35-11](https://github.com/user-attachments/assets/4a4b84c1-9d0e-4da2-80e2-bdc3bfdcc246)

#### Velocity (m/s)
![Screenshot from 2024-12-10 05-35-01](https://github.com/user-attachments/assets/a0e7b99a-d262-49cc-abd4-89032a3c1b19)

#### Acceleration (m/s^2)
![Screenshot from 2024-12-10 05-34-37](https://github.com/user-attachments/assets/8e8f60c3-ed13-4898-ab6e-1b28a3e1755c)

#### Total, Potential, and Kinetic Energy (J)
![Screenshot from 2024-12-10 05-35-37](https://github.com/user-attachments/assets/8324bf1a-a29a-49b6-b1b8-254a97d06e93)



