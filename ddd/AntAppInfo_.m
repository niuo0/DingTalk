//
//  AntAppInfo_.m
//  ddd
//
//  Created by niu_o0 on 2018/12/28.
//

#import <Foundation/Foundation.h>


CHDeclareClass(AntAppInfo);

CHClassMethod0(id, AntAppInfo, getAppInfo) {
    
    id org = CHSuper0(AntAppInfo, getAppInfo);
    
    return org;
    
}


CHConstructor {
    
    CHLoadLateClass(AntAppInfo);
    
    CHClassHook0(AntAppInfo, getAppInfo);
    
}
