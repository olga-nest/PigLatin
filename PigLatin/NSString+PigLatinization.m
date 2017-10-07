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
         
            //Get the location of the first vowel
            NSUInteger firstConsonant = range.location;
            //Save the range first letter >> first vowel
            NSRange consonantsToMove = NSMakeRange(0, firstConsonant);
            //Create a string from word: first letter >> first vowel
            NSString *consonants = [word substringWithRange:consonantsToMove];
            
            //Get the range: first vowel to the end of the word
            NSUInteger mainPart = (range.length - firstConsonant);
            //Create a range first vowel >> last letter
            NSRange newFirstPartOfAWord = NSMakeRange(mainPart, range.length);
            //Create a string from word: first vowel >> last letter
            NSString *newFirstPartOfAWordStr = [word substringWithRange:newFirstPartOfAWord];
            
            NSString *translatedWord = [NSString stringWithFormat:@"%@%@ay", newFirstPartOfAWordStr, consonants];
            [translatedStringArr addObject:translatedWord];
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
