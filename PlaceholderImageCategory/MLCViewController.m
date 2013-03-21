//
//  MLCViewController.m
//  PlaceholderImageCategory
//
//  Created by Roberto Osorio on 3/21/13.
//  Copyright (c) 2013 Roberto Osorio. All rights reserved.
//

#import "MLCViewController.h"
#import "UIImage+CreateThumbnail.h"

@interface MLCViewController ()

@end

@implementation MLCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImage *placeholder = [UIImage thumbnailWithColor:[UIColor blueColor] size:CGSizeMake(200, 200) font:[UIFont fontWithName:@"Helvetica Neue" size:15.0f] andTitle:@"This is some placeholder text."];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:placeholder];
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
