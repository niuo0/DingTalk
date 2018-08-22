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

void hook_Bundle();

CHDeclareClass(DTInfoPlist);

CHDeclareClass(NSBundle);

CHClassMethod0(id, DTInfoPlist, getAppBundleId){
    
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        hook_Bundle();
//    });
    
    
    return @"com.laiwang.DingTalk";
    
}

CHMethod0(id, NSBundle, bundleIdentifier){
    
    return @"com.laiwang.DingTalk";
}

void hook_Bundle() {
    
    CHLoadLateClass(NSBundle);
    CHHook0(NSBundle, bundleIdentifier);
}

CHConstructor {
    
    CHLoadLateClass(DTInfoPlist);
    
    CHClassHook0(DTInfoPlist, getAppBundleId);
}
