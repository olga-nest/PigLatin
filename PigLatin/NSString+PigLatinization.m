#import "NSString+PigLatinization.h"

@implementation NSString (PigLatinization)

-(NSString *)stringByPigLatinization {
    
    NSString *inputstring = self;
    NSString *translateMe = [inputstring lowercaseString];
    
    NSArray *wordsArr = [translateMe componentsSeparatedByString:@" "];
    NSMutableArray *translatedStringArr = [NSMutableArray new];
    
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    
    for (NSString *word in wordsArr) {
        
        NSRange range = [word rangeOfCharacterFromSet:vowels];
        if (range.location == 0) {
            NSString *translatedWord = [NSString stringWithFormat:@"%@ay", word];
            [translatedStringArr addObject:translatedWord];
            NSLog(@"translated str array count %lu", [translatedStringArr count]);
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
