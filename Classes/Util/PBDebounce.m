//
//  PBDebounce.m
//  GitX
//
//  Created by overstrike on 7/30/22.
//

#import "PBDebounce.h"

void PBDebounce(NSInteger *generationSeed, NSTimeInterval coalescePeriod, void (^block)(void))
{
	if (block) {
		*generationSeed += 1;
		NSInteger currentGeneration = *generationSeed;
		
		dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(coalescePeriod * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
			if (*generationSeed == currentGeneration) {
				block();
			}
		});
	}
}
