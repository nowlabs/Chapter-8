#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	NSFileManager *manager = [NSFileManager defaultManager];
	NSString *home = [@"~" stringByExpandingTildeInPath];
	NSMutableArray *files = [NSMutableArray array];
	for (NSString *filename in [manager enumeratorAtPath:home]) {
		if ([[filename pathExtension] isEqualTo:@"jpg"]) {
			[files addObject:filename];
		}
	}
	for (NSString *filename in files) {
		NSLog(@"%@", filename);
	}
	NSLog(@"There are %d JPEG files in the Home Directory", [files count]); 
    [pool drain];
    return 0;
}
