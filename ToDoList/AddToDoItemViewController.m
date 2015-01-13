//
//  AddToDoItemViewController.m
//  ToDoList
//
//  Created by admin on 15-1-8.
//  Copyright (c) 2015年 tak. All rights reserved.
//

#import "AddToDoItemViewController.h"
#import "Card.h"
#import "TransactionInfo.h"

@interface AddToDoItemViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textFiled;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;
@property (weak, nonatomic) IBOutlet UILabel *yve;
@property (weak, nonatomic) IBOutlet UILabel *account;
@property (weak, nonatomic) IBOutlet UILabel *cart_no;
@property (weak, nonatomic) IBOutlet UITableView *detail_info;

- (IBAction)payment:(id)sender;


@end

@implementation AddToDoItemViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.overView = [[NSMutableArray alloc] init];
    [self loadInitialData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (sender != self.doneButton) return;
    if(self.textFiled.text.length > 0)
    {
        self.toDoItem = [[ToDoItem alloc] init];
        self.toDoItem.itemName = self.textFiled.text;
        self.toDoItem.completed = NO;
    }
}

- (void) loadInitialData
{
    Card *card = [[Card alloc] init];
    card.cardNo = @"123456789";
    card.holder = @"takakiyo";
    card.money = 400.5;
    TransactionInfo *item1 = [[TransactionInfo alloc] init];
    item1.incrementNo = @"000001";
    item1.cardNo = card.cardNo;
    item1.holder = card.holder;
    item1.money = 30.05;
    [self.overView addObject:item1];
    TransactionInfo *item2 = [[TransactionInfo alloc] init];
    item2.incrementNo = @"000002";
    item2.cardNo = card.cardNo;
    item2.holder = card.holder;
    item2.money = 30.05;
    [self.overView addObject:item2];
    
    self.account.text = card.holder;
    self.cart_no.text = card.cardNo;
    self.yve.text = [NSString stringWithFormat:@"%f",card.money];
    
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.overView count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"InfoPrototypeCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    TransactionInfo *trans = [self.overView objectAtIndex:indexPath.row];
    cell.textLabel.text = trans.incrementNo;
    return cell;
}

#pragma mark - Action
- (IBAction)payment:(id)sender
{
    NSLog(@"....");
    double money = 20;
    self.yve.text = [NSString stringWithFormat:@"%f", money];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
@end
