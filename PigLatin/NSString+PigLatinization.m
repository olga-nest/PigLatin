#import "NSString+PigLatinization.h"

@implementation NSString (PigLatinization)

-(NSString *)stringByPigLatinization {
    
    NSString *translateMe = self;
    
    NSArray *wordsArr = [translateMe componentsSeparatedByString:@" "];
    NSMutableArray *translatedStringArr = [NSMutableArray new];
    
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"];
    
    for (NSString *word in wordsArr) {
        
        NSRange range = [word rangeOfCharacterFromSet:vowels];
        if (range.location == 0) {
            //TODO: find another way to separate words with " " when converting NSArray to NSString
            NSString *translatedWord = [NSString stringWithFormat:@"%@ay ", word];
            [translatedStringArr addObject:translatedWord];
        } else {
            NSLog(@"Ooops");
            
        }
    }
    
    NSMutableString *translatedString = [[NSMutableString alloc] init];
    for (NSObject * obj in translatedStringArr)
    {
        [translatedString appendString:[obj description]];
    }
    
    return translatedString;
}

@end
