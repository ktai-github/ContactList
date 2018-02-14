//
//  main.m
//  ContactList
//
//  Created by KevinT on 2018-02-13.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
//    NSLog(@"What would you like to do next?\nnew - Create a new contact list\nlist - List all contacts\nquit - Exit Application");
    
    while (TRUE) {
      NSString *userInput = [InputCollector inputForPrompt:@"What would you like to do next?\nnew - Create a new contact list\nlist - List all contacts\nquit - Exit Application"];

      if ([userInput isEqualToString:@"new\n"]) {
        NSLog(@"new entered");

      } else if ([userInput isEqualToString:@"list\n"]) {
        NSLog(@"list entered");
        
      } else {
      
        return 0;
      }
    }
    
  
  }
  return 0;
}

