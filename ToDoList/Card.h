//
//  Card.h
//  ToDoList
//
//  Created by admin on 15-1-9.
//  Copyright (c) 2015年 tak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property NSString *cardNo;
@property NSString *holder;
@property (readonly) NSData *creationDate;

@end
