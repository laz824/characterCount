# Group - F: Character Count

**Anay Linares**  
**Robert Singharath**  
**Luis Zepeda**

## CIS11 Course Project Part 1: Documenting the Project

### Purpose

The product aims to create an LC-3 assembly language program that receives a person's complete name from the user and returns the number of times each character appears in the name. This program demonstrates various programming approaches and techniques including subroutines, stack management, ASCII conversion, and conditional branching.

### Intended Audience and Users

The primary audience includes computer science students, tutors, and anyone studying LC-3 microarchitecture and assembly language programming. It also targets individuals preparing for tasks or assignments involving low-level concepts.

### Product Scope

This program serves as an educational tool to help users learn string manipulation, memory management, and simple algorithm implementation using LC-3 assembly language. It illustrates basic concepts such as reading user input, counting character frequency, and outputting results on the console.

### Reference

Source Document: "Introduction to Computing Systems: From Bits and Gates to C and Beyond, 2nd Edition" by Yale N. Patt & Sanjay J. Patel.

## 2. Overall Description

### 2.1 Product Perspective

The application illustrates string manipulation with frequency counting within LC-3 Assembly Language programs (ALPs). The data type used is ASCII characters, and character frequencies are stored using arrays.

### Product Functions

**Program functionality includes:**

- Prompting the user for their full name.
- Reading and storing the user input.
- Counting the frequency of each character in the input.
- Displaying the frequency of each character on the console screen.

**Technical functionality:**

- Subroutines: input handling, frequency counting, and result display.
- Operations: arithmetic, data movement, branching conditions, stack operations, and ASCII conversion.

### User Classes and Characteristics

- Students learning computer architecture and assembly language programming.

### Operating Environment

- The program runs on the LC-3 simulator, compatible with any Windows Operating System.
- Development Platform: LC-3 simulator (e.g., LC-3 Edit, Simulate).

### Design and Implementation Constraints

- Adhere to the instruction set and memory capacity of the LC-3 ISA.
- Manage input buffer size within available memory limits.
- Ensure stack operations can handle potential overflow situations.

### Assumptions and Dependencies

- The application runs in an LC-3 simulator environment.
- It does not require external applications or web services.

## 3. External Interface Requirements

### User Interfaces

- Interact through a console to enter a full name and view character frequencies.

### Hardware Interfaces

- Requires a computer system running an LC-3 simulator.

### Software Interfaces

- Needs an LC-3 simulator to execute the program.

### Communications Interface

- No network connectivity required.

## 4. Detailed Description of Functional Requirements

### 4.1 Type of Requirement (summarize from Section 2.2)

**Function: Prompting, reading, and storing user’s full name**  
Purpose: Capture the user's full name and store it in an array.  
Input: User’s name entered in the console.  
Output: Name saved to the memory.  
Data Storage: The internal buffer, array, or stack.

**Function: Prompting, reading, and storing user’s desired character**  
Purpose: Capture the character to count and store it.  
Input: Desired character entered in the console.  
Output: Character saved to the memory.  
Data Storage: The internal buffer.

**Function: Calculate frequency of characters**  
Purpose: Find how many times each character appears in a user's name.  
Input: The full user name from the buffer.  
Output: The count of each character’s frequency.  
Data Storage: The internal buffer.

**Function: ASCII convert value of character**  
Purpose: Convert characters from and to ASCII  
Input: Stored values of unconverted characters.  
Output: Value stored into memory.  
Data Storage: The internal buffer.

**Function: Print character frequency**  
Purpose: Display the frequency of the character to users.  
Input: Frequency counter.  
Output: Console log of frequency.  
Data Storage: Console output.

### 4.2 Performance Requirements

- The LC-3 simulator limits program efficiency.
- Should perform well with normal input sizes, i.e. average length names.

### 4.3 Flowchart OR Pseudocode
