//
//  AddToDoItemViewController.h
//  ToDoList
//
//  Created by admin on 15-1-8.
//  Copyright (c) 2015年 tak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoItem.h"

@interface AddToDoItemViewController : UIViewController<NSURLConnectionDelegate>
{
    NSMutableData *_responseData;
}

@property ToDoItem *toDoItem;
@property NSMutableArray *overView;

@end
