//  Created by @non-binary on 2020-11-27.

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
