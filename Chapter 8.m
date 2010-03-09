#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	NSFileManager *manager = [NSFileManager defaultManager];
	NSString *home = [@"~" stringByExpandingTildeInPath];
	NSDirectoryEnumerator *direnum = [manager enumeratorAtPath:home];
	NSMutableArray *files = [NSMutableArray array];
	NSString *filename;
	while (filename = [direnum nextObject]) {
		if ([[filename pathExtension] isEqualTo:@"jpg"]) {
			[files addObject:filename];
		}
	}
	NSEnumerator *fileenum = [files objectEnumerator];
	while (filename = [fileenum nextObject]) {
		NSLog(@"%@", filename);
	}
	NSLog(@"There are %d JPEG files in the Home Directory", [files count]); 
    [pool drain];
    return 0;
}
