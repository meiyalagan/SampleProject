//
//  OrganizerViewController.h
//  SportsApp
//
//  Created by administrator on 2/15/16.
//
//

#import <UIKit/UIKit.h>

@interface OrganizerViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *personDetailsContainerView;
@property (weak, nonatomic) IBOutlet UILabel *teamNameStatText;
@property (weak, nonatomic) IBOutlet UITextField *teamNameTextField;
@property (weak, nonatomic) IBOutlet UILabel *selectGameformateStatText;
@property (weak, nonatomic) IBOutlet UIButton *twentyOverBtn;
@property (weak, nonatomic) IBOutlet UIButton *thertyOverBtn;
@property (weak, nonatomic) IBOutlet UIButton *fiftyOverBtn;
@property (weak, nonatomic) IBOutlet UILabel *selectDateStatText;
@property (weak, nonatomic) IBOutlet UIButton *selectDateLeftbtnAction;
@property (weak, nonatomic) IBOutlet UIButton *selectDateRightBtnAction;
@property (weak, nonatomic) IBOutlet UILabel *selectDateLbl;
@property (weak, nonatomic) IBOutlet UILabel *preferredTimeSlotStatText;
@property (weak, nonatomic) IBOutlet UIButton *timeSlotLeftBtnAction;
@property (weak, nonatomic) IBOutlet UIButton *timeSlotRightBtnAction;
@property (weak, nonatomic) IBOutlet UILabel *timeSlotLbl;
@property (weak, nonatomic) IBOutlet UIButton *checkBoxBtn;
@property (weak, nonatomic) IBOutlet UILabel *opponentStatText;
@property (weak, nonatomic) IBOutlet UILabel *opponentTeamNameStatText;
@property (weak, nonatomic) IBOutlet UITextField *opponentTeamNameTextField;
@property (weak, nonatomic) IBOutlet UIImageView *userImg;
@property (weak, nonatomic) IBOutlet UILabel *nameLbl;
@property (weak, nonatomic) IBOutlet UIButton *tickImgBtn;
@property (weak, nonatomic) IBOutlet UILabel *nameSubLbl;
@property (weak, nonatomic) IBOutlet UILabel *ratingTextlbl;
@property (weak, nonatomic) IBOutlet UILabel *ratingStaticTextlbl;
@property (weak, nonatomic) IBOutlet UIView *userDetailView;
@property (weak, nonatomic) IBOutlet UIButton *navigateBtn;
@property (weak, nonatomic) IBOutlet UIButton *videoBtn;
@property (weak, nonatomic) IBOutlet UIButton *facilitiesBtn;
@property (weak, nonatomic) IBOutlet UIButton *photosImgBtn;

@end
