//  Created by @non-binary on 2020-11-27.

#import "Patient.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name gender: (NSString *)gender age: (int)age hasHealthCard: (BOOL)card symptoms: (NSArray *)symptoms; {
    self.name = name;
    self.gender = gender;
    self.age = age;
    self.hasHealthCard = card;
    self.symptoms = symptoms;

    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Name: %@, Gender: %@, Age: %i", self.name, self.gender, self.age];
}

@end
