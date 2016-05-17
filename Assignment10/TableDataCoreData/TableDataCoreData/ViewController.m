//
//  ViewController.m
//  TableDataCoreData
//
//  Created by Quang Dai on 5/7/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "Account.h"
#import "Account+CoreDataProperties.h"
#import "CustomCell.h"
#import <CoreData/CoreData.h>

@interface ViewController () <UITableViewDelegate, UITableViewDataSource, NSFetchedResultsControllerDelegate>

@property NSMutableArray *listAccount;
@property NSFetchedResultsController *fetchedResultsController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self assignBarItems];
    
    
    [self initializeFetchedResultsController];
    
    [self reloadDataWillReloadTableView:YES];
    
    _btnEdit.hidden = YES;
    _btnDone.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)assignBarItems;
{
    UIBarButtonItem *barItem = [[UIBarButtonItem alloc]initWithTitle:@"Add" style:UIBarButtonItemStyleBordered target:self action:@selector(insertDataAccount)];
    self.navigationItem.rightBarButtonItems = @[self.editButtonItem, barItem];
}

- (void) insertDataAccount{
    NSEntityDescription *entityDescription = [NSEntityDescription entityForName:NSStringFromClass([Account class]) inManagedObjectContext:APPDELEGATE.managedObjectContext];
    Account *newAccount = [[Account alloc] initWithEntity:entityDescription insertIntoManagedObjectContext:APPDELEGATE.managedObjectContext];
    newAccount.name = _txtName.text;
    newAccount.country = @"Vietnam";
    
    NSError *error;
    if (![newAccount.managedObjectContext save:&error]) {
        NSLog(@"Error insertDataAccount");
    }
}

- (void) updateDataAccount {
    
}

- (void) initializeFetchedResultsController {
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Account"];
    NSSortDescriptor *sort = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
    request.sortDescriptors = @[sort];
    
    //Retrieve the main queue NSManagedObjectContext
    NSManagedObjectContext *moc = APPDELEGATE.managedObjectContext;
    
    [self setFetchedResultsController:[[NSFetchedResultsController alloc] initWithFetchRequest:request managedObjectContext:moc sectionNameKeyPath:nil cacheName:nil]];
    
    [[self fetchedResultsController] setDelegate:self];
    
    NSError *error = nil;
    if (![[self fetchedResultsController] performFetch:&error]) {
        NSLog(@"Error initializeFetchedResultsController");
    }
}

- (void)reloadDataWillReloadTableView:(BOOL)willReloadTable;
{
    //get fetched objects from context
    _listAccount = [[NSMutableArray alloc]initWithArray:[self fetchedResultsController].fetchedObjects];
    if (willReloadTable) {
        //reload tableview
        [_tblDataAccount reloadData];
    }
}

#pragma mark - Setup edit state
- (void) setEditing:(BOOL)editing animated:(BOOL)animated{
    [super setEditing:editing animated:animated];
    [_tblDataAccount setEditing:editing animated:animated];
}

#pragma mark - Setup table view
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_listAccount count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell1"];
    Account *account = [_listAccount objectAtIndex:indexPath.row];
    if (cell == nil){
        cell = [[CustomCell alloc] initCustomCell];
    }
    cell.lblName.text = account.name;
    cell.lblCountry.text = account.country;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
        _btnEdit.hidden = NO;
    _btnAdd.hidden = YES;
    _btnDone.hidden = YES;
    
    CustomCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSString *value = cell.lblName.text;
    _txtName.text = value;
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

}

#pragma mark - Setup editing
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (!tableView.isEditing) {
        return NO;
    }
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        Account *accountToEdit = [_listAccount objectAtIndex:indexPath.row];
        [accountToEdit.managedObjectContext deleteObject:accountToEdit];
    }
}

#pragma mark - NSFetchedResultsControllerDelegate
- (void)controllerWillChangeContent:(NSFetchedResultsController *)controller
{
    [_tblDataAccount beginUpdates];
}

- (void)controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type newIndexPath:(NSIndexPath *)newIndexPath
{
    switch(type) {
        case NSFetchedResultsChangeInsert:
        {
            NSLog(@"NSFetchedResultsChangeInsert");
            //have to reload list because now list has more data then previously
            [self reloadDataWillReloadTableView:NO];
            NSInteger realIndex = [_listAccount indexOfObject:anObject];
            if (realIndex != NSNotFound) {
                NSIndexPath *realIndexPath = [NSIndexPath indexPathForRow:realIndex inSection:0];
                [_tblDataAccount insertRowsAtIndexPaths:@[realIndexPath] withRowAnimation:UITableViewRowAnimationLeft];
            }
        }
            break;
        case NSFetchedResultsChangeDelete:
        {
            NSLog(@"NSFetchedResultsChangeDelete");
            NSInteger realIndex = [_listAccount indexOfObject:anObject];
            if (realIndex != NSNotFound) {
                NSIndexPath *realIndexPath = [NSIndexPath indexPathForRow:realIndex inSection:0];
                
                [_tblDataAccount deleteRowsAtIndexPaths:@[realIndexPath] withRowAnimation:UITableViewRowAnimationRight];
            }
        }
            break;
        case NSFetchedResultsChangeUpdate:
        {
            NSLog(@"NSFetchedResultsChangeUpdate");
            NSInteger realIndex = [_listAccount indexOfObject:anObject];
            if (realIndex != NSNotFound) {
                NSIndexPath *realIndexPath = [NSIndexPath indexPathForRow:realIndex inSection:0];
                [_tblDataAccount reloadRowsAtIndexPaths:@[realIndexPath] withRowAnimation:UITableViewRowAnimationFade];
            }
            
        }
            break;
        case NSFetchedResultsChangeMove:
        {
            NSLog(@"NSFetchedResultsChangeMove");
            
        }
            break;
    }
}

- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller
{
    //get fetched objects from context
    [self reloadDataWillReloadTableView:NO];
    
    [_tblDataAccount endUpdates];
    
}

- (IBAction)btnAddClicked:(id)sender {
    [self insertDataAccount];
    _txtName.text = nil;
    
}

- (IBAction)btnEditClicked:(id)sender {
    _btnAdd.hidden = YES;
    _btnEdit.hidden = YES;
    _btnDone.hidden = NO;
    [_tblDataAccount setEditing:YES animated:YES];
   

}
- (IBAction)btnDoneClicked:(id)sender {
    _btnAdd.hidden = NO;
    _btnEdit.hidden = YES;
    _btnDone.hidden = YES;
    [_tblDataAccount setEditing:NO animated:YES];
}
@end
