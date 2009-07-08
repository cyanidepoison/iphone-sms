#import <Foundation/Foundation.h>
#import "CTMessageCenter.h"

int main(int argc, char *argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    NSString *message = [NSString stringWithUTF8String:argv[1]];
    NSString *number = [NSString stringWithUTF8String:argv[2]];

    BOOL success = [[CTMessageCenter sharedMessageCenter]  sendSMSWithText:message serviceCenter:nil toAddress:number];

    if(success == TRUE) {
        printf("Message appears to have been sent.\n");
    }
    else {
        printf("Message failed.\n");
    }

    [pool release];
}
