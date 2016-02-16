//
//  GViewController.h
//  SportsApp
//
//  Created by sarathkumar s on 16/02/16.
//
//

#import <UIKit/UIKit.h>
@protocol SegueDelegate <NSObject>
@required
-(void)test:(NSString*)str;
@end
@interface GViewController : UIViewController
@property (nonatomic,assign) id<SegueDelegate> delegate;

@end
