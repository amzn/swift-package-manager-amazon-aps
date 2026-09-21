#import <DTBiOSSDK/DTBiOSSDK.h>

@interface APSSDKDistributionMarker : NSObject
@end

@implementation APSSDKDistributionMarker
+ (void)load {
    [APS setDistributionChannel:@"spm"];
}
@end
