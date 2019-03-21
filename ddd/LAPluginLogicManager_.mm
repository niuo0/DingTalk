//
//  LAPluginLogicManager_.m
//  ddd
//
//  Created by niu_o0 on 2018/12/13.
//

#import <Foundation/Foundation.h>
#import "CaptainHook/CaptainHook.h"
#import "LAAction.h"

CHDeclareClass(LAPluginLogicManager)

CHMethod2(id, LAPluginLogicManager, actionForMethod, id, arg1, pluginName, id, arg2) {
    
    LAAction * map = CHSuper2(LAPluginLogicManager, actionForMethod, arg1, pluginName, arg2);

    NSLog(@"--%@,%@,%@,%@", map.mode, map.methodName, map.className, map.pluginName, map.instanceIdentifier);
    
    return map;
}


CHMethod0(id, LAPluginLogicManager, modules) {

    id org = CHSuper0(LAPluginLogicManager, modules);

    NSMutableDictionary * dic = [NSMutableDictionary dictionaryWithDictionary:org];

    [dic removeObjectForKey:@"internal.safe"];

    return org;

}

CHConstructor {
    
    CHLoadLateClass(LAPluginLogicManager);
    
    CHHook2(LAPluginLogicManager, actionForMethod, pluginName);
    
    CHHook0(LAPluginLogicManager, modules);
}
