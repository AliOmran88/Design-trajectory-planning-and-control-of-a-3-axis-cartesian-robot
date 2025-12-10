# 3-Axis Cartesian Robot (HBOT) – Design, Modelling & Simulation

## 📌 Overview
This project presents the **design**, **kinematic modelling**, and **dynamic simulation** of a **3-axis Cartesian Robot (HBOT)**.  
Workflows: mechanical design in **SolidWorks**, multibody modelling using **Simscape Multibody**, trajectory generation, and closed-loop control using **PID**. A **Fuzzy Logic Controller** was explored for enhanced joint-level performance.

**Author:** Ali Gamal Ali — Egypt-Japan University of Science and Technology (E-JUST)

---

## 🚀 Key Features

### 🔧 Mechanical Design (SolidWorks)
- HBOT mechanical structure modelled and assembled.
- Exported as `.xml` for Simscape import and verified using `smimport` in MATLAB.

---

## 📐 Kinematic Modelling

All joints are **prismatic**, so inverse kinematics reduces to direct assignment of prismatic displacements from the end-effector Cartesian coordinates.

**Inverse kinematics (prismatic joints):**

`d_1 = X, d_2 = Y, d_3 = Z`.

Forward kinematics and transformation matrices were derived and validated in MATLAB/Simulink.

---

## 🧭 Trajectory Planning

Three trajectory profiles were implemented. Each equation is shown as an image to ensure consistent rendering across GitHub viewers.

### ➤ Linear Trajectory

**Plain text fallback:** `x_d = x_0 + v_x t,  y_d = y_0 + v_y t,  z_d = z_0 + v_z t`

---

### ➤ Circular Trajectory


**Plain text fallback:** `x_d = x_0 + r cos(ω t),  y_d = y_0 + r sin(ω t),  z_d = z_0`

---

### ➤ Parabolic Trajectory


**Plain text fallback:** `x_d = x_0 + v_x t + 1/2 a t^2` (and similarly for `y_d`, `z_d` as needed)

---

## 🔁 Control Pipeline

The pipeline used in simulations:

**Trajectory → Inverse Kinematics → Forward Kinematics → Error calculation → Controller**

When referencing small variables or inline code, I use monospace for clarity, e.g., `x_d`, `v_x`, `d_1`.

---

## 🎛️ PID Control
- Independent PID controllers for each prismatic joint (`d1`, `d2`, `d3`).
- Tuning produced a large reduction in end-effector tracking error.
---

## 🤖 Fuzzy Logic Controller (FLC)
- FIS created with membership functions for `error`, `error_dot`, and `control_output`.
- Implemented in Simulink. Architecture complete but full runs were limited by solver issues.

---

