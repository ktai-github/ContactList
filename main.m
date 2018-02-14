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
#import "ContactList.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
//    NSLog(@"What would you like to do next?\nnew - Create a new contact list\nlist - List all contacts\nquit - Exit Application");
//    Contact *person1 = [[Contact alloc] init];
//    person1.name = @"Joe Smith";
//    person1.email = @"joe@smith.com";
    
    NSMutableArray *contactArray = [[NSMutableArray alloc] init];
//    [contactArray addObject:person1];
//
//    Contact *person2 = [[Contact alloc] init];
//    person2.name = @"Ken Jones";
//    person2.email = @"ken@jones.com";
//    [contactArray addObject:person2];
    
    
    
    ContactList *contactList = [[ContactList alloc] initWithContactArray:contactArray];
    
    while (TRUE) {
      NSString *userInput = [InputCollector inputForPrompt:@"What would you like to do next?\nnew - Create a new contact list\nlist - List all contacts\nquit - Exit Application"];

      if ([userInput isEqualToString:@"new\n"]) {
        NSLog(@"New contact name?");
        Contact *person = [[Contact alloc] init];

        char userPersonName[255];
        fgets(userPersonName, 255, stdin);
        NSString *userPersonNameString = [NSString stringWithCString:userPersonName encoding:NSUTF8StringEncoding];
        person.name = userPersonNameString;
        
        NSLog(@"New contact email?");
        char userPersonEmail[255];
        fgets(userPersonEmail, 255, stdin);
        NSString *userPersonEmailString = [NSString stringWithCString:userPersonEmail encoding:NSUTF8StringEncoding];
        person.email = userPersonEmailString;
        
        [contactList addContact:person];

      } else if ([userInput isEqualToString:@"list\n"]) {
        NSLog(@"list entered");
        
//#:<%@> ()", contactList);
        
        
        
      } else {
      
        return 0;
      }
    }
    
  
  }
  return 0;
}

