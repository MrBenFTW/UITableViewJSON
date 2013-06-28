//
//  DetailViewController.m
//  UITableViewJSON
//
//  Created by El Hassasna Fethi on 6/8/13.
//  Copyright (c) 2013 Fethi El Hassasna. All rights reserved.
//

#import "DetailViewController.h"
#import "UIImageView+AFNetworking.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadFromNinja:(Ninja *)ninja {
    self.title = [ninja name];
    [self.photo setImageWithURL:[NSURL URLWithString:ninja.photo]
                 placeholderImage:[UIImage imageNamed:@"300-300.jpg"]];
    self.desc.text = ninja.desc;
}

- (void)viewDidUnload {
    [self setPhoto:nil];
    [self setDesc:nil];
    [super viewDidUnload];
}
@end
