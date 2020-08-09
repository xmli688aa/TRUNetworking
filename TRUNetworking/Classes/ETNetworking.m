//
//  ETNetworking.m
//  FBSnapshotTestCase
//
//  Created by zhaowz on 2020/8/8.
//

#import "ETNetworking.h"
#import "ETCarViewController.h"
@implementation ETNetworking
+ (NSInteger )caculateNumWithA:(NSInteger )a andB:(NSInteger )b{
    return a + b;
}

+ (UIViewController *)CarVCWithUserInfo:(NSDictionary *)userInfoDic{
    
    NSBundle *bundle = [self getLibBundle];
    ETCarViewController *vc = [[ETCarViewController alloc] initWithNibName:@"ETCarViewController" bundle:bundle];
    vc.userInfoDic = userInfoDic;
    return vc;
}

+ (NSBundle *)getLibBundle{
    NSURL *associateBundleURL = [[NSBundle mainBundle] URLForResource:@"Frameworks" withExtension:nil];
    associateBundleURL = [associateBundleURL URLByAppendingPathComponent:@"TRUNetworking"];
    associateBundleURL = [associateBundleURL URLByAppendingPathExtension:@"framework"];
    NSBundle *bundle = [NSBundle bundleWithURL:associateBundleURL];
    return bundle;
}

@end
