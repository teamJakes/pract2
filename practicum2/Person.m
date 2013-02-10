// Original Author: Maria Segura
// Modified-By Author: David Banker
// Date Last Modified: 02/01/2013
// Purpose: Creates an instance of an object that holds a first and last
// name, and an identification number.

#include "Person.h"

@implementation Person

@synthesize

// Constructor
// Parameters: none
// Returns: the newly instantiated Person object
// Precondition: none
// Postcondition: none
// Algorithm: constructs the object without properties
Person::Person() {
}
Person::~Person() {
}

// Accessor functions of Person
string Person::getFirstName(){
    return firstName;
}
string Person::getLastName(){
    return lastName;
}
int Person::getIDNum(){
    return IDNum;
}
bool Person::getStatus(){
    return isStudent;
}

// Accessor methods of potential child classes of Person
float Person::getGPA(){
    
}

int Person::getGradYear(){
    
}
string Person::getMajor(){
    
}
int Person::getSalary(){
    
}
bool Person::getTenureStatus(){
    
}
string Person::getDepartment(){
    
}

// Mutator functions of potential child classes of Person
void Person::setSalary(int newSalary){
    
}
void Person::setTenureStatus(bool newStatus){
    
}
void Person::setDepartment(string newDepartment){
    
}
void Person::setGPA(int newGPA){
    
}
void Person::setGradYear(int newGradYear){
    
}
void Person::setMajor(string newMajor){
    
}
 

// Mutator functions of Person
void Person::setFirstName(string newFirstName){
    firstName = newFirstName;
}
void Person::setLastName(string newLastName){
    lastName = newLastName;
}
void Person::setIDNum(int newIDNum){
    IDNum = newIDNum;
}
void Person::setStatus(bool newIsStudent){
    isStudent = newIsStudent;
}