//
//  main.m
//  LHL Jan11 Assignment WordEffect
//
//  Created by Li Pan on 2016-01-11.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    char inputChar[255];
    
    
    printf("Your Sentence\n>");
//  sscanf("%s\n", inputChar);
    fgets(inputChar, 225, stdin);
    
    //printf("%s\n", inputChar);
    
    int selection;
    printf("How would you like to modify:\n1.Make it Louder\n2.Lower Case\n3.Numberize\n4.Canadianize\n5.Respond\n6.De-Space-It\n%s\n>", inputChar);
    
    scanf("%d", &selection);
    printf("%d\n", selection);
    NSString *inputString = [NSString stringWithUTF8String:inputChar];
    
    printf("%d", selection);
    NSLog(@"%@", inputString);
    
    while (selection >6) {
    
        if (selection == 1) {
            inputString = [inputString uppercaseString];
            NSLog(@"%@", inputString);
        
        }
        else if (selection == 2) {
            inputString = [inputString lowercaseString];
            NSLog(@"%@", inputString);
        }
        else if (selection == 3) {
            int value = [inputString intValue];
            NSLog(@"%d", value);
        }
        else if (selection == 4) {
            inputString = [inputString stringByAppendingString:@", eh?"];
            NSLog(@"%@", inputString);
        }
        else if (selection == 5) {
            
        }
        else if (selection == 6) {
            inputString = [inputString stringByReplacingOccurrencesOfString:@"1" withString:@"-"];
            NSLog(@"%@", inputString);
        }

    }
    return 0;
}
