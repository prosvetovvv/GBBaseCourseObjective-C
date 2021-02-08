//
//  Student.m
//  GBBaseCourseObjective-C
//
//  Created by Vitaly Prosvetov on 07.02.2021.
//

#import "Student.h"


@implementation Student

@synthesize age = _age;

- (instancetype)initStudentWithFirstName: (NSString *)firstName lastName: (NSString *)lastName age: (NSInteger)age {
    self = [super init];
    
    if (self) {
        self.firstName = firstName;
        self.lastName = lastName;
        _age = age;
    }
    
    return self;
}

- (NSString *)fullName {
    return [NSString stringWithFormat: @"%@ %@", self.firstName, self.lastName];
}

- (NSString *)description {
    return [NSString
            stringWithFormat: @"\nFirst Name: %@\nLast Name: %@\nFull Name: %@\nAge: %li",
            self.firstName, self.lastName, self.fullName, (long)self.age];
}

- (void)increaseAgeBy: (NSInteger)years {
    _age = _age + years;
}

@end