//
//  SecurityGuardManager_.m
//  ddd
//
//  Created by niu_o0 on 2018/12/27.
//
//

#import <Foundation/Foundation.h>
#include <sys/syscall.h>

CHDeclareClass(SecurityGuardManager);


CHMethod0(id, SecurityGuardManager, getSecurityBodyComp) {
    
    id c = CHSuper0(SecurityGuardManager, getSecurityBodyComp);
    
    return c;
    
}

CHMethod1(id, SecurityGuardManager, getSecurityBodyData, id, arg1) {
    
    id org = CHSuper1(SecurityGuardManager, getSecurityBodyData, arg1);
    
    return org;
}





CHDeclareClass(OpenSecurityGuardManager);

CHMethod0(id, OpenSecurityGuardManager, getSecurityBodyComp) {
    
    id c = CHSuper0(OpenSecurityGuardManager, getSecurityBodyComp);
    
    return c;
    
}




CHDeclareClass(SecurityGuardOpenSecurityBody);

CHMethod7(id, SecurityGuardOpenSecurityBody, getSecurityBodyDataEx, id, arg1, appKey, id, arg2, authCode, id, arg3, extendParam, id, arg4, flag, int, arg5, env, int, arg6, error, id, arg7) {
    
    id org = CHSuper7(SecurityGuardOpenSecurityBody, getSecurityBodyDataEx, arg1, appKey, arg2, authCode, arg3, extendParam, arg4, flag, arg5, env, arg6, error, arg7);
    
    return org;
    
}

CHMethod1(id, SecurityGuardOpenSecurityBody, assembleExtendParam, id, arg1) {
    
    id org = CHSuper1(SecurityGuardOpenSecurityBody, assembleExtendParam, arg1);
    
    return org;
    
}


CHConstructor {
    
    CHLoadLateClass(SecurityGuardManager);
    
    CHHook0(SecurityGuardManager, getSecurityBodyComp);
    
    CHHook1(SecurityGuardManager, getSecurityBodyData);
    
    CHLoadLateClass(OpenSecurityGuardManager);
    
    CHHook0(OpenSecurityGuardManager, getSecurityBodyComp);
    
    
    CHLoadLateClass(SecurityGuardOpenSecurityBody);
    CHHook7(SecurityGuardOpenSecurityBody, getSecurityBodyDataEx, appKey, authCode, extendParam, flag, env, error);
    
    CHHook1(SecurityGuardOpenSecurityBody, assembleExtendParam);
    
    
}