//
//  AppDelegate.h
//  SportsApp
//
//  Created by meiyalagan ramadurai on 2/12/16.
//
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;



//@property (strong, nonatomic)  UIViewController *viewObj;
//@property (strong, nonatomic) UINavigationController *navObj;
@end

