//
//  main.m
//  ContactList
//
//  Created by KevinT on 2018-02-13.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
//    NSLog(@"What would you like to do next?\nnew - Create a new contact list\nlist - List all contacts\nquit - Exit Application");
    
    while (TRUE) {
      NSString *userInput = [InputCollector inputForPrompt:@"What would you like to do next?\nnew - Create a new contact list\nlist - List all contacts\nquit - Exit Application"];

      if ([userInput isEqualToString:@"new\n"]) {
        NSLog(@"new entered");
        Contact *person = [[Contact alloc] init];
        
        char userPersonName[255];
        fgets(userPersonName, 255, stdin);
        NSString *userPersonNameString = [NSString stringWithCString:userPersonName encoding:NSUTF8StringEncoding];
        person.name = userPersonNameString;
        
        char userPersonEmail[255];
        fgets(userPersonEmail, 255, stdin);
        NSString *userPersonEmailString = [NSString stringWithCString:userPersonEmail encoding:NSUTF8StringEncoding];
        person.email = userPersonEmailString;

      } else if ([userInput isEqualToString:@"list\n"]) {
        NSLog(@"list entered");
        
      } else {
      
        return 0;
      }
    }
    
  
  }
  return 0;
}

