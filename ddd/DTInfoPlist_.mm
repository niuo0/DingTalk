//
//  DTInfoPlist_.mm
//  ddd
//
//  Created by niu_o0 on 2018/8/22.
//
//

#import <Foundation/Foundation.h>
#import "CaptainHook/CaptainHook.h"

@class DTInfoPlist;

CHDeclareClass(DTInfoPlist);

CHDeclareClass(NSBundle);

CHClassMethod0(id, DTInfoPlist, getAppBundleId){
    
    return @"com.laiwang.DingTalk";
    
}

CHMethod2(id, NSBundle, pathForResource, id, arg1, ofType, id, arg2) {
    
    NSLog(@"``%s``%@ , %@", __FUNCTION__, arg1, arg2);
    
    if ([arg2 isEqualToString:@"mobileprovision"]) {
        return nil;
    }
    
    return  CHSuper2(NSBundle, pathForResource, arg1, ofType, arg2);
    
}

CHConstructor {
    
    CHLoadLateClass(DTInfoPlist);
    
    CHClassHook0(DTInfoPlist, getAppBundleId);
    
    CHLoadLateClass(NSBundle);
    CHHook2(NSBundle, pathForResource, ofType);
}
