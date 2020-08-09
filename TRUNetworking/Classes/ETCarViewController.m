//
//  ETCarViewController.m
//  FBSnapshotTestCase
//
//  Created by zhaowz on 2020/8/9.
//

#import "ETCarViewController.h"

@interface ETCarViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ETCarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //    self.view.backgroundColor = [UIColor whiteColor];
    NSLog(@"进入CarVC");
    if (self.userInfoDic) {
        NSString *name = self.userInfoDic[@"name"];
        self.nameLabel.text = name;
    }
    NSURL *associateBundleURL = [[NSBundle mainBundle] URLForResource:@"Frameworks" withExtension:nil];
    associateBundleURL = [associateBundleURL URLByAppendingPathComponent:@"TRUNetworking"];
    associateBundleURL = [associateBundleURL URLByAppendingPathExtension:@"framework"];
    NSBundle *bundle = [NSBundle bundleWithURL:associateBundleURL];
//    UIImage *image = [UIImage imageNamed:@"apple.png"];
//    self.imageView.image = image;
    
    self.imageView.image  = [UIImage imageNamed:@"apple" inBundle:bundle compatibleWithTraitCollection:nil];


    
}





@end
