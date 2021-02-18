//
//  Student.h
//  GBBaseCourseObjective-C
//
//  Created by Vitaly Prosvetov on 07.02.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject<NSCoding, NSSecureCoding>

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSString *fullName;
@property (nonatomic, readonly) NSInteger age;

- (instancetype)initStudentWithFirstName: (NSString *)firstName lastName: (NSString *)lastName age: (NSInteger)age;
- (void)increaseAgeBy: (NSInteger)years;
- (NSString *)description;

@end

NS_ASSUME_NONNULL_END
