//
//  LWPTransactionService_.m
//  ddd
//
//  Created by niu_o0 on 2018/12/25.
//
//

#import <Foundation/Foundation.h>

CHDeclareClass(LWPTransactionService);


CHMethod1(void, LWPTransactionService, enqueue, id, arg1) {
    
    CHSuper1(LWPTransactionService, enqueue, arg1);
    
    /*
    LWPRequest * request = arg1;
    
    if (request.failOnNetworkBroken) {
        
        if ([LWPNetwork sharedInstance].isNotReachable) {
            
            LWPError * error = [LWPError errorWithType:1];
            [self destory:request withError:error withResponse:nil]
        }
        
    }
    
    NSMutableDictionary * _transactionPool = self->_transactionPool;
    
    LWPMid *mid = request.mid
    
    [_transactionPool setObject:mid forKey:mid.messageid];
    
    LWPRequestInternal *_internal = request->_internal
    
    if (_internal.status > 1) {
        return
    }
    
    [_internal enterPending];
    
    LWPReqLinker * linker = nil;
    
    if ([self isMergeRequest:request]) {
        
        id r = [self mergeKeyOfRequest:request];
        
        NSMutableDictionary *_mergeReqLinkerMap = self->_mergeReqLinkerMap;
        
        linker = [_mergeReqLinkerMap objectForKey:r];
        
        if (!linker) {
            
            linker = [[LWPReqLinker alloc] init];
            
            [_mergeReqLinkerMap setObject:linker forKey:r];
        }
        
        if (![linker isExistRequest:request]) {
            [linker addRequest:request];
        }
        
        id req = [linker currentReq];
        
        if (req) {
            
            NSString * connectionId = req.connectionId;
            
            [_internal enterTrying:connectionId];
        }
        
    }
    
    if ([self filterBeforeRequest:request]) {
        return ;
    }
    
     //发送请求 LWPClient, _initTransactionService 赋值
    if (self->_sendRequestBlock) {
        self->_sendRequestBlock()
        
    }
    
    if (request->_autoCallback == NO){
        
        if (linker){
            
            if (_internal.status == 2){
                
                id req = [linker currentReq];
                
                if (!req) {
                    [linker setCurrentReq:req];
                }
                
            }
            
        }
        
    }else{
        LWPResponse * response = [[LWPResponse alloc] initWithRequest:request];
        response.status = 200;
        [self destory:request withError:nil withResponse:response]
    }
    */
}

CHMethod3(void, LWPTransactionService, destoryV2, id, arg1, withError, id, arg2, withResponse, id, arg3) {
    
    CHSuper3(LWPTransactionService, destoryV2, arg1, withError, arg2, withResponse, arg3);
    
    /*
    LWPRequest * request = arg1;
    
    LWPRequestInternal *_internal = request->_internal;
    
    if (arg1 && _internal.status!= 3) {
        
        [self->_transactionPool removeObjectForKey:request.mid.messageid];
        
        if (self.reqDestoryCallback) {
            self.reqDestoryCallback()
        }
        
        [self filterAfterRequest:request response:arg3 error:arg2];//实现
         {
         //缓存
         if (!arg2){
            LWPClientTMD * tmd = self.clientTMD;
            [tmd flowCopy:request response:arg3];
         }
         }
     
        
        [request doFinished:arg3 error:arg2 queue:self.callbackQueue];
        
        if (arg2) {
            
        }else{
            
           double rt = [request requestRt];
            
        double usage = [request requestUsage];
            
            
        }
        
    }
    */
    
}

CHMethod1(void, LWPTransactionService, setSendRequestBlock, id, arg1) {
    
    CHSuper1(LWPTransactionService, setSendRequestBlock, arg1);
    
}


CHConstructor {
    
    CHLoadLateClass(LWPTransactionService);
    CHHook1(LWPTransactionService, enqueue);
    CHHook3(LWPTransactionService, destoryV2, withError, withResponse);
    CHHook1(LWPTransactionService, setSendRequestBlock);
    
}
