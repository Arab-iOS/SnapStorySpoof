#import <UIKit/UIKit.h>
#import <UIKit/UIControl.h>
#import <Cephei/HBPreferences.h>


%group Views

HBPreferences *ChKey = [[HBPreferences alloc] initWithIdentifier:@"snapspoof"];

%hook Story
-(unsigned int) totalViewCount {
    return [[ChKey objectForKey:@"SetViews"] intValue];
    %orig;
} 
%end
%hook Story
-(unsigned int) viewedCountFriend {
    return [[ChKey objectForKey:@"SetViews"] intValue];
} 
%end
%hook Story
-(unsigned int) viewedCountOther {
    return [[ChKey objectForKey:@"SetViews"] intValue];
} 
%end
%end

%ctor {
    HBPreferences *KeyEn = [[HBPreferences alloc] initWithIdentifier:@"snapspoof"];
   bool Enable = [([KeyEn objectForKey:@"SwViews"] ?: @(NO)) boolValue];


if (Enable) {
   %init(Views);
  
}
}




%group Screen

HBPreferences *ChKey2 = [[HBPreferences alloc] initWithIdentifier:@"snapspoof"];

%hook Story
-(unsigned int) totalScreenshotCount {
   return [[ChKey2 objectForKey:@"SetScreen"] intValue];
    %orig;
} 
%end
%hook Story
-(unsigned int) screenshotCountFriend {
    return [[ChKey2 objectForKey:@"SetScreen"] intValue];
} 
%end
%hook Story
-(unsigned int) screenshotCountOther {
    return [[ChKey objectForKey:@"SetScreen"] intValue];
} 
%end
%end

%ctor {
    HBPreferences *KeyEn = [[HBPreferences alloc] initWithIdentifier:@"snapspoof"];
   bool Enable = [([KeyEn objectForKey:@"SwScreenShot"] ?: @(NO)) boolValue];


if (Enable) {
   %init(Screen);
  
}
}
