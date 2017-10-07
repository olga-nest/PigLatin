#import <Foundation/Foundation.h>
#import "NSString+PigLatinization.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

    NSString *translateMe = @"Using the static storage class designator to limit the scope of na";
        
    NSLog(@"%@", [translateMe stringByPigLatinization]);
        
    }
    return 0;
}
