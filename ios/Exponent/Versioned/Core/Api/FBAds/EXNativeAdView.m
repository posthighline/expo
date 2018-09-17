#import "EXNativeAdView.h"

#import <FBAudienceNetwork/FBAudienceNetwork.h>
#import <React/RCTUtils.h>

@interface EXNativeAdView ()

@end

@implementation EXNativeAdView

- (void)setNativeAd:(FBNativeAd *)nativeAd
{
	_nativeAd = nativeAd;
	
	_onAdLoaded(@{
				  @"title": _nativeAd.headline,
				  @"subtitle": _nativeAd.linkDescription,
				  @"description": _nativeAd.bodyText,
				  @"socialContext": _nativeAd.socialContext,
				  @"callToActionText": _nativeAd.callToAction,
				  @"coverImage": _nativeAd.adChoicesIcon ? [_nativeAd.adChoicesIcon.url absoluteString] : [NSNull null],
				  @"icon": _nativeAd.adChoicesIcon ? [_nativeAd.adChoicesIcon.url absoluteString] : [NSNull null],
				  });
	
	[_nativeAd registerViewForInteraction:self
								mediaView:[[FBMediaView alloc] init]
								 iconView:nil
						   viewController:RCTKeyWindow().rootViewController];
}

@end
