//  Created by @non-binary on 2020-11-27.

#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *gender;
@property int age;
@property BOOL hasHealthCard;
@property (nonatomic) NSArray *symptoms;

- (instancetype)initWithName:(NSString *)name gender: (NSString *)gender age: (int)age hasHealthCard: (BOOL)card symptoms: (NSArray *)symptoms;

@end
