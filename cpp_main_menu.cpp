// Make a C++ main menu for all the sequence codes.

#include <iostream>
using namespace std;

int main() 
{
    // Variables Initialization and declaration
    int choice;

    int temp;
    int a = 10; 
    int b = 5;

    int num_1;
    int num_2;
    int sum;
    int dif;
    int pro;
    int quo;

    int celsius;
    int fahrenheit;

    string salesman_name;
    string salesman_number;
    int unit_sold;
    int unit_price;
    int total_sales;

    int prelim;
    int midterm; 
    int finals;
    int average;

    int box;
    int square;
    int cube;

    int rectangle_length;
    int rectangle_width;
    int rectangle_area;
    int rectangle_perimeter;

    const double circle_PI = 3.1416;
    double circle_diameter;
    double circle_radius;
    double circle_area;
    double circle_circumference;

    double triangle_area;
    double triangle_perimeter;
    double triangle_base;
    double triangle_height;
    double side_1;
    double side_2;
    double side_3;
    
    cout << "This is the Main Menu for all the Sequnence Flowchart Projects!" << endl;
    cout << "[ Main Menu:                                                   ]" << endl;
    cout << "[ 0 - Exit!                                                    ]" << endl;
    cout << "[ 1 - Print Names.                                             ]" << endl;
    cout << "[ 2 - Swap Numbers.                                            ]" << endl;
    cout << "[ 3 - Arithmetic Operations.                                   ]" << endl;
    cout << "[ 4 - Converts Celsius to Fahrenheit.                          ]" << endl;
    cout << "[ 5 - Print Salesman Information.                              ]" << endl;
    cout << "[ 6 - Calculate the Semester Genaral Average.                  ]" << endl;
    cout << "[ 7 - Calculate the Square and Cube of a Box.                  ]" << endl;
    cout << "[ 8 - Calculate the Area and Perimeter of a Rectangle.         ]" << endl;
    cout << "[ 9 - Calculate the Area and Circumference of a Circle.        ]" << endl;
    cout << "[10 - Calculate the Area and Perimeter of a Triangle.          ]" << endl << endl;

    do 
    {
        cout << "Enter a number: ";
        cin >> choice;

        switch(choice) 
        {
        case 1:
            cout << "Marco D. Reli" << endl;
            cout << "Marco D. Reli" << endl;
            cout << "Marco D. Reli" << endl;
            cout << "Marco D. Reli" << endl;
            cout << "Marco D. Reli" << endl;
            cout << endl;
            break;

        case 2:
            cout << "Original Value:" << endl;
            cout << "Variable A: " << a << endl;
            cout << "Variable B: " << b << endl;
            cout << endl;
        
            temp = a;
            a = b;
            b = temp;
        
            cout << "Swapped Value:" << endl;
            cout << "Variable  A: " << a << endl;
            cout << "Variable  B: " << b << endl;
            cout << endl;
            break;

        case 3:
            cout << "Enter the first number: ";
            cin >> num_1;
            cout << "Enter the second number: ";
            cin >> num_2;
            
            sum = num_1 + num_2;
            dif = num_1 - num_2;
            pro = num_1 * num_2;
            quo = num_1 / num_2;
            
            cout << endl << "Results --------------------" << endl;
            cout << "Sum         :  " << sum << endl;
            cout << "Difference  :  " << dif << endl;
            cout << "Product     :  " << pro << endl;
            cout << "Quotient    :  " << quo << endl;
            cout << endl;
            break;

        case 4:
            cout << "Enter the temperature in celsius: ";
            cin >> celsius;
            
            fahrenheit = (celsius * 9 / 5) + 32;
            
            cout << "Fahrenheit:  " << fahrenheit << endl;
            cout << endl;
            break;

        case 5:
            cout << "Enter your name: ";
            cin >> salesman_name;
            cout << "Enter your number: ";
            cin >> salesman_number;
            cout << "Enter your unit sold: ";
            cin >> unit_sold;
            cout << "Enter your unit price: ";
            cin >> unit_price;
            
            total_sales = unit_sold * unit_price;
            
            cout << endl << "Salesman INFO -------------------- " << endl;
            cout << "Salesman Name    :  " << salesman_name << endl;
            cout << "Salesman Number  :  " << salesman_number << endl;
            cout << "Total Sales      :  " << total_sales << endl;
            cout << endl;
            break;

        case 6:
            cout << "Enter your prelim grade: ";
            cin >> prelim;
            cout << "Enter your midterm grade: ";
            cin >> midterm;
            cout << "Enter your finals grade: ";
            cin >> finals;
            
            average = (prelim + midterm + finals) / 3;
            
            cout << endl << "General Average: " << average << endl;
            cout << endl;
            break;

        case 7:
            cout << "Enter a number: ";
            cin >> box;
            
            square = box * box;
            cube = box * box * box;
        
            cout << "Square  :  " << square << endl;
            cout << "Cube    :  " << cube << endl;
            cout << endl;
            break;

        case 8:
            cout << "Enter the length of the rectangle: ";
            cin >> rectangle_length;
            cout << "Enter the width of the rectangle: ";
            cin >> rectangle_width;
            
            rectangle_area = rectangle_length * rectangle_width;
            rectangle_perimeter = 2 * (rectangle_length + rectangle_width);
            
            cout << "Area       :  " << rectangle_area << endl;
            cout << "Perimater  :  " << rectangle_perimeter << endl;
            cout << endl;
            break;

        case 9:
            cout << "Enter the diameter of the circle: ";
            cin >> circle_diameter;
            
            circle_radius = circle_diameter / 2;
            circle_area = circle_PI * circle_radius * circle_radius;
            circle_circumference = circle_PI * circle_radius;
            
            cout << "Area           :  " << circle_area << endl;
            cout << "Circumference  :  " << circle_circumference << endl;
            cout << endl;
            break;

        case 10:
            cout << "Enter the base of the triangle: ";
            cin >> triangle_base;
            cout << "Enter the height of the triangle: ";
            cin >> triangle_height;
            cout << "Enter the first side of the triangle: ";
            cin >> side_1;
            cout << "Enter the second side of the triangle: ";
            cin >> side_2;
            cout << "Enter the third side of the triangle: ";
            cin >> side_3;
            
            triangle_area = 0.5 * triangle_base * triangle_height;
            triangle_perimeter = side_1 + side_2 + side_3;
            
            cout << "Area       :  " << triangle_area << endl;
            cout << "Perimeter  :  " << triangle_perimeter << endl;
            cout << endl;
            break;

        case 0:
            cout << "Exited!" << endl << endl;
            break;

        default:
            cout << "Invalid Input!" << endl << endl;
            break;
        }  
    } while(choice != 0);
    return 0;
}
