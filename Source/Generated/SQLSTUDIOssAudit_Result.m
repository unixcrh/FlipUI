/*
	SQLSTUDIOssAudit_Result.h
	The implementation of properties and methods for the SQLSTUDIOssAudit_Result object.
	Generated by SudzC.com
*/
#import "SQLSTUDIOssAudit_Result.h"

@implementation SQLSTUDIOssAudit_Result
	@synthesize Audid_Action = _Audid_Action;
	@synthesize Audit_ID = _Audit_ID;
	@synthesize PKID = _PKID;
	@synthesize Table_Name = _Table_Name;
	@synthesize TimeStamp = _TimeStamp;
	@synthesize User_ID = _User_ID;

	- (id) init
	{
		if(self = [super init])
		{
			self.Table_Name = nil;
			self.TimeStamp = nil;

		}
		return self;
	}

	+ (SQLSTUDIOssAudit_Result*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SQLSTUDIOssAudit_Result*)[[[SQLSTUDIOssAudit_Result alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.Audid_Action = [[Soap getNodeValue: node withName: @"Audid_Action"] intValue];
			self.Audit_ID = [[Soap getNodeValue: node withName: @"Audit_ID"] intValue];
			self.PKID = [[Soap getNodeValue: node withName: @"PKID"] intValue];
			self.Table_Name = [Soap getNodeValue: node withName: @"Table_Name"];
			self.TimeStamp = [Soap dateFromString: [Soap getNodeValue: node withName: @"TimeStamp"]];
			self.User_ID = [[Soap getNodeValue: node withName: @"User_ID"] intValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"ssAudit_Result"];
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
		[s appendFormat: @"<Audid_Action>%@</Audid_Action>", [NSString stringWithFormat: @"%i", self.Audid_Action]];
		[s appendFormat: @"<Audit_ID>%@</Audit_ID>", [NSString stringWithFormat: @"%i", self.Audit_ID]];
		[s appendFormat: @"<PKID>%@</PKID>", [NSString stringWithFormat: @"%i", self.PKID]];
		if (self.Table_Name != nil) [s appendFormat: @"<Table_Name>%@</Table_Name>", [[self.Table_Name stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.TimeStamp != nil) [s appendFormat: @"<TimeStamp>%@</TimeStamp>", [Soap getDateString: self.TimeStamp]];
		[s appendFormat: @"<User_ID>%@</User_ID>", [NSString stringWithFormat: @"%i", self.User_ID]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SQLSTUDIOssAudit_Result class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.Table_Name != nil) { [self.Table_Name release]; }
		if(self.TimeStamp != nil) { [self.TimeStamp release]; }
		[super dealloc];
	}

@end
