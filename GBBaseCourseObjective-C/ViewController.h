//
//  ViewController.h
//  GBBaseCourseObjective-C
//
//  Created by Vitaly Prosvetov on 31.01.2021.
//

#import <UIKit/UIKit.h>
#import "Student.h"

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

@interface ViewController : UIViewController


@end

