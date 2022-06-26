//
//  ComposeViewController.m
//  twitter
//
//  Created by isaacvarela on 6/24/22.
//  Copyright © 2022 Emerson Malca. All rights reserved.
//

#import "ComposeViewController.h"
#import "APIManager.h"

@interface ComposeViewController ()
@property (strong, nonatomic) IBOutlet UITextView *tweetCompositionMessage;

@end

@implementation ComposeViewController

- (IBAction)didTapPost:(id)sender {
    [[APIManager shared] postStatusWithText: self.tweetCompositionMessage.text completion:^(Tweet * tweet, NSError * error) {
        if(error){
                NSLog(@"Error composing Tweet: %@", error.localizedDescription);
            }
            else{
                [self.delegate didTweet:tweet];
                NSLog(@"Compose Tweet Success!");
            }
    }];
    [self dismissViewControllerAnimated:true completion:nil];
}

- (IBAction)didTapClose {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

@end
