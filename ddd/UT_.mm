//
//  UT_.m
//  ddd
//
//  Created by niu_o0 on 2018/12/13.
//

#import <Foundation/Foundation.h>

CHDeclareClass(UT);

CHClassMethod2(void, UT, ctrlClicked, id, arg1, args, id, arg2) {
    
    NSLog(@"---%@--%@", arg1, arg2);
    
    CHSuper2(UT, ctrlClicked, arg1, args, arg2);
}

CHClassMethod3(void, UT, _ctrlClicked, id, arg1, onPage, id, arg2, args, id, arg3) {
    
    NSLog(@"---%@---%@---%@", arg1, arg2, arg3);
    
    CHSuper3(UT, _ctrlClicked, arg1, onPage, arg2, args, arg3);
    
}

CHConstructor {
    
    CHLoadLateClass(UT);
    
    CHClassHook2(UT, ctrlClicked, args);
    CHClassHook3(UT, _ctrlClicked, onPage, args);
}
