.ORIG x3000     ; Start the program at memory address x3000

LEA R0, WELCOME_MSG  ; Load effective address of WELCOME_MSG into R0
PUTS                ; Output the string stored at WELCOME_MSG

LEA R0, INPUT_PROMPT  ; Load effective address of INPUT_PROMPT into R0
PUTS                ; Output the string stored at INPUT_PROMPT

LEA R2, ASCII_OFFSET_LOWER  ; Load the address of ASCII_OFFSET_LOWER into R2
LDR R2, R2, #0              ; Load the value stored at ASCII_OFFSET_LOWER into R2 (-97)
LEA R4, CHAR_COUNT_ARRAY    ; Load the effective address of the array into R4
AND R3, R3, #0              ; Clear R3, used as a character counter
AND R7, R7, #0              ; Clear R7, used as a lowercase flag
AND R6, R6, #0              ; Clear R6, used as an uppercase flag

GET_CHAR                    ; Start of the loop to get input character
GETC                        ; Get a single character from input
OUT                         ; Output the character on the console
ADD R5, R0, #-10            ; Subtract 10 from the character read, checking if it's the enter key
BRz OUTPUT_RESULT           ; If the result is zero, branch to OUTPUT_RESULT

                            ; Check if the character is uppercase
JSR CHECK_IF_UPPERCASE      ; Jump to subroutine to check if the character is uppercase
BRnzp PROCESS_CHAR          ; Branch to PROCESS_CHAR if the character is not uppercase

PROCESS_CHAR                ; Process the character
ADD R0, R0, R2              ; Subtract 97 from the character ASCII value
BRn GET_CHAR                ; If the result is negative, it's not a lowercase letter, so get the next character
BRzp INCREMENT_CHAR_COUNT   ; Otherwise, continue processing the character in INCREMENT_CHAR_COUNT

INCREMENT_CHAR_COUNT        ; Loop to process the character frequency
ADD R4, R4, R0              ; Move along the index in the array
LDR R1, R4, #0              ; Load the value stored at the index of the array into R1
ADD R1, R1, #1              ; Increase the counter used for the letter in the index of the array
STR R1, R4, #0              ; Store the new increased value back in the array
LEA R4, CHAR_COUNT_ARRAY    ; Reset R4 to point to the start of the CHAR_COUNT_ARRAY
BR GET_CHAR                 ; Branch back to GET_CHAR to get the next character

OUTPUT_RESULT               ; Result output section
LEA R3, TOTAL_LETTERS       ; Load the effective address of TOTAL_LETTERS into R3
LDR R3, R3, #0              ; Load the value stored at the address of TOTAL_LETTERS into R3, which is 26
AND R0, R0, #0              ; Clear R0
LEA R6, ASCII_LOWER_START   ; Load the effective address of ASCII_LOWER_START into R6
LDR R6, R6, #0              ; Load the value stored at ASCII_LOWER_START into R6
ADD R0, R6, #0              ; Add ASCII_LOWER_START to R0 for console output of letters

LEA R4, CHAR_COUNT_ARRAY    ; Load the effective address of CHAR_COUNT_ARRAY into R4
LEA R2, ASCII_NUM_OFFSET    ; Load the effective address of ASCII_NUM_OFFSET into R2
LDR R2, R2, #0              ; Load the value stored at ASCII_NUM_OFFSET into R2, which is 48

OUTPUT_LOOP                 ; Loop for output
OUT                         ; Output the character
LD R1, EQUAL_SIGN           ; Load the equal sign into R1
ADD R0, R1, #0              ; Copy the equal sign to R0
OUT                         ; Output the equal sign
LDR R0, R4, #0              ; Load the value stored at the index of the array into R0
ADD R4, R4, #1              ; Increment the index
ADD R0, R0, R2              ; Convert the value to ASCII by adding ASCII_NUM_OFFSET
OUT                         ; Output the frequency of characters
LD R1, TAB_SPACE            ; Load the address of tab into R1
ADD R0, R1, #0              ; Copy the tab so it can be used
OUT                         ; Output a tab space
ADD R6, R6, #1              ; Increment R6 to continue to the next ASCII value
ADD R0, R6, #0              ; Add R6 to R0 to print the character at the start of the loop
ADD R3, R3, #-1             ; Decrement the loop counter
BRp OUTPUT_LOOP             ; Branch to OUTPUT_LOOP if the loop counter is positive

HALT                        ; Halt the program

CHECK_IF_UPPERCASE          ; Subroutine to check if the character is uppercase
LEA R5, ASCII_OFFSET_UPPER  ; Load the effective address of ASCII_OFFSET_UPPER into R5
LDR R5, R5, #0              ; Load the value stored at ASCII_OFFSET_UPPER into R5, which is -65
ADD R5, R0, R5              ; Subtract 65 from the character ASCII value
BRn CHECK_IF_LOWERCASE      ; If the result is negative, the character is not uppercase, so check if it's lowercase
LEA R6, UPPERCASE_RANGE     ; Load the effective address of UPPERCASE_RANGE into R6
LDR R6, R6, #0              ; Load the value stored at UPPERCASE_RANGE into R6, which is -26
ADD R5, R5, R6              ; Subtract 26
BRp CHECK_IF_LOWERCASE      ; If the result is positive, the character is not uppercase, so check if it's lowercase
ADD R6, R6, #1              ; Set R6 to 1 if the character is uppercase
LEA R5, ASCII_CASE_CONVERT  ; Load the effective address of ASCII_CASE_CONVERT into R5
LDR R5, R5, #0              ; Load the value stored at ASCII_CASE_CONVERT into R5, which is 32
ADD R0, R0, R5              ; Convert uppercase to lowercase by adding 32
RET                         ; Return from the subroutine

CHECK_IF_LOWERCASE          ; Subroutine to check if the character is lowercase
LEA R5, ASCII_OFFSET_LOWER  ; Load the effective address of ASCII_OFFSET_LOWER into R5
LDR R5, R5, #0              ; Load the value stored at ASCII_OFFSET_LOWER into R5, which is -97
ADD R5, R0, R5              ; Subtract 97 from the character ASCII value
BRn GET_CHAR                ; If the result is negative, the character is not lowercase, so get the next character
LEA R6, UPPERCASE_RANGE     ; Load the effective address of UPPERCASE_RANGE into R6
LDR R6, R6, #0              ; Load the value stored at UPPERCASE_RANGE into R6, which is -26
ADD R5, R5, R6              ; Subtract 26
BRp GET_CHAR                ; If the result is positive, the character is not lowercase, so get the next character
ADD R7, R7, #1              ; Set R7 to 1
RET                         ; Return from the subroutine

WELCOME_MSG .STRINGZ "String character frequency counter.\n"
INPUT_PROMPT .STRINGZ "\nEnter your name: "
SPACE .STRINGZ " "

CHAR_COUNT_ARRAY .BLKW 26    ; size for up to 26 letters a-z

ASCII_OFFSET_LOWER .FILL #-97     ; ASCII conversion a=97
ASCII_OFFSET_UPPER .FILL #-65     ; ASCII conversion A=65
UPPERCASE_RANGE .FILL #-26   ; check for uppercase -26
ASCII_CASE_CONVERT .FILL #32 ; Convert uppercase to lowercase - add 32
TOTAL_LETTERS .FILL #26      ; 26 letters a-z

ASCII_LOWER_START .FILL #97  ; ASCII conversion of a-z
ASCII_NUM_OFFSET .FILL #48   ; ASCII conversion of 0-9 for frequency count

EQUAL_SIGN .FILL x003D       ; Hexadecimal ASCII value for '='
TAB_SPACE .FILL x0009        ; Hexadecimal ASCII value for a 'tab'

.END