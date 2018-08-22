//
//  LAWebViewJavascriptBridge_.mm
//  ddd
//
//  Created by niu_o0 on 2018/8/21.
//
//

#import <Foundation/Foundation.h>
#import "CaptainHook/CaptainHook.h"

@class LAWebViewJavascriptBridge;

CHDeclareClass(LAWebViewJavascriptBridge);



/*
 0x2C52B26
 [LAWVPluginInstanceCollector registerInstanceCollector]
 0x2BFB72A
 [LAWebViewContainer initWebJsBridge]
 0x2BFC336
 sub_2BFC21C
 0x15D49FE
 [DTContainerURLSafetyChecker handleWebWhitelistModelMainThread:resultBlock:]
 0x15D4278
 sub_15D412A
 0x159F1AE
 [DTWebWhitelistEngine checkURLIsSave:successBlock:failBlock:]
 0x15D4008
 [DTContainerURLSafetyChecker appraiseURL:view:resultBlock:]
 0x15D3A7C
 [DTContainerURLSafetyChecker checkCookieAndAppraiseURL:view:resultBlock:]
 0x15D3622
 -[DTContainerURLSafetyChecker checkURL:view:resultBlock:]
 0x2BFC198
 [LAWebViewContainer checkURLAndLoadInitialRequest]
 0x2C3AC6A
 [LARichWebViewController loadInitialRequest]
 0x162395A
 [DTWebViewController loadInitialRequest]
 0x1628A44
 [DTWebViewController startLoadRequest]
 0x16229BC
 [DTWebViewController viewDidLoad]
 */
CHMethod2(void, LAWebViewJavascriptBridge, registerHandler, id, arg1, handler, id, arg2){
    
    //arg2 = sub_2C52B8C
    
    CHSuper2(LAWebViewJavascriptBridge, registerHandler, arg1, handler, arg2);
    
}




/*
 0x2C52ED8
 sub_2C52E5C
 0x2C52D1E
 -[LAWVPluginInstanceCollector plugin:callAction:data:callBack:]
 0x16BEB80
 sub_16BEB22 
 */
CHMethod3(void, LAWebViewJavascriptBridge, callHandler, id, arg1, data, id, arg2, responseCallback, id, arg3){
    
    CHSuper3(LAWebViewJavascriptBridge, callHandler, arg1, data, arg2, responseCallback, arg3);
    
}


CHConstructor {
    
    @autoreleasepool{
        
        CHLoadLateClass(LAWebViewJavascriptBridge);
        
        CHHook2(LAWebViewJavascriptBridge, registerHandler, handler);
        CHHook3(LAWebViewJavascriptBridge, callHandler, data, responseCallback);
        
    }
    
}
