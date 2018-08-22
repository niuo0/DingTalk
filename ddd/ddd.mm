//
//  ddd.mm
//  ddd
//
//  Created by niu_o0 on 2018/8/20.
//  Copyright (c) 2018年 __MyCompanyName__. All rights reserved.
//

// CaptainHook by Ryan Petrich
// see https://github.com/rpetrich/CaptainHook/

#import <Foundation/Foundation.h>
#import "CaptainHook/CaptainHook.h"
#include <notify.h> // not required; for examples only

// Objective-C runtime hooking using CaptainHook:
//   1. declare class using CHDeclareClass()
//   2. load class using CHLoadClass() or CHLoadLateClass() in CHConstructor
//   3. hook method using CHOptimizedMethod()
//   4. register hook using CHHook() in CHConstructor
//   5. (optionally) call old method using CHSuper()


@class DTDefaultWorkTableCell;

extern void hook_Bundle();

CHDeclareClass(DTDefaultWorkTableCell);

CHMethod1(void, DTDefaultWorkTableCell, cellTapped, id, arg1){
    
    CHSuper1(DTDefaultWorkTableCell, cellTapped, arg1);
    
}

@class DTWorkViewController;


CHDeclareClass(DTWorkViewController); // declare class


CHMethod(0, void, DTWorkViewController, viewDidLoad){
    
    hook_Bundle();
    
    CHSuper(0, DTWorkViewController, viewDidLoad);
    
    NSLog(@"````````````````````view didload");
    
}

CHMethod0(void, DTWorkViewController, didTapOnAddAppsCell){
    
    CHSuper0(DTWorkViewController, didTapOnAddAppsCell);
    
}

CHMethod4(void, DTWorkViewController, openMicroAppWithItem, id, arg1, appView, id, arg2, ddParams, id, arg3, userInfo, id, arg4){
    NSLog(@"%@ %@", self, [NSThread callStackSymbols]);//0x00086000
    CHSuper4(DTWorkViewController, openMicroAppWithItem, arg1, appView, arg2, ddParams, arg3, userInfo, arg4);
    
}


CHConstructor // code block that runs immediately upon load
{
    @autoreleasepool
    {
        NSLog(@"````````````````````````hook1");
        
        // CHLoadClass(ClassToHook); // load class (that is "available now")
        CHLoadLateClass(DTWorkViewController);  // load class (that will be "available later")
        
        //CHHook(2, DTWorkViewController, tableView, didSelectRowAtIndexPath); // register hook
        
        CHClassHook(0, DTWorkViewController, viewDidLoad);
        CHClassHook(4, DTWorkViewController, openMicroAppWithItem, appView, ddParams, userInfo);
        CHClassHook0(DTWorkViewController, didTapOnAddAppsCell);
        
        CHLoadLateClass(DTDefaultWorkTableCell);
        CHClassHook(1, DTDefaultWorkTableCell, cellTapped);
        
    }
}
