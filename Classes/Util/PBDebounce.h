//
//  PBDebounce.h
//  GitX
//
//  Created by overstrike on 7/30/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// Wait until `coalescePeriod` seconds has elasped since the last debounce request and then execute `block`.
void PBDebounce(NSInteger *generationSeed, NSTimeInterval coalescePeriod, void (^block)(void));

NS_ASSUME_NONNULL_END
