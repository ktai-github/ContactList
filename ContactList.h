//
//  ContactList.h
//  ContactList
//
//  Created by KevinT on 2018-02-13.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray * contactArray;

- (instancetype)initWithContactArray:(NSMutableArray *)contactArray;
-(void)addContact:(Contact *)newContact;


@end
