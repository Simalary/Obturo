#import "PoAppInfoViewController.h"
#import "PoAppRootViewController.h"
#import <UIKit/UIKit.h>

#import "UIButton+BackgroundColor.h"
#import "UIColor+ColorExtensions.h"

@implementation PoAppInfoViewController {
}

- (void)loadView {
	[super loadView];

	//Statusbar
	UIApplication.sharedApplication.statusBarStyle = UIStatusBarStyleLightContent;
	UIApplication.sharedApplication.statusBarHidden = NO;

	//rootViewController properties
	self.title = @"Credits & Thanks";
	//UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"backgrounds/background-iPhone.png"]];

	UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:nil];
	backgroundImage.tag = 1989;

	if([[UIDevice currentDevice]userInterfaceIdiom]==UIUserInterfaceIdiomPhone) {
				switch ((int)[[UIScreen mainScreen] nativeBounds].size.height) {
						case 1136:
								printf("iPhone 5 or 5S or 5C");
								UIImageView *backgroundImage5 = (UIImageView *)[self.view viewWithTag:1989];
								backgroundImage5 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"backgrounds/background-iPhone.png"]];
								[self.view addSubview:backgroundImage5];
								[self.view sendSubviewToBack:backgroundImage5];
								[backgroundImage5 release];
								break;
						case 1334:
								printf("iPhone 6/6S/7/8");
								UIImageView *backgroundImage6 = (UIImageView *)[self.view viewWithTag:1989];
								backgroundImage6 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"backgrounds/background-iPhone.png"]];
								[self.view addSubview:backgroundImage6];
								[self.view sendSubviewToBack:backgroundImage6];
								[backgroundImage6 release];
								break;
						case 2208:
								printf("iPhone 6+/6S+/7+/8+");
								UIImageView *backgroundImage6P = (UIImageView *)[self.view viewWithTag:1989];
								backgroundImage6P = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"backgrounds/background-iPhone.png"]];
								[self.view addSubview:backgroundImage6P];
								[self.view sendSubviewToBack:backgroundImage6P];
								[backgroundImage6P release];
								break;
						case 2436:
								printf("iPhone X");
								UIImageView *backgroundImageX = (UIImageView *)[self.view viewWithTag:1989];
								backgroundImageX = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"backgrounds/background-iPhoneX.png"]];
								[self.view addSubview:backgroundImageX];
								[self.view sendSubviewToBack:backgroundImageX];
								[backgroundImageX release];
								break;
						default:
								printf("unknown");
								UIImageView *backgroundImageU = (UIImageView *)[self.view viewWithTag:1989];
								backgroundImageU = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"backgrounds/background-iPhone.png"]];
								[self.view addSubview:backgroundImageU];
								[self.view sendSubviewToBack:backgroundImageU];
								[backgroundImageU release];
								break;
				}
		}

	[self.navigationController setNavigationBarHidden:YES animated:NO];

	//UILabel (label_Title) properties
	UILabel *label_Title = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.origin.x + 20, self.view.frame.origin.y + 135, 200, 37)];
	[label_Title setBackgroundColor:[UIColor clearColor]];
	[label_Title setText:@"Credits"];
	[label_Title setTextColor:[UIColor whiteColor]];
	[label_Title setFont:[UIFont fontWithName:@".SFUIDisplay-Bold" size:31]];
	//label_Title.center = CGPointMake(self.view.frame.origin.x + 100, self.view.frame.size.height / 3 - 80);
	[label_Title sizeToFit];
	[label_Title setTextAlignment:NSTextAlignmentLeft];
	[[self view] addSubview:label_Title];
	[label_Title release];

	//UILabel (label_Description) properties
	UILabel *label_Description = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.origin.x + 20, self.view.frame.origin.y + 175, self.view.frame.size.width - 40, 50)];
	[label_Description setBackgroundColor:[UIColor clearColor]];
	[label_Description setText:@"Designed, built, and tested by the following individuals."];
	[label_Description setTextColor:[UIColor whiteColor]];
	[label_Description setFont:[UIFont fontWithName:@".SFUIText-Semibold" size:18]];
	//label_Description.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 3 - 18);
	label_Description.lineBreakMode = NSLineBreakByWordWrapping;
	label_Description.numberOfLines = 0;
	label_Description.tag = 10;
	[label_Description sizeToFit];
	[label_Description setTextAlignment:NSTextAlignmentLeft];
	[[self view] addSubview:label_Description];
	[label_Description release];

	//UILabel (label_People) properties
	UILabel *label_People = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.origin.x + 20, self.view.frame.origin.y + 250, self.view.frame.size.width - 40, 50)];
	[label_People setBackgroundColor:[UIColor clearColor]];
	[label_People setText:@"Design and programming by Simalary. \n\nAddiitonal programming by TheComputerWhisperer. \n\nBeta testing by 420 Admin, FADED, InvoxiPlayGames, Notex, Aziz, CMLN_Spider-Man, Craft3dM1nd, Dansco, FaZe Krish, jizzspunk, macs, Qteezy2015."];
	[label_People setTextColor:[UIColor whiteColor]];
	[label_People setFont:[UIFont fontWithName:@".SFUIText-Semibold" size:15]];
	//label_People.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 3 - 18);
	label_People.lineBreakMode = NSLineBreakByWordWrapping;
	label_People.numberOfLines = 0;
	label_People.tag = 10;
	[label_People sizeToFit];
	[label_People setTextAlignment:NSTextAlignmentLeft];
	[[self view] addSubview:label_People];
	[label_People release];

	//UIButton (button)Close
	UIButton *button_Close = [UIButton buttonWithType:UIButtonTypeSystem];
	[button_Close addTarget:self action:@selector(process_Close) forControlEvents:UIControlEventTouchUpInside];
	[button_Close setTitle:@"Close" forState:UIControlStateNormal];
	[button_Close setBackgroundColor:[UIColor whiteColor] forState:UIControlStateNormal];
	//[button_Close setBackgroundColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
	[button_Close setTitleColor:[UIColor aquaGreenColor] forState:UIControlStateNormal];
	button_Close.titleLabel.font = [UIFont fontWithName:@".SFUIText-Medium" size:17];
	button_Close.frame = CGRectMake(self.view.frame.origin.x + 20, self.view.frame.size.height - 80, self.view.frame.size.width - 35, 50);
	button_Close.layer.cornerRadius = 10;
	button_Close.layer.masksToBounds = YES;
	button_Close.tag = 1;
	//button_Close.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 3 + 115);
	//button_Close.frame = CGRectMake(0, 0, 250, 50);
	[[self view] addSubview:button_Close];
}

- (void)process_Close {
	[[UINavigationController alloc] initWithRootViewController:[[PoAppRootViewController alloc] init]];
	[self.presentingViewController dismissViewControllerAnimated:YES completion:Nil];
}

@end
