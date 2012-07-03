/*
	SQLSTUDIOtbl_Race_Result.h
	The implementation of properties and methods for the SQLSTUDIOtbl_Race_Result object.
	Generated by SudzC.com
*/
#import "SQLSTUDIOtbl_Race_Result.h"

@implementation SQLSTUDIOtbl_Race_Result
	@synthesize Race_ID = _Race_ID;
	@synthesize Race_Name = _Race_Name;

	- (id) init
	{
		if(self = [super init])
		{
			self.Race_Name = nil;

		}
		return self;
	}

	+ (SQLSTUDIOtbl_Race_Result*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SQLSTUDIOtbl_Race_Result*)[[[SQLSTUDIOtbl_Race_Result alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.Race_ID = [[Soap getNodeValue: node withName: @"Race_ID"] intValue];
			self.Race_Name = [Soap getNodeValue: node withName: @"Race_Name"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"tbl_Race_Result"];
	}
  
	- (NSMutableString*) serialize: (NSString*) nodeName
	{
		NSMutableString* s = [NSMutableString string];
		[s appendFormat: @"<%@", nodeName];
		[s appendString: [self serializeAttributes]];
		[s appendString: @">"];
		[s appendString: [self serializeElements]];
		[s appendFormat: @"</%@>", nodeName];
		return s;
	}
	
	- (NSMutableString*) serializeElements
	{
		NSMutableString* s = [super serializeElements];
		[s appendFormat: @"<Race_ID>%@</Race_ID>", [NSString stringWithFormat: @"%i", self.Race_ID]];
		if (self.Race_Name != nil) [s appendFormat: @"<Race_Name>%@</Race_Name>", [[self.Race_Name stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SQLSTUDIOtbl_Race_Result class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.Race_Name != nil) { [self.Race_Name release]; }
		[super dealloc];
	}

@end