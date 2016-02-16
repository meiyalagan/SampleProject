//
//  DetailsCustomView.h
//  SportsApp
//
//  Created by administrator on 2/16/16.
//
//

#import <UIKit/UIKit.h>

@interface DetailsCustomView : UIView
@property (weak, nonatomic) IBOutlet UILabel *nameLbl;
@property (weak, nonatomic) IBOutlet UILabel *addressLbl;
@property (weak, nonatomic) IBOutlet UIImageView *tickImg1;
@property (weak, nonatomic) IBOutlet UIImageView *tickImg2;
@property (weak, nonatomic) IBOutlet UIImageView *tickImg3;
@property (weak, nonatomic) IBOutlet UILabel *tickTextlbl1;
@property (weak, nonatomic) IBOutlet UILabel *tickTextLbl2;
@property (weak, nonatomic) IBOutlet UILabel *tickTextLbl3;
@property (weak, nonatomic) IBOutlet UILabel *facilitiesLbl;
@property (weak, nonatomic) IBOutlet UIImageView *facilitiesImg1;
@property (weak, nonatomic) IBOutlet UIImageView *facilitiesImg2;
@property (weak, nonatomic) IBOutlet UIImageView *facilitiesImg3;
@property (weak, nonatomic) IBOutlet UILabel *selectDateLbl;
@property (weak, nonatomic) IBOutlet UILabel *dateTextLbl;
@property (strong, nonatomic) IBOutlet UIView *view;

@end
