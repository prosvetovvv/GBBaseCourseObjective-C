//
//  Student.m
//  GBBaseCourseObjective-C
//
//  Created by Vitaly Prosvetov on 07.02.2021.
//

#import "Student.h"


@implementation Student

- (nullable instancetype)initWithCoder:(nonnull NSCoder *)coder {
    self = [super init];
    
    if (self) {
        self.firstName = [coder decodeObjectForKey: @"firstName"];
        self.lastName = [coder decodeObjectForKey: @"lastName"];
        _age = [coder decodeIntForKey: @"age"];
    }
    return self;
}

- (void)encodeWithCoder:(nonnull NSCoder *)coder {
    [coder encodeObject:self.firstName forKey:@"firstName"];
    [coder encodeObject:self.lastName forKey:@"lastName"];
    [coder encodeInt:_age forKey:@"age"];
}

+ (BOOL)supportsSecureCoding {
    return YES;
}

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
    [super description];
    return [NSString
            stringWithFormat: @"\nFirst Name: %@\nLast Name: %@\nFull Name: %@\nAge: %li",
            self.firstName, self.lastName, self.fullName, (long)self.age];
}

- (void)increaseAgeBy: (NSInteger)years {
    _age = _age + years;
}

@end
