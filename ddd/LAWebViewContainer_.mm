//
//  LAWebViewContainer_.mm
//  ddd
//
//  Created by niu_o0 on 2018/8/21.
//
//

#import <Foundation/Foundation.h>
#import "CaptainHook/CaptainHook.h"

@class LAWebViewContainer;

CHDeclareClass(LAWebViewContainer)

CHMethod3(id, LAWebViewContainer, initWithInitialURL, id, arg1, webViewType, int, arg2, delegate, id, arg3){
    return CHSuper3(LAWebViewContainer, initWithInitialURL, arg1, webViewType, arg2, delegate, arg3);
}

CHMethod0(void, LAWebViewContainer, initWebJsBridge){
    
    CHSuper0(LAWebViewContainer, initWebJsBridge);
    
}


CHConstructor{
    
    CHLoadLateClass(LAWebViewContainer);
    
    CHHook3(LAWebViewContainer, initWithInitialURL, webViewType, delegate);
    CHHook0(LAWebViewContainer, initWebJsBridge);
}