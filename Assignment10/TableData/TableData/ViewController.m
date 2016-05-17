//
//  ViewController.m
//  TableData
//
//  Created by Quang Dai on 5/4/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import <CoreData/CoreData.h>
#import "ListData+CoreDataProperties.h"
#import "ListData.h"
#import "ViewCell.h"

@interface ViewController () <NSFetchedResultsControllerDelegate>
@property(nonatomic, strong)    NSMutableArray *data;
@property (nonatomic, strong)   NSFetchedResultsController *fetchedResultsController;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self assignBarItems];
    [self initFetchedResultController];
    [self reloadDataWillReloadTableView:YES];
   
}

- (void)assignBarItems;
{
    UIBarButtonItem *barItem = [[UIBarButtonItem alloc]initWithTitle:@"Add" style:UIBarButtonItemStyleBordered target:self action:@selector(insertData)];
    
    //    self.navigationItem.rightBarButtonItem = barItem;
    self.navigationItem.rightBarButtonItems = @[self.editButtonItem, barItem];
    
    
}

- (void) insertData {
    NSEntityDescription *entityDescription = [NSEntityDescription entityForName:NSStringFromClass
                                              ([ListData class]) inManagedObjectContext:APPDELEGATE.managedObjectContext];
    ListData *newData = [[ListData alloc] initWithEntity:entityDescription insertIntoManagedObjectContext:APPDELEGATE.managedObjectContext];
    [newData setName:_txtData.text];
    [newData setAge:[NSNumber numberWithInt:2]];

    NSError *error;
    if (![newData.managedObjectContext save:&error]) {
        
    }
}

- (void) initFetchedResultController {
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"ListData"];
    NSSortDescriptor *sort = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
    request.sortDescriptors = @[sort];
    NSManagedObjectContext *context = APPDELEGATE.managedObjectContext;
    [self setFetchedResultsController:[[NSFetchedResultsController alloc] initWithFetchRequest:request managedObjectContext:context sectionNameKeyPath:nil cacheName:nil]];
    [self fetchedResultsController].delegate = self;
    NSError *error;
    if (![[self fetchedResultsController] performFetch:&error]) {
        [_tblData reloadData];
    }
}

- (void) reloadDataWillReloadTableView : (BOOL) willReloadTable {
    _data = [[NSMutableArray alloc] initWithArray:[self fetchedResultsController].fetchedObjects];
    if (willReloadTable){
        
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnAddClicked:(id)sender {
    [self insertData];
    
     NSLog(@"%d", [_data count]);
}

#pragma mark - TableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell1"];
    ListData *listData = [_data objectAtIndex:indexPath.row];
    if (cell == nil){
        cell = [[ViewCell alloc] initViewCell];
    }
    cell.lblName.text = listData.name;
    cell.lblAge.text = [NSString stringWithFormat:@"%d", listData.age];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

///editing state
- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
    [super setEditing:editing animated:animated];
    
    [_tblData setEditing:editing animated:animated];
    
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSLog(@"(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath");
    
}

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
        ListData *listDataEdit = [_data objectAtIndex:indexPath.row];
        [listDataEdit.managedObjectContext deleteObject:listDataEdit];
        
    }
    
}



#pragma mark - NSFetchedResultsControllerDelegate
- (void)controllerWillChangeContent:(NSFetchedResultsController *)controller
{
    [_tblData beginUpdates];
}

- (void)controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type newIndexPath:(NSIndexPath *)newIndexPath
{
    
    switch(type) {
        case NSFetchedResultsChangeInsert:
        {
            NSLog(@"NSFetchedResultsChangeInsert");
            
            //have to reload list because now list has more data then previously
            [self reloadDataWillReloadTableView:NO];
            
            NSInteger realIndex = [_data indexOfObject:anObject];
            
            if (realIndex != NSNotFound) {
                NSIndexPath *realIndexPath = [NSIndexPath indexPathForRow:realIndex inSection:0];
                
                [_tblData insertRowsAtIndexPaths:@[realIndexPath]
                                        withRowAnimation:UITableViewRowAnimationLeft];
                
            }
        }
            break;
        case NSFetchedResultsChangeDelete:
        {
            NSLog(@"NSFetchedResultsChangeDelete");
            NSInteger realIndex = [_data indexOfObject:anObject];
            if (realIndex != NSNotFound) {
                NSIndexPath *realIndexPath = [NSIndexPath indexPathForRow:realIndex inSection:0];
                
                [_tblData deleteRowsAtIndexPaths:@[realIndexPath]
                                          withRowAnimation:UITableViewRowAnimationRight];
                
                
            }
        }
            break;
        case NSFetchedResultsChangeUpdate:
        {
            NSLog(@"NSFetchedResultsChangeUpdate");
            NSInteger realIndex = [_data indexOfObject:anObject];
            if (realIndex != NSNotFound) {
                NSIndexPath *realIndexPath = [NSIndexPath indexPathForRow:realIndex inSection:0];
                
                [_tblData reloadRowsAtIndexPaths:@[realIndexPath]
                                          withRowAnimation:UITableViewRowAnimationFade];
                
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
    
    [_tblData endUpdates];
    
}



@end
