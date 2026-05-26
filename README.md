# Pick-Place-Simulation-with-ABB-IRB120
# Pick & Place Simulation with ABB IRB120

Simulation project developed in [ABB RobotStudio](https://new.abb.com/products/robotics/robotstudio) for the subject **Programación de Robots** of the Degree in Robotics Engineering at the Universidad de Alicante.

---

## Project Overview

This project implements an advanced **Pick & Place** system using an **ABB IRB120** robot with a dual suction gripper and multiple conveyor belts.

The simulation includes:

- 3 input conveyor belts
- 3 output conveyor belts
- 1 ABB IRB120 robot
- Dual vacuum gripper
- SmartComponents for sensors and automation logic
- Random box generation system
- Automatic box classification and sorting

The robot identifies and sorts boxes according to their type and places them on the corresponding output conveyor.

---

# System Layout

## Input Conveyors

Three independent input conveyors generate boxes randomly.

Boxes can appear on any conveyor without a predefined order.

## Output Conveyors

Each box type is transported to a specific output conveyor:

| Box Type | Output Conveyor |
|---|---|
| Type 1 | Conveyor 6 |
| Type 2 | Conveyor 5 |
| Type 3 | Conveyor 4 |

---

# Robot and Gripper

## Robot

- Model: **ABB IRB120**

## Dual Vacuum Gripper

The gripper contains two suction systems placed 180° apart.

### Gripper 1
- 3 suction cups
- Compatible with:
  - Type 1 boxes
  - Type 3 boxes

### Gripper 2
- 4 suction cups
- Compatible with:
  - Type 2 boxes

---

# Box Specifications

| Box Type | Dimensions (mm) |
|---|---|
| Type 1 | 100 × 100 × 50 |
| Type 2 | 100 × 100 × 80 |
| Type 3 | 100 × 100 × 100 |

---

# Simulation Behaviour

At the beginning of the simulation, the user is asked to enter:

- Number of Type 1 boxes
- Number of Type 2 boxes
- Number of Type 3 boxes

The boxes are then generated randomly across the three input conveyors.

The robot does not initially know the type of box arriving at each conveyor, so a photoelectric sensor system is used to identify the box dimensions and determine its type.

Once identified, the robot:

1. Detects the box
2. Selects the correct gripper orientation
3. Picks the box safely
4. Moves through a collision-free trajectory
5. Places the box on the correct output conveyor

---

# Safety and Motion Strategy

To simulate realistic vacuum gripping:

- The robot always moves through safe positions
- Pick operations include controlled Z-axis approach movements
- Contact with the box is simulated before vacuum activation
- Place operations perform the inverse motion safely

---

# Technologies Used

- ABB RobotStudio
- RAPID Programming Language
- SmartComponents
- Conveyor logic
- Photoelectric sensors

---

# Files Included

- `.rspag` Pack & Go project
- Simulation video (`.mp4`)
- Project documentation (`.pdf`)

---

# Demonstration

The simulation demonstrates:

- Industrial Pick & Place automation
- Object detection and classification
- Conveyor synchronization
- Multi-tool robot handling
- RAPID programming in ABB environments

---
