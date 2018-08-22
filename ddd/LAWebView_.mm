//
//  LAWebView_.mm
//  ddd
//
//  Created by niu_o0 on 2018/8/21.
//

#import <Foundation/Foundation.h>
#import "CaptainHook/CaptainHook.h"
#import <UIKit/UIKit.h>

@class LAWebView;

CHDeclareClass(LAWebView);

CHMethod0(void, LAWebView, initUIWebView){
    
    CHSuper0(LAWebView, initUIWebView);
    
}

CHMethod1(id, LAWebView, loadRequest, id, arg1){
    
    id res = CHSuper1(LAWebView, loadRequest, arg1);
    
    return res;
}

CHMethod2(id , LAWebView, loadHTMLString, id, arg1, baseURL, id, arg2){
    
    id res = CHSuper2(LAWebView, loadHTMLString, arg1, baseURL, arg2);
    
    return res;
    
}

CHMethod0(void, LAWebView, callback_webViewDidFinishLoad){
    
    id delegate = [self delegate];
    
    CHSuper0(LAWebView, callback_webViewDidFinishLoad);
    
}

CHConstructor {
    
    @autoreleasepool{
        
        // CHLoadClass(ClassToHook); // load class (that is "available now")
        CHLoadLateClass(LAWebView);  // load class (that will be "available later")
        
        CHHook(0, LAWebView, initUIWebView); // register hook
        CHHook1(LAWebView, loadRequest);
        CHHook2(LAWebView, loadHTMLString, baseURL);
        CHHook0(LAWebView, callback_webViewDidFinishLoad);
    }
    
}
