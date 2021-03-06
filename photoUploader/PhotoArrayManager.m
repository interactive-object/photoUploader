//
//  PhotoArrayManager.m
//  photoUploader
//
//  Created by Kerry Happle on 1/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PhotoArrayManager.h"

@implementation PhotoArrayManager

@synthesize thumbPhotoArray,largePhotoDict;

+(id)sharedManager 
{
    static id sharedManager = nil;
    
    if (sharedManager == nil) {
        sharedManager = [[self alloc] init];
    }
    
    return sharedManager;
}

-(id)init
{
    if( (self=[super init]) ) {
        thumbPhotoArray = [[NSMutableArray alloc] init];
        largePhotoDict = [[NSMutableDictionary alloc] init];
    }
    return self;
}

@end
