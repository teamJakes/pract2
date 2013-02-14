/* Original Author: Alex Wolf
 * Modified-By Author: Mason Doucett and Others
 * Refactored to Objective-C: Katie Levittan
 * Date Last Modified: 2/7/2013
 * Purpose: Runs a user-controlled while loop to provide several
 * functions in regards to a linked list of students and teachers.
 */

#import <Foundation/Foundation.h>
#import "myList.h"

/* Name: main function
 * Purpose: Asks the user which of 5 choices they want to do, including adding a student, removing
 * a student, printing a student's info, print all student's info, and quitting. Continues
 * to ask the user what they want to do until they quit.
 * Parameters: none
 * Return Values: 0 when finished
 * Global Constants Used: none
 */
int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        //holds a boolean to describe wether or not a requested action was completed
        BOOL worked;
        
        //holds a default student/teacher object that is altered when new students/teachers are added
        Student *theStudent;
        theStudent = [[Student alloc] init];
        
        Professor *theProfessor;
        theProfessor = [[Professor alloc] init];
        
        //placeholder when students/teachers are retrieved from the list
        Student *oldStudent;
        oldStudent = [[Student alloc] init];
        
        Professor *oldProfessor;
        oldProfessor = [[Professor alloc] init];
        
        //list of people
        myList *students;
        students = [[myList alloc] init];
        
        //holds the choice of the transaction the user wants to perform
        int choice;
        
        //holds whether the user wants to perform another transaction
        NSString *answer = @"y";
        
        while ([answer compare: @"y"] == NSOrderedSame) {
            
            //Asks user which operation they want to perform
            printf("");
            printf("Please enter a number to perform a task");
            printf("1. Quit");
            printf("2. Add person");
            printf("3. Remove person");
            printf("4. Print person");
            printf("5. Print all people");
            
            //holds the user's choice
            scanf(%d, choice);
            
            //error checking for choice
            while ((choice < 1) || (choice > 5)) {
                printf("Invalid input. Please enter another number.");
                scanf(%d, choice);
            }
            printf("");
            
            //calls the appropriate function depending on the option selected by the user
            
            //exits the program
            if (choice == 1) {
                return 0;
            } else if (choice == 2) { //adds a person
                
                //variables to hold various data about the person to be added
                NSString *personVar;
                NSString *firstName;
                NSString *lastName;
                int ID;
                BOOL status;
                
                //ask user for first name
                printf("Enter a first name for the new person: ");
                scanf(%s, firstName);
                
                //reduce first name to lower case
                firstName = [firstName lowercaseString];
                
                //ask user for last name
                printf("Enter a last name for the new student: ");
                scanf(%s, lastName);
                
                //reduce last name to lower case
                lastName = [lastName lowercaseString];
                
                //ask user for ID number
                printf("Enter the student's ID number [greater than 0]: ");
                scanf(%d, ID);
                
                //error checking for ID number
                while (ID < 0) {
                    printf("Invalid ID number. Please enter a new ID number [greater than 0]: ");
                    scanf(%d, ID);
                }
                
                //ask user if it is a student or a professor that is being added
                printf("Enter 's' if it is a student, enter 'p' if it is a professor: ");
                scanf(%s, personVar);
                
                //reduce the response to lowercase
                personVar = [personVar lowercaseString];
                
                //if the person is a student...
                if ([personVar compare: @"s"] == NSOrderedSame) {
                    
                    //variables specifically for student data
                    float GPA;
                    NSString *major;
                    int year;
                    
                    //ask user for GPA
                    printf("Enter the student's GPA [greater than 0/less than or equal to 5]: ");
                    scanf(%f, GPA);
                    
                    //error checking for GPA
                    while (GPA < 0 || GPA > 5) {
                        printf("Invalid GPA. Please enter a GPA [greater than 0/less than or equal to 5]: ");
                        scanf(%f, GPA);
                    }
                    
                    //ask user for major
                    printf("Enter a major for the new student: ");
                    scanf(%s, major);
                    
                    //reduce the response to lowercase
                    major = [major lowercaseString];
                    
                    //ask user for graduation year
                    printf("Enter the student's graduation year [greater than 0]: ");
                    scanf(%d, year);
                    
                    //error checking for graduation year
                    while (year < 0) {
                        printf("Invalid year. Please enter a new year [greater than 0]: ");
                        scanf(%d, year);
                    }
                    
                    //set status to true because it is a student
                    status = YES;
                    
                    //sets the first name, last name, ID, GPA, Major, Graduation Year, and Status of the student based on user input
                    setFirstName = [theStudent firstName];
                    setLastName = [theStudent lastName];
                    setIDNum = [theStudent ID];
                    setGPA = [theStudent GPA];
                    setMajor = [theStudent major];
                    setGradYear = [theStudent year];
                    setStatus = [theStudent status];
                    
                    //inserts the new student into the list
                    worked = [students insert: theStudent at: [students getLength] + 1];
                    
                    //display results of request
                    if (worked) {
                        printf("Student added");
                    } else {
                        printf("Add student failed");
                    }
                    
                } else { //if the person is a teacher...
                    
                    //variables specific to teacher data
                    BOOL tenure;
                    char response;
                    int salary;
                    NSString *department;
                    
                    //ask the user for tenure (yes or no)
                    printf("Does the professor have tenure? Enter 'y' for yes or 'n' for no:");
                    scanf(%s, response);
                    
                    //set the tenure variable and perform error checking
                    if (response == 'y' || response == 'Y') {
                        tenure = YES;
                    } else {
                        tenure = NO;
                    }
                    
                    //ask the user for a salary
                    printf("Enter a salary for the professor:");
                    scanf(%d, salary);
                    
                    //error checking for salary
                    while (salary < 0) {
                        printf("Invalid salary, must be greater than or equal to 0. Re-enter:");
                        scanf(%d, salary);
                    }
                    
                    NSLog(@"Salary is: %@", salary);
                    //ask user for a department
                    printf("Enter a department for the professor:");
                    scanf(%s, department);
                    
                    //reduce the response to lowercase
                    department = [department lowercaseString];
                    
                    NSLog(@"Department is: %@", department);
                    //set the status to false because it is a teacher
                    status = NO;
                    
                    //sets the first name, last name, ID, Salary, Tenure, Department, and Status of the teacher based on user input
                    
                    setFirstName = [theProfessor firstName];
                    setLastName = [theProfessor lastName];
                    setIDNum = [theProfessor ID];
                    setSalary = [theProfessor salary];
                    setTenureStatus = [theProfessor tenure];
                    setDepartment = [theProfessor department];
                    setStatus = [theProfessor status];
                    
                    //inserts the new teacher into the list
                    worked = [students insert: theProfessor at: [students getLength] + 1];
                    
                    //display results of the request
                    if (worked) {
                        printf("Professor added");
                    } else {
                        printf("Add professor failed");
                    }
                }
            } else if (choice == 3) { //remove a person from the list
                
                //variables for finding the correct person
                int ID;
                int index = -1;
                
                //ask user for the ID number of the person to find
                printf("Enter an ID for the person to remove: ");
                scanf(%d, ID);
                
                //traverse the list and find the correct ID number
                for (int i = 1; i < [students getLength] + 1; i++) {
                    [students retrieve: oldStudent at: i];
                    if ([oldStudent getIDNum:[Student Class]] == ID) {
                        index = i;
                    }
                }
                
                //error checking for finding the requested ID number
                while (index == -1) {
                    
                    //if not fould, ask for a different ID number
                    printf("Invalid student ID. Please enter a new ID: ");
                    scanf(%d, ID);
                    
                    //traverse the list and find the new ID number
                    for (int i = 1; i < [students getLength] + 1; i++) {
                        [students retrieve: oldStudent at: i];
                        if ([oldStudent getIDNum:[Student Class]] == ID) {
                            index = i;
                        }
                    }
                }
                
                //removes selected student from list
                worked = [students remove at: index];
                
                //display results of request
                if (worked) {
                    printf("Person removed");
                } else {
                    printf("Remove person failed");
                }
            }
            //prints a person from the list based on ID number
            else if (choice == 4) {
                
                //variables for finding the correct person based on ID number
                int ID;
                int index = -1;
                
                //ask user for the ID of the person to find
                printf("Enter the ID of the person to print: ");
                scanf(%d, ID);
                
                //traverse the list to find the correct ID number
                for (int i = 1; i < [students getLength] + 1; i++) {
                    [students retrieve: oldStudent at: i];
                    if ([oldStudent getIDNum:[Student Class]] == ID) {
                        index = i;
                    }
                }
                
                //error checking for finding the requested ID number
                while (index == -1) {
                    
                    //if not found, ask user for a new ID number
                    printf("Invalid student ID. Please enter a new ID: ");
                    scanf(%d, ID);
                    
                    //traverse the list and find the new ID number
                    for (int i = 1; i < [students getLength] + 1; i++) {
                        [students retrieve: oldStudent at: i];
                        if ([oldStudent getIDNum:[StudentClass]] == ID) {
                            index = i;
                        }
                    }
                }
                
                //retrieves the given person's information
                worked = [students retrieve: oldStudent at: index];
                
                //prints person's info if it was successful
                if (worked) {
                    
                    //print first name, last name, and ID, common to all people in the list
                    NSLog(@"First Name: %@", [oldStudent getFirstName:[Student Class]]);
                    NSLog(@"Last Name: %@", [oldStudent getLastName:[Student Class]]);
                    NSLog(@"ID: %@", [oldStudent getIDNum:[StudentClass]]);
                    
                    //if the person is a student...
                    if ([oldStudent getStatus:[Student Class]] == YES) {
                        NSLog(@"Major: %@", [oldStudent getMajor:[Student Class]];
                        NSLog(@"Graduation Year: %@", [oldStudent getGradYear:[Student]]);
                        } else { //if the person is a teacher...
                                  
                        //print Tenure, Salary, and Department
                        NSLog(@"Tenure: %@", [oldStudent getTenureStatus:[Student Class]]);
                        NSLog(@"Salary: %@", [oldStudent getSalary:[Student Class]]);
                        NSLog(@"Department: %@", [oldStudent getDepartment:[Student Class]]);
                                  
                        }
                              
                    } else { //displays error if it failed
                        printf("Retreive failed");
                    }
                } else if (choice == 5) { //displays all the people in the list
                                  
                    //prints all the people's info
                    printf("People:");
                                  
                    //traverse the list, getting and displaying info for all people
                    for (int i = 1; i < [students getLength] + 1; i++) {
                                      
                        worked = [students retrieve: oldStudent at: i];
                                      
                        //if it was successful in finding someone...
                        if (worked) {
                                          
                            //print First Name, Last Name, and ID Number, common to all people
                            NSLog(@"First Name: %@", [oldStudent getFirstName:[Student Class]]);
                            NSLog(@"Last Name: %@", [oldStudent getLastName:[Student Class]]);
                            NSLog(@"ID: %@", [oldStudent getIDNum:[Student Class]]);
                                          
                            //if the person is a student...
                            if ([oldStudent getStatus:[Student class]] == YES) {
                                              
                                //print GPA, Major, and Graduation Year
                                NSLog(@"GPA: %@", [oldStudent getGPA:[Student Class]]);
                                NSLog(@"Major: %@", [oldStudent getMajor:[Student Class]]);
                                NSLog(@"Graduation Year: %@", [oldStudent getGradYear:[Student Class]]);
                                              
                            } else { //if the person is a teacher...
                                              
                                //print Tenure, Salary, and Department
                                              
                                NSLog(@"", [oldStudent getTenureStatus:[Student Class]]);
                                if ([oldStudent getTenureStatus:[Student class]]) {
                                    printf("Tenure: yes");
                                } else {
                                    printf("Tenure: no");
                                }
                                NSLog(@"Salary: %@", [oldStudent getSalary:[Student Class]]);
                                NSLog(@"Department: %@", [oldStudent getDepartment:[Student Class]]);
                            }
                                          
                        } else { //if there was an error in finding people, print error
                            printf("Retreive failed");
                        }
                        printf("");
                    }
                }
                //loops back through the choices if the user wants to make another selection
                printf("");
                printf("Would you like to make another selection? [y/n]: ");
                scanf(%s, answer);
            }
            return 0;
        } //end of file