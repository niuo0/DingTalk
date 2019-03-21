//
//  LWPClient_.m
//  ddd
//
//  Created by niu_o0 on 2018/12/14.
//
//

#import <Foundation/Foundation.h>

CHDeclareClass(LWPClient);

CHMethod2(void, LWPClient, sendMessage, id, arg1, mode, int, arg2) {
    
    NSLog(@"---%@--%@", self, arg1);
    
    CHSuper2(LWPClient, sendMessage, arg1, mode, arg2);
    
}

CHMethod0(void, LWPClient, _initTransactionService) {
    
    
    CHSuper0(LWPClient, _initTransactionService);
    
    //LWPMessenger sendRequest:(id)arg1 mode:(unsigned long long)arg2;
    
}

CHConstructor {
    
    CHLoadLateClass(LWPClient);
    
    CHHook2(LWPClient, sendMessage, mode);
    
    CHHook0(LWPClient, _initTransactionService);
    
}