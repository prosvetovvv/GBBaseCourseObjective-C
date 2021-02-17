//
//  ViewController.m
//  GBBaseCourseObjective-C
//
//  Created by Vitaly Prosvetov on 31.01.2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Ex1
    //[self createAndPrintUserList];
    
    // Ex2
    //CGFloat result = [self calculate:OperationDevision with: 5 and: 1];
    //NSLog(@"%.2f", result);
    
    // Ex3
    //[self createAndPrintHumans];
    
    // LessonFour
    //[self createAndPrintStudents];
    
    //LessonSeven
}

//MARK:- LessonSeven
- (NSString*)directory {
    return [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingString:@"/student.txt"];
}

- (Student*)readStudent:(Student*)student {
    //NSData *data = [NSKeyedArchiver archivedDataWithRootObject:student requiringSecureCoding:NO error:nil];
    NSData *data = [NSData dataWithContentsOfFile:[self directory]];
    return [NSKeyedUnarchiver unarchivedObjectOfClass:Student.class fromData:data error:nil];
}

//MARK:- LessonFour
- (void)createAndPrintStudents {
    Student *studentOne = [[Student alloc] initStudentWithFirstName: @"Ivan" lastName: @"Petrov" age: 20];
    Student *studentTwo = [[Student alloc] initStudentWithFirstName: @"Petr" lastName: @"Ivanov" age: 22];
    Student *studentThree = [[Student alloc] initStudentWithFirstName: @"Andrey" lastName: @"Sidorov" age: 19];
    NSLog(@"%@ %@ %@", studentOne, studentTwo, studentThree);
}

//MARK:- Ex1
- (void)createAndPrintUserList {
    NSArray *users = @[@"UserOne", @"UserTwo", @"UserThree"];
    
    for (NSString *user in users) {
        NSLog(@"%@", user);
    }
}

//MARK:- Ex2

- (CGFloat)sum:(CGFloat)value1 and:(CGFloat)value2 {
    return value1 + value2;
}

- (CGFloat)subtracting:(CGFloat)value1 and:(CGFloat)value2 {
    return value1 - value2;
}

- (CGFloat)multiplication:(CGFloat)value1 on:(CGFloat)value2 {
    return value1 * value2;
}

- (CGFloat)devision:(CGFloat)value1 on:(CGFloat)value2 {
    if (value2 == 0) {
        NSLog(@"Error");
        return 0;
    }
    return value1 / value2;
}

- (CGFloat)calculate:(Operations)operation with: (CGFloat)firstValue and: (CGFloat)secondValue {
    switch (operation) {
        case OperationSum:
            return [self sum: firstValue and: secondValue];
            break;
        case OperationSubtracting:
            return [self subtracting: firstValue and: secondValue];
            break;
        case OperationMultiplication:
            return  [self multiplication: firstValue on: secondValue];
            break;
        case OperationDevision:
            return  [self devision: firstValue on: secondValue];
            break;
    }
}

//MARK:- Ex3

- (void)createAndPrintHumans {
    Human manHuman;
    manHuman.name = @"Ivan";
    manHuman.age = 25;
    manHuman.gender = GanderMan;
    
    Human womanHuman;
    womanHuman.name = @"Olga";
    womanHuman.age = 35;
    womanHuman.gender = GanderFemale;
    
    [self printHuman:manHuman];
    [self printHuman:womanHuman];
}

- (void)printHuman: (Human)human {
    NSLog(@"Name: %@", human.name);
    NSLog(@"Age: %li", (long)human.age);
    
    switch (human.gender) {
        case GanderFemale:
            NSLog(@"Gander: female");
            break;
        case GanderMan:
            NSLog(@"Gander: man");
            break;
    }
}

@end
