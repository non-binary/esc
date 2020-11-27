//  Created by @non-binary on 2020-11-27.

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
