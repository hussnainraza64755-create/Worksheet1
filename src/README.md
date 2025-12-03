# Worksheet 1: An Echo of Assembler

This repository contains the solution for Worksheet 1 of the Operating Systems module.
The goal was to implement basic assembly programs, link them with C drivers, and automate the build process using Makefiles.

## Tasks Implemented & Output

### Task 1: Basic Assembly Integration
- **Description:** Created `asm_main` to add integers (10 + 20) and return result to C.
- **Task 1.2:** Modified to use variables from `.data` section.

**Output Screenshot:**
![Task 1 Output](screenshots/task1_output.png)
*(Running `./task1` and `./task1_2`)*

---

### Task 2: Loops and Conditionals
- **Loop Program:** Prints "Welcome" loop based on user input (50-100).
- **Array Sum:** Calculates sum of 100 integers (Result: 5050).
- **Range Sum:** Sums numbers within a specific range provided by the user.

**Output Screenshot:**
![Task 2 Output](screenshots/task2_output.png)
*(Running `./task2`, `./task2_array`, and `./task2_range`)*

---

### Task 3: Build Automation (Makefile)
- Created a `Makefile` to compile all tasks with a single command.

**Build Process Screenshot:**
![Make Build](screenshots/make_build.png)
*(Running `make clean` and `make`)*

## How to Run
1. Clone the repository.
2. Navigate to the `src` directory.
3. Run `make` to build all executables.
4. Run specific tasks: `./task1`, `./task2_range`, etc.
