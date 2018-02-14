//
//  ContactList.m
//  ContactList
//
//  Created by KevinT on 2018-02-13.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

- (instancetype)initWithContactArray:(NSMutableArray *)contactArray
{
  self = [super init];
  if (self) {
    _contactArray = contactArray;
  }
  return self;
}

-(void)addContact:(Contact *)newContact {
  [self.contactArray addObject:newContact];
  Contact *person = [[Contact alloc] init];
  person = _contactArray[0];
//  NSLog(@"contact: %@", person.name);
  
}

@end
