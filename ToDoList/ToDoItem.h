//
//  ToDoItem.h
//  ToDoList
//
//  Created by admin on 15-1-8.
//  Copyright (c) 2015年 tak. All rights reserved.
//

//java bean
#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSData *creationDate;

- (void)markAsCompleted:(BOOL)isComplete;

@end
