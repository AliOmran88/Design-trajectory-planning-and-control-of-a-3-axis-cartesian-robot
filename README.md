# 3-Axis Cartesian Robot (HBOT) – Design, Modelling & Simulation

## 📌 Overview
This project presents the **design**, **kinematic modelling**, and **dynamic simulation** of a **3-axis Cartesian Robot (HBOT)**.  
The complete workflow includes mechanical design in **SolidWorks**, multibody modelling using **Simscape Multibody**, trajectory generation, and closed-loop control using **PID**. Additionally, a **Fuzzy Logic Controller** was explored to enhance joint-level performance.

This work was completed as part of the Mechatronics coursework at **Egypt-Japan University of Science and Technology**.

---

## 🚀 Key Features

### 🔧 **1. Mechanical Design (SolidWorks)**
- Full HBOT mechanical structure modelled and assembled.
- Robot inspired by **Lucas Robotics 3-Axis Cartesian Robot**.
- Exported as `.xml` for Simscape import.
- Verified model using `smimport` in MATLAB.

### 📐 **2. Kinematic Modelling**
- **DH parameterization** presented for the 3-axis Cartesian robot.
- Forward kinematics derived symbolically and verified in MATLAB.
- Inverse kinematics computed analytically due to prismatic-only structure:

\[
d_1 = X,\; d_2 = Y,\; d_3 = Z
\]

- Transformation matrix validated through simulation.

### 🧭 **3. Trajectory Planning**
Three trajectory profiles were implemented:

#### ➤ Linear trajectory  
\[
x_d = x_0 + v_x t;\quad y_d = y_0 + v_y t;\quad z_d = z_0 + v_z t
\]

#### ➤ Circular trajectory  
\[
x_d = x_0 + r\cos(\omega t);\quad y_d = y_0 + r\sin(\omega t);\quad z_d = z_0
\]

#### ➤ Parabolic trajectory  
\[
x_d = x_0 + v_x t + \frac{1}{2}at^2
\]

These trajectories were fed into IK → FK → error computation → controller pipeline.

### 🎛️ **4. PID Control**
- Independent PID controllers implemented for each prismatic joint.
- Error between desired and actual end-effector pose minimized significantly after tuning.
- Comparison plots show clear improvement with PID tuning.

### 🤖 **5. Fuzzy Logic Controller (FLC)**
- Fuzzy inference system designed for joint-level control.
- Membership functions defined for:
  - Error  
  - Error derivative  
  - Output control effort
- Implemented in Simulink with rule base and inference engine.
- Solver issues prevented full final execution, but the control architecture is fully set up.

---

## 📊 Simulation Results
- Imported Simscape model of HBOT successfully from SolidWorks.
- Forward & inverse kinematics validated inside Simulink.
- Trajectory tracking tested for circular profile with and without PID.
- PID controller demonstrated significantly reduced position error.
- Fuzzy logic controller prepared but not fully simulated due to solver limitations.

---

## 📁 Project Structure (Suggested)
