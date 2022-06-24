//
//  TweetCell.m
//  twitter
//
//  Created by isaacvarela on 6/23/22.
//  Copyright © 2022 Emerson Malca. All rights reserved.
//

#import "TweetCell.h"
#import "UIImageView+AFNetworking.h"


@implementation TweetCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setTweet:(Tweet *)tweet {
// Since we're replacing the default setter, we have to set the underlying private storage _movie ourselves.
// _movie was an automatically declared variable with the @propery declaration.
// You need to do this any time you create a custom setter.

    _tweet = tweet;

    self.userNameLabel.text = self.tweet.user.name;
    self.userScreenNameLabel.text = self.tweet.user.screenName;
    self.dateCreatedLabel.text = self.tweet.createdAtString;
    self.textMessageLabel.text = self.tweet.text;
    self.retweetCountLabel.text = [NSString stringWithFormat:@"%d", self.tweet.retweetCount];
    self.favoriteCountLabel.text = [NSString stringWithFormat:@"%d", self.tweet.favoriteCount];
    [self.retweetButton setTitle:[NSString stringWithFormat:@"%d", self.tweet.retweetCount] forState:UIControlStateNormal];
    NSString *URLString = tweet.user.profilePicture;
    NSURL *url = [NSURL URLWithString:URLString];
    NSData *urlData = [NSData dataWithContentsOfURL:url];
    
    self.profileImageView.image = nil;
    if (self.tweet.user.profilePicture != nil) {
       [self.profileImageView setImageWithURL:url];
    }
}

@end
