# Doctor and Patient

This assignment will teach you a more advanced view of the basics of Objective-C syntax. Do not copy paste code, write it out yourself.

## Getting Started

1. Install Xcode from the Mac App Store.
2. Create a new Xcode project using the macOS Command Line Tool template and select Objective-C as the language.
3. Create a GitHub repository for this project.
4. Clone and commit the empty project to your repository.
5. Create an Objective-C class called Doctor.
6. Create an Objective-C class called Patient.

## Define Doctor Header

```objective-c
#import <Foundation/Foundation.h>
@class Patient;

@interface Doctor : NSObject

@property (nonatomic) NSString *specialization;
@property (nonatomic) NSString *name;
@property (nonatomic) NSMutableArray *acceptedPatients;
@property (nonatomic) NSDictionary *prescriptions;

- (instancetype)initWithSpecialization:(NSString *)specialization name: (NSString *)name;
- (BOOL)willAcceptPatient:(Patient *)patient;
- (void)requestMedication:(Patient *)patient;

@end
```

Please read [Attributes of @property: nonatomic, retain, strong, weak](https://medium.com/bitmountn/attributes-of-property-nonatomic-retain-strong-weak-etc-b7ea93a0f772) and https://stackoverflow.com/a/17571453.

## Define Patient Header

```objective-c
#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *gender;
@property int age;
@property BOOL hasHealthCard;
@property (nonatomic) NSArray *symptoms;

- (instancetype)initWithName:(NSString *)name gender: (NSString *)gender age: (int)age hasHealthCard: (BOOL)card symptoms: (NSArray *)symptoms;

@end
```

## Implement Doctor

```objective-c
#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (instancetype)initWithSpecialization:(NSString *)specialization name: (NSString *)name {
    self.prescriptions = @{@"asthma": @"salbutamol", @"peanut allergy": @"no peanuts"};
    self.acceptedPatients = [[NSMutableArray alloc] init];
    self.specialization = specialization;
    self.name = name;

    return self;
}

- (BOOL)willAcceptPatient:(Patient *)patient {
    if (patient.hasHealthCard) {
        [self.acceptedPatients addObject:patient];
        NSLog(@"%@", self.acceptedPatients);

        return YES;
    }

    NSLog(@"Sorry. We won't help you. Please leave.");
    
    return NO;
}

- (void)requestMedication:(Patient *)patient {
    if (![self.acceptedPatients containsObject:patient]) {
        return;
    }

    if (patient.symptoms.count == 0) {
        return;
    }

    for (NSString *symtom in patient.symptoms) {
        NSString *prescription = [self.prescriptions objectForKey:symtom];
        if (prescription) {
            NSLog(@"%@ has prescribed %@ a bunch of %@.", self.name, patient.name, prescription);
        }
    }
}

@end
```

## Implement Patient

```objective-c
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
```

## Let's put everything together

```objective-c
#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor *doctor = [[Doctor alloc] initWithSpecialization:@"Allergist" name:@"Dr. David B. Dix"];
        Patient *patient = [[Patient alloc] initWithName:@"Luna" gender:@"non-binary" age:22 hasHealthCard:YES symptoms:@[@"asthma"]];
        [doctor willAcceptPatient:patient];
        [doctor requestMedication:patient];
    }
    
    return 0;
}
```

## Let's run the project

A box on the bottom of the Xcode window should show up and you should see:

```
2020-11-27 08:39:37.188650-0500 Doctor and Patient[11150:343126] (
    "Name: Luna, Gender: non-binary, Age: 22"
)
2020-11-27 08:39:37.188955-0500 Doctor and Patient[11150:343126] Dr. David B. Dix has prescribed Luna a bunch of salbutamol.
```

## Commit your Project

Commit this code to your GitHub repository.
