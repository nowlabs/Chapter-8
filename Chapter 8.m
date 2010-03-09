#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	NSArray *array = 
	[NSArray arrayWithObjects:@"one", @"two", @"three", nil];
	for (int i = 0; i < [array count]; i++) {
		NSLog(@"index %d has %@", i, [array objectAtIndex:i]);
	}
	//id noObject = [array objectAtIndex:28000]; /* Global breakpoint testing */
	NSNumber *number = [NSNumber numberWithInt:42];
	NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
	[dictionary setValue:number forKey:@"Bork"];
	NSLog(@"Key: %@, Value: %d", @"Bork", [[dictionary valueForKey:@"Bork"] intValue]); 
    [pool drain];
    return 0;
}
