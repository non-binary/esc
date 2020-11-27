//  Created by @non-binary on 2020-11-27.

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
