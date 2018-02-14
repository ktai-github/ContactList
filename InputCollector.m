//
//  InputCollector.m
//  ContactList
//
//  Created by KevinT on 2018-02-13.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

+ (NSString *)inputForPrompt:(NSString *)promptString {
  char userInput[255];
  NSLog(promptString);
  fgets(userInput, 255, stdin);
  NSString *userInputString = [NSString stringWithCString:userInput encoding:NSUTF8StringEncoding];
  return userInputString;
}
@end
