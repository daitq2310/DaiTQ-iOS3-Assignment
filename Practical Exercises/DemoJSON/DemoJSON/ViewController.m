//
//  ViewController.m
//  DemoJSON
//
//  Created by Quang Dai on 4/9/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *json = @"{\"title\":\"example.com\",\"link\":\"http://www.example.com/\",\"description\":\"Awesome news about junk\",\"items\":[{\"title\":\"An article\",\"link\":\"http://www.example.com/an-article\",\"descrition\":\"Some sample text here\",\"pubDate\":\"2008-10-27 11:06 EST\",\"author\":\"example author\"},{\"title\":\"Second\",\"link\":\"http://www.example.com/Seond\",\"descrition\":\"Some sample text here\",\"pubDate\":\"2008-10-25 23:20 EST\",\"author\":\"author mcauthor\"},{\"title\":\"third article\",\"link\":\"http://www.example.com/third-article\",\"descrition\":\"Some sample text here\",\"pubDate\":\"2008-10-25 23:18 EST\",\"author\":\"some other author\"}]}";
    
    //NSLog(@"%@",json);
    
    NSError *jsonError;
    NSData *objectData = [json dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:objectData
                                                                   options:NSJSONReadingMutableContainers
                                                                     error:&jsonError];
    //NSLog(@"%@", jsonDictionary);
    //    NSLog(@"%@", jsonDictionary[@"title"]);
    //    NSLog(@"%@", jsonDictionary[@"link"]);
    //    NSLog(@"%@", jsonDictionary[@"description"]);
    //    for (NSDictionary *json in jsonDictionary[@"items"]) {
    //        NSLog(@"%@", json[@"title"]);
    //        NSLog(@"%@", json[@"link"]);
    //        NSLog(@"%@", json[@"descrition"]);
    //        NSLog(@"%@", json[@"pubDate"]);
    //        NSLog(@"%@", json[@"author"]);
    //    }
    
    NSMutableDictionary *jsonMutableDictionary = [jsonDictionary mutableCopy];
    //    NSLog(@"%@", jsonDictionary);
    //    NSLog(@"%@", jsonMutableDictionary);
    for (NSDictionary *json in jsonMutableDictionary[@"items"]) {
        NSMutableArray *jsonMutableArray = [NSJSONSerialization JSONObjectWithData:@[json[@"title"], json[@"link"], json[@"descrition"], json[@"pubDate"], json[@"author"]] options:NSJSONReadingMutableContainers error:&jsonError];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
