/*
	SQLSTUDIOAdCycle_Result.h
	The implementation of properties and methods for the SQLSTUDIOAdCycle_Result object.
	Generated by SudzC.com
*/
#import "SQLSTUDIOAdCycle_Result.h"

@implementation SQLSTUDIOAdCycle_Result
	@synthesize CycleCount = _CycleCount;

	- (id) init
	{
		if(self = [super init])
		{

		}
		return self;
	}

	+ (SQLSTUDIOAdCycle_Result*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SQLSTUDIOAdCycle_Result*)[[[SQLSTUDIOAdCycle_Result alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.CycleCount = [[Soap getNodeValue: node withName: @"CycleCount"] intValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"AdCycle_Result"];
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
		[s appendFormat: @"<CycleCount>%@</CycleCount>", [NSString stringWithFormat: @"%i", self.CycleCount]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SQLSTUDIOAdCycle_Result class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		[super dealloc];
	}

@end
