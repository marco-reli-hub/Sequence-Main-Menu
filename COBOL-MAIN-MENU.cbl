      *    Make a COBOL main menu for all the sequence COBOL codes

       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAIN-MENU-PROGRAM.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  CHOOSE                          PIC 9(2) VALUE 11.

      *    Swap Values Variables:
       01  VALUE-A                         PIC 9(2) VALUE 10.
       01  VALUE-B                         PIC 9(2) VALUE 5.
       01  TEMP                            PIC 9(2).
       01  DISPLAY-A                       PIC Z9.
       01  DISPLAY-B                       PIC Z9.

      *    Arithmetic Operations Variables:
       01  NUMBER-A                        PIC 9(2).
       01  NUMBER-B                        PIC 9(2).
       01  NUMBER-SUM                      PIC 9(5).
       01  NUMBER-DIF                      PIC 9(5).
       01  NUMBER-PRO                      PIC 9(5).
       01  NUMBER-QUO                      PIC 9(5).
       01  DISPLAY-SUM                     PIC ZZ9.
       01  DISPLAY-DIF                     PIC ZZ9.
       01  DISPLAY-PRO                     PIC ZZ9.
       01  DISPLAY-QUO                     PIC ZZ9.

      *    Celsius To Fahrenheit Variables:
       01  FAHRENHEIT                      PIC 9(5).
       01  CELSIUS                         PIC 9(5).
       01  DISPLAY-FAHRENHEIT              PIC ZZ9.

      *    Total Sales Variables:
       01  SALESMAN-NUMBER                 PIC A(10).
       01  SALESMAN-NAME                   PIC A(15).
       01  UNIT-SOLD                       PIC 9(9).
       01  UNIT-PRICE                      PIC 9(9).
       01  TOTAL-SALE                      PIC 9(5).
       01  DISPLAY-TOTAL-SALE              PIC ZZZ,ZZ9.

      *    Avearge Variables:
       01  PRELIM                          PIC 9(2)V99.
       01  MIDTERM                         PIC 9(2)V99.
       01  FINALS                          PIC 9(2)V99.
       01  AVERAGE                         PIC 9(2)V99.

      *    Cube and Square Variables:
       01  BOX-INPUT                       PIC 9(9).
       01  CUBE                            PIC 9(35).
       01  SQUARE                          PIC 9(35).
       01  DISPLAY-CUBE                    PIC ZZZ,ZZ9.
       01  DISPLAY-SQUARE                  PIC ZZZ,ZZ9.

      *    Rectangle Variables:
       01  INPUT-LENGTH                    PIC 9(9).
       01  INPUT-WIDTH                     PIC 9(9).
       01  RECTANGLE-AREA                  PIC 9(9).
       01  RECTANGLE-PERIMETER             PIC 9(9).
       01  DISPLAY-RECT-AREA               PIC ZZZ,ZZ9.
       01  DISPLAY-RECT-PERIMETER          PIC ZZZ,ZZ9.

      *    Circle Variables:
       01  CIRCLE-PI                       PIC 9(1)V99 VALUE 3.14.
       01  INPUT-DIAMETER                  PIC 9(9)V99.
       01  CIRCLE-RADIUS                   PIC 9(9)V99.
       01  CIRCLE-AREA                     PIC 9(9)V99.
       01  CIRCLE-CIRCUMFERENCE            PIC 9(9)V99.
       01  DISPLAY-CIRC-AREA               PIC ZZZ,ZZ9.
       01  DISPLAY-CIRC-CIRCUM             PIC ZZZ,ZZ9.

      *    Triangle Variables:
       01  BASE                            PIC 9(9).
       01  HEIGHT                          PIC 9(9).
       01  SIDE-1                          PIC 9(9).
       01  SIDE-2                          PIC 9(9).
       01  SIDE-3                          PIC 9(9).
       01  TRIANGLE-AREA                   PIC 9(9)V99.
       01  TRIANGLE-PERIMETER              PIC 9(9)V99.
       01  DISPLAY-TRI-AREA                PIC ZZZ,ZZ9.
       01  DISPLAY-TRI-PERIMETER           PIC ZZZ,ZZ9.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "[-------------------------------------------------]"
           DISPLAY "[               SEQUENCE MAIN MENU                ]"
           DISPLAY "[-------------------------------------------------]"
           DISPLAY "[ 0 : Exit Main Menu.                             ]"
           DISPLAY "[ 1 : Print Name Five Times.                      ]"
           DISPLAY "[ 2 : Swap Two Value.                             ]"
           DISPLAY "[ 3 : Compute Arithmetic Operations.              ]"
           DISPLAY "[ 4 : Compute Celsius to Fahrenheit.              ]"
           DISPLAY "[ 5 : Display Salesman Info and Total Sales.      ]"
           DISPLAY "[ 6 : Compute Average.                            ]"
           DISPLAY "[ 7 : Cube and Square of the Number.              ]"
           DISPLAY "[ 8 : Area and Perimeter of a Rectangle.          ]"
           DISPLAY "[ 9 : Area and Circumference of a Circle.         ]"
           DISPLAY "[ 10: Area and Perimeter of a Triangle.           ]"
           DISPLAY "[-------------------------------------------------]"
           DISPLAY " "

           PERFORM UNTIL CHOOSE = 0
               DISPLAY "_____________________________________________"
               DISPLAY "Choose a Program to Run: "
               ACCEPT CHOOSE
               DISPLAY " "

               EVALUATE CHOOSE
               WHEN 1
                   DISPLAY "Print Name Five Times Program"
                   DISPLAY "Marco D. Reli"
                   DISPLAY "Marco D. Reli"
                   DISPLAY "Marco D. Reli"
                   DISPLAY "Marco D. Reli"
                   DISPLAY "Marco D. Reli"
                   DISPLAY " "

               WHEN 2
                   DISPLAY "Swap Two Values Program"
                   MOVE VALUE-A TO DISPLAY-A
                   MOVE VALUE-B TO DISPLAY-B

                   DISPLAY "Value A: " DISPLAY-A
                   DISPLAY "Value B: " DISPLAY-B

                   MOVE VALUE-A TO TEMP
                   MOVE VALUE-B TO VALUE-A
                   MOVE TEMP TO VALUE-B

                   MOVE VALUE-A TO DISPLAY-A
                   MOVE VALUE-B TO DISPLAY-B

                   DISPLAY "Swapped Values"
                   DISPLAY "Value A: " DISPLAY-A
                   DISPLAY "Value B: " DISPLAY-B
                   DISPLAY " "

               WHEN 3
                   DISPLAY "Compute Arithmetic Program"
                   DISPLAY "Enter a First Number: "
                   ACCEPT NUMBER-A
                   DISPLAY "Enter a Second Number: "
                   ACCEPT NUMBER-B

                   COMPUTE NUMBER-SUM = NUMBER-A + NUMBER-B
                   COMPUTE NUMBER-DIF = NUMBER-A - NUMBER-B
                   COMPUTE NUMBER-PRO = NUMBER-A * NUMBER-B
                   COMPUTE NUMBER-QUO = NUMBER-A / NUMBER-B

                   MOVE NUMBER-SUM TO DISPLAY-SUM
                   MOVE NUMBER-DIF TO DISPLAY-DIF
                   MOVE NUMBER-PRO TO DISPLAY-PRO
                   MOVE NUMBER-QUO TO DISPLAY-QUO

                   DISPLAY "Result ------------------- "
                   DISPLAY "Sum        : " DISPLAY-SUM
                   DISPLAY "Difference : " DISPLAY-DIF
                   DISPLAY "Product    : " DISPLAY-PRO
                   DISPLAY "Quotient   : " DISPLAY-QUO
                   DISPLAY " "

               WHEN 4
                   DISPLAY "Convert Celsius to Fahrenheit Program"
                   DISPLAY "Enter the Temperature: "
                   ACCEPT CELSIUS

                   COMPUTE FAHRENHEIT = (CELSIUS * 9 / 5) + 32
                   MOVE FAHRENHEIT TO DISPLAY-FAHRENHEIT

                   DISPLAY "Result: " DISPLAY-FAHRENHEIT
                   DISPLAY " "

               WHEN 5
                   DISPLAY "Compute Total Sales Program"
                   DISPLAY "Enter your name: "
                   ACCEPT SALESMAN-NAME

                   DISPLAY "Enter your number: "
                   ACCEPT SALESMAN-NUMBER

                   DISPLAY "Enter your unit sold: "
                   ACCEPT UNIT-SOLD

                   DISPLAY "Enter your unit price: "
                   ACCEPT UNIT-PRICE

                   COMPUTE TOTAL-SALE = UNIT-SOLD * UNIT-PRICE
                   MOVE TOTAL-SALE TO DISPLAY-TOTAL-SALE

                   DISPLAY "Salesman Info ----------------------"
                   DISPLAY "Salesman Name   : " SALESMAN-NAME
                   DISPLAY "Salesman Number : " SALESMAN-NUMBER
                   DISPLAY "Total Sales     : " DISPLAY-TOTAL-SALE
                   DISPLAY " "

               WHEN 6
                   DISPLAY "Display Average Program"
                   DISPLAY "Enter your Prelim Grade: "
                   ACCEPT PRELIM

                   DISPLAY "Enter your Midterm Grade: "
                   ACCEPT MIDTERM

                   DISPLAY "Enter your Finals : "
                   ACCEPT FINALS

                   COMPUTE AVERAGE = (PRELIM + MIDTERM + FINALS) / 3
                   DISPLAY "General Average: " AVERAGE
                   DISPLAY " "

               WHEN 7
                   DISPLAY "Compute Square and Cube Program"
                   DISPLAY "Enter a Number: "
                   ACCEPT BOX-INPUT

                   COMPUTE CUBE = BOX-INPUT * BOX-INPUT
                   COMPUTE SQUARE = BOX-INPUT * BOX-INPUT *
                   BOX-INPUT

                   MOVE CUBE TO DISPLAY-CUBE
                   MOVE SQUARE TO DISPLAY-SQUARE

                   DISPLAY "Cube   : " DISPLAY-CUBE
                   DISPLAY "Square : " DISPLAY-SQUARE
                   DISPLAY " "

               WHEN 8
                   DISPLAY "Compute Area and Perimeter Program"
                   DISPLAY "Enter the Length: "
                   ACCEPT INPUT-LENGTH

                   DISPLAY "Enter the Width: "
                   ACCEPT INPUT-WIDTH

                   COMPUTE RECTANGLE-AREA = INPUT-LENGTH * INPUT-WIDTH
                   COMPUTE RECTANGLE-PERIMETER = 2 *
                   (INPUT-LENGTH + INPUT-WIDTH)

                   MOVE RECTANGLE-AREA TO DISPLAY-RECT-AREA
                   MOVE RECTANGLE-PERIMETER TO DISPLAY-RECT-PERIMETER

                   DISPLAY "Area      : " DISPLAY-RECT-AREA
                   DISPLAY "Perimeter : " DISPLAY-RECT-PERIMETER
                   DISPLAY " "

               WHEN 9
                   DISPLAY "Compute Area and Circumference Program"
                   DISPLAY "Enter the Diameter: "
                   ACCEPT INPUT-DIAMETER

                   COMPUTE CIRCLE-RADIUS = INPUT-DIAMETER / 2
                   COMPUTE CIRCLE-AREA = CIRCLE-PI *
                   CIRCLE-RADIUS * CIRCLE-RADIUS
                   COMPUTE CIRCLE-CIRCUMFERENCE =
                   CIRCLE-PI * CIRCLE-RADIUS

                   MOVE CIRCLE-AREA TO DISPLAY-CIRC-AREA
                   MOVE CIRCLE-CIRCUMFERENCE TO DISPLAY-CIRC-CIRCUM

                   DISPLAY "Area          : " DISPLAY-CIRC-AREA
                   DISPLAY "Circumference : " DISPLAY-CIRC-CIRCUM
                   DISPLAY " "

               WHEN 10
                   DISPLAY "Display Area and Perimeter Program"
                   DISPLAY "Enter the Base: "
                   ACCEPT BASE
                   DISPLAY "Enter the Height: "
                   ACCEPT HEIGHT
                   DISPLAY "Enter the Side 1: "
                   ACCEPT SIDE-1
                   DISPLAY "Enter the Side 2: "
                   ACCEPT SIDE-2
                   DISPLAY "Enter the Side 3: "
                   ACCEPT SIDE-3

                   COMPUTE TRIANGLE-AREA = 0.5 * BASE * HEIGHT
                   COMPUTE TRIANGLE-PERIMETER =
                   SIDE-1 + SIDE-2 + SIDE-3

                   MOVE TRIANGLE-AREA TO DISPLAY-TRI-AREA
                   MOVE TRIANGLE-PERIMETER TO DISPLAY-TRI-PERIMETER

                   DISPLAY "Area      : " DISPLAY-TRI-AREA
                   DISPLAY "Perimeter : " DISPLAY-TRI-PERIMETER
                   DISPLAY " "

               WHEN 0
                   DISPLAY " -- You Exited the Program. -- "
                   DISPLAY " "

               WHEN OTHER
                   DISPLAY " -- Invalid Input. -- "
                   DISPLAY " "

               END-EVALUATE
           END-PERFORM.

           STOP RUN.
       END PROGRAM MAIN-MENU-PROGRAM.
