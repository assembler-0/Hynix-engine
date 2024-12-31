#include "../include/CLI11.hpp"
#include "../include/exprtk.hpp"
#include "../include/termcolor.hpp"
#include <iomanip>
#include <cmath>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
using namespace std;
using namespace termcolor;
string version ("alpha 0.1");
string expression;
char mode1;
bool mode;
double exprtk_cbrt(double x){
    return cbrt(x);
}
void scientific_display(void){
    cout<< setw(0) <<bold << bright_green << "Trigonometric" << reset
        << setw(14) << bold << bright_green << "Hyperbolic" << reset
        << setw(21) << bold << bright_green << "Power" << reset << '\n';
    cout << bold << bright_green << string(55, '-') << reset << '\n';
    cout << setw(3) << bold << bright_green << "cos()"<< setw(25) << "cosh" << setw(26) << "pow()\n" << reset;
    cout << setw(3) << bold << bright_green << "sin()"<< setw(25) << "sinh" << setw(26) <<"sqrt()\n" << reset;
    cout << setw(3) << bold << bright_green << "tan()"<< setw(25) << "tanh" << setw(26) <<"cbrt()\n" << reset;
    cout << setw(3) << bold << bright_green << "acos()"<< setw(27) << "acosh()\n"<< reset;
    cout << setw(3) << bold << bright_green << "asin()" << setw(27) <<"asinh()\n"<< reset;
    cout << setw(3) << bold << bright_green << "atan()" << setw(27) <<"atanh()\n"<< reset;
    cout << bright_green <<"NOTE: if you want to calculate normal expression, just type like: 5+4*8-sin(90)+pow(2,3)\n" << reset;
    mode = true;
    return;
}
void extra_display(void){
    
}
int main(int argc, char** argv) {
    cout << setw(23) <<red << bold << underline << "HexaCore " << version << reset << '\n';
    cout << bright_blue << bold << "Please choose mode SCIENTIFIC [s] EXTRA [e]: " << reset;
    cin >> mode1;
    switch(mode1){
        case('s'): scientific_display(); break;
        case('e'): extra_display(); break;
        default: break;
    }
    if(mode != true){
        return 0;
    }
    exprtk::symbol_table<double> symbol_table; 
    symbol_table.add_function("cbrt", exprtk_cbrt);
    cout << bold << bright_blue << "Pleases enter operation you want to perform: " << reset;
    cin >> expression;
    exprtk::expression<double> expr;
    expr.register_symbol_table(symbol_table);
    exprtk::parser<double> parser;
    if (!parser.compile(expression, expr)) {
        std::cerr << "Error: " << parser.error() << "\n";
        return 1;
    }
    double result = expr.value();
    cout << bold << underline << red << "Returned value: "<< result << endl << reset;
    return 0; 
    
}
 