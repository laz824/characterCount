# LC-3 Assembly Programs

This repository has a number of LC-3 assembly language programs for different purposes and tasks. Each program illustrates some concepts and features of the LC-3 assembly language, which is used in educational settings to teach computer architecture and low-level programming.

## Table of Contents

- [Overview](#overview)
- [Programs](#programs)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Overview

The LC-3 (Little Computer 3) is a simple computer model created for educational purposes to explain the fundamentals of computer organization and assembly language programming. This repository contains a compilation of assembly language programs written in LC-3, each one showing different parts of the LC-3 instruction set and system calls.

## Programs

1. **Arithmetic Operations**

   - **Description:** Performs basic arithmetic operations and stores them into memory.
   - **File:** `char_Counter.asm`
   - **Usage:** Demonstrates addition, subtraction, multiplication, and division.

2. **Conditional Branching**

   - **Description:** Uses conditional branching to control program flow.
   - **Usage:** Demonstrates use of BR, BRz, BRp, BRn instructions.

3. **Loop Structures**

   - **Description:** Implements various loop structures using LC-3 assembly.
   - **Usage:** Shows while loops, for loops, nested loops.

4. **Input/Output Operations**

   - **Description:** Handles input from keyboard and output to console.
   - **Usage:** Demonstrates GETC, OUT, PUTS, PUTSP instructions usage.

5. **Subroutines and Stack Management**
   - **Description:** Implements subroutines and manages the stack.
   - **Usage:** Demonstrates the use of JSR, JSRR, RET, and stack operations.

## Getting Started

In order to work with these programs you will need an LC-3 simulator. The [LC-3 Simulator](http://highered.mheducation.com/sites/0072467509/student_view0/lc-3_simulator.html) provided by the textbook "Introduction to Computing Systems: From Bits and Gates to C and Beyond" by Yale N. Patt and Sanjay J. Patel is commonly used.

### Prerequisites

- LC-3 Simulator
- Basic knowledge of LC-3 assembly language

### Installation

1. Download and install the LC-3 Simulator.
2. Clone this repository to your local machine using the following command:
   ```sh
   git clone https://github.com/laz824/characterCount.git
   ```
3. Open the LC-3 Simulator and load the desired `.asm` file.

## Usage

1. Open the LC-3 Simulator.
2. Load the assembly (`.asm`) file you want to run.
3. Assemble the program by clicking on "Assemble" button.
4. Load the assembled object file (`.obj`).
5. Execute the program by clicking on "Run" button.

### Example

To run the `char_Counter.asm` program:

1. Open the LC-3 Simulator.
2. Load the `char_Counter.asm` file.
3. Assemble program.
4. Load the generated `char_Counter.obj` file.
5. Run program. Observe results in console and memory.

## Contributing

Contributions are welcome! Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to branch (`git push origin feature/your-feature`).
5. Create a new Pull Request.

## License

This repository is licensed under MIT License . See LICENSE for more details.

---

Feel free to explore the programs, modify them and learn more about LC-3 assembly language. If you have any questions or suggestions, please open an issue or submit a pull request.
