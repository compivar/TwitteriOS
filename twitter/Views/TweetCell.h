//
//  TweetCell.h
//  twitter
//
//  Created by isaacvarela on 6/23/22.
//  Copyright © 2022 Emerson Malca. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tweet.h"

NS_ASSUME_NONNULL_BEGIN

@interface TweetCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *profileImageView;
@property (strong, nonatomic) IBOutlet UILabel *userNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *userScreenNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *dateCreatedLabel;
@property (strong, nonatomic) IBOutlet UILabel *textMessageLabel;
@property (strong, nonatomic) IBOutlet UILabel *retweetCountLabel;
@property (strong, nonatomic) IBOutlet UILabel *favoriteCountLabel;
@property (strong, nonatomic) IBOutlet UIButton *retweetButton;
 @property (strong, nonatomic) IBOutlet UIButton *favoriteButton;



@property (strong, nonatomic) Tweet *tweet;

@end

NS_ASSUME_NONNULL_END
