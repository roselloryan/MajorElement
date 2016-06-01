//
//  main.m
//  MajorElement


#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *line = @"1,2,2,1,3,4,5,6,7,8,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1";
        
        NSArray *numbersArray = [line componentsSeparatedByString:@","];
        
        NSMutableArray *numbersMutArray = [numbersArray mutableCopy];
        
        BOOL foundMajorElement = NO;
        
        while (numbersMutArray.count > 0) {
            NSString *numString = [numbersMutArray objectAtIndex:0];
            
            NSInteger beforeCount = numbersMutArray.count;
            
            [numbersMutArray removeObject:numString];
            
            NSInteger afterCount = numbersMutArray.count;
//            // because numString is holding one occurance
//            NSInteger occurances = 1;
//            
//            NSInteger i = 1;
//            for (i = 1; i < numbersMutArray.count; i++) {
//                
//                if ([numString isEqualToString:[numbersMutArray objectAtIndex:i]]) {
//                    occurances ++;
//                }
//            }
            
            if (beforeCount - afterCount > numbersArray.count / 2) {
                NSLog(@"%@", numString);
                foundMajorElement = YES;
//                 [numbersMutArray removeAllObjects];
                break;
            }
            else {
                [numbersMutArray removeObject:numString];
            }
        }
        
        if (!foundMajorElement || line.length == 0) {
            NSLog(@"None");
        }
        
        
    }
    return 0;
}
