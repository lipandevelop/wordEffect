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
    scanf("%c", inputChar);
    
    printf("%s\n", inputChar);
    
    printf("this is my sentence");
    
    int selection;
    printf("1.Make it Louder\n2.Lower Case\n3.Numberize\n4.Canadianize\n5.Respond\n6.De-Space-It\n>");
    scanf("%d", &selection);
    
    NSString *inputString = [NSString stringWithUTF8String:inputChar];
    
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
    }

    
    return 0;
}
