/*
	SQLSTUDIOtbl_Sex_Result.h
	The implementation of properties and methods for the SQLSTUDIOtbl_Sex_Result object.
	Generated by SudzC.com
*/
#import "SQLSTUDIOtbl_Sex_Result.h"

@implementation SQLSTUDIOtbl_Sex_Result
	@synthesize Sex_ID = _Sex_ID;
	@synthesize Sex_Name = _Sex_Name;

	- (id) init
	{
		if(self = [super init])
		{
			self.Sex_Name = nil;

		}
		return self;
	}

	+ (SQLSTUDIOtbl_Sex_Result*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SQLSTUDIOtbl_Sex_Result*)[[[SQLSTUDIOtbl_Sex_Result alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.Sex_ID = [[Soap getNodeValue: node withName: @"Sex_ID"] intValue];
			self.Sex_Name = [Soap getNodeValue: node withName: @"Sex_Name"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"tbl_Sex_Result"];
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
		[s appendFormat: @"<Sex_ID>%@</Sex_ID>", [NSString stringWithFormat: @"%i", self.Sex_ID]];
		if (self.Sex_Name != nil) [s appendFormat: @"<Sex_Name>%@</Sex_Name>", [[self.Sex_Name stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SQLSTUDIOtbl_Sex_Result class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.Sex_Name != nil) { [self.Sex_Name release]; }
		[super dealloc];
	}

@end