//
//  AppDelegate+CULPlugin.m
//
//  Created by Nikolay Demyankov on 15.09.15.
//

#import "AppDelegate+CULPlugin.h"
#import "CULPlugin.h"

/**
 *  Plugin name in config.xml
 */
static NSString *const PLUGIN_NAME = @"UniversalLinks";

@implementation AppDelegate (CULPlugin)

// XXX HACK
// iOS only lets you overwrite this method once in an applications. Since we are also using dynamic links, we disable
// the binding here so it can be used in the FCMPlugin. The FCMPlugin imports the CULPlugin to still handle dynamic links


// - (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray *))restorationHandler {
//     // ignore activities that are not for Universal Links
//     if (![userActivity.activityType isEqualToString:NSUserActivityTypeBrowsingWeb] || userActivity.webpageURL == nil) {
//         return NO;
//     }

//     // get instance of the plugin and let it handle the userActivity object
//     CULPlugin *plugin = [self.viewController getCommandInstance:PLUGIN_NAME];
//     if (plugin == nil) {
//         return NO;
//     }

//     return [plugin handleUserActivity:userActivity];
// }

@end
