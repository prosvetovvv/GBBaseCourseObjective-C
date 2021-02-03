//
//  ViewController.m
//  GBBaseCourseObjective-C
//
//  Created by Vitaly Prosvetov on 31.01.2021.
//

#import "ViewController.h"

enum Gander {
    GanderFemale,
    GanderMan
};
typedef enum Gander Gander;

struct Human {
    NSString *name;
    NSInteger age;
    Gander gender;
};
typedef struct Human Human;

enum Operations {
    OperationSum,
    OperationSubtracting,
    OperationMultiplication,
    OperationDevision
};
typedef enum Operations Operations;


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Ex1
    [self createAndPrintUserList];
    
    // Ex2
    CGFloat result = [self calculate:OperationDevision with: 5 and: 1];
    NSLog(@"%.2f", result);
    
    // Ex3
    [self createAndPrintHumans];
 
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
