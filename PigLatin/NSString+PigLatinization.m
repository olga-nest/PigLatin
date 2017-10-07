#import "NSString+PigLatinization.h"

@implementation NSString (PigLatinization)

-(NSString *)stringByPigLatinization {
    
    NSString *translateMe = self;
    NSArray *wordsArr = [translateMe componentsSeparatedByString:@" "];
    
    NSArray *vowels = [NSArray arrayWithObjects:@"a", @"e", @"i", @"o", @"u", nil];
    
    
    
    return 0;
}

@end
