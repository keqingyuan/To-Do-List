//
//  ToDoItem.m
//  ToDoList
//
//  Created by admin on 15-1-8.
//  Copyright (c) 2015年 tak. All rights reserved.
//

#import "ToDoItem.h"

@interface ToDoItem()
@property NSDate *completionDate;
@end

@implementation ToDoItem

- (void)markAsCompleted:(BOOL)isComplete {
    self.completed = isComplete;
    [self setCompletionDate];
}
- (void)setCompletionDate {
    if (self.completed) {
        self.completionDate = [NSDate date];
    } else {
        self.completionDate = nil;
    }
}

@end
