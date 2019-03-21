//
//  LWPRequest_.m
//  ddd
//
//  Created by niu_o0 on 2018/12/14.
//

#import <Foundation/Foundation.h>

CHDeclareClass(LWPRequest);

/*
 -[DTWebViewController checkContainerStatusAfterInit]
 -[DTURLStatusChecker checkURLStatusAsyc:]
 -[DTURLStatusChecker queryStatusAsync:finishBlock:]
 -[LWMServiceProxy forwardInvocation:]
 -[LWMServiceProxy handleInvocation:isMainThread:]
 [NSInvocation(Stream) requestWithURI:host:encoder:]
 +[LWPRequest requestWithURI:host:args:encoder:]
 +[LWPRequest requestWithURI:host:body:]
 */

/*
 
 -[DTLAPInternalRequest lwp:to:]
 */

CHClassMethod3(id, LWPRequest, requestWithURI, id, arg1, headers, id, arg2, body, id, arg3) {
    
    NSLog(@"---%@--%@--%@--%@", self, arg1, arg2, arg3);
    
    NSLog(@"%@", [[NSString alloc] initWithData:arg3 encoding:NSUTF8StringEncoding]);
    
    return CHSuper3(LWPRequest, requestWithURI, arg1, headers, arg2, body, arg3);
}


CHMethod1(void, LWPRequest, setSuccess, id, arg1) {
    
    NSLog(@"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
    
    CHSuper1(LWPRequest, setSuccess, arg1);
    
}

CHConstructor {
    
    CHLoadLateClass(LWPRequest);
    CHClassHook3(LWPRequest, requestWithURI, headers, body);
    
    CHHook1(LWPRequest, setSuccess);
}
