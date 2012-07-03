/*
	SQLSTUDIOtbl_Most_Wanted_Result.h
	The implementation of properties and methods for the SQLSTUDIOtbl_Most_Wanted_Result object.
	Generated by SudzC.com
*/
#import "SQLSTUDIOtbl_Most_Wanted_Result.h"

@implementation SQLSTUDIOtbl_Most_Wanted_Result
	@synthesize Charges = _Charges;
	@synthesize Contact_Phone = _Contact_Phone;
	@synthesize Date_Of_Birth = _Date_Of_Birth;
	@synthesize First_Name = _First_Name;
	@synthesize Height_Feet = _Height_Feet;
	@synthesize Height_Inches = _Height_Inches;
	@synthesize Last_Name = _Last_Name;
	@synthesize Market_ID = _Market_ID;
	@synthesize Most_Wanted_ID = _Most_Wanted_ID;
	@synthesize Race = _Race;
	@synthesize Reward = _Reward;
	@synthesize Sex = _Sex;
	@synthesize Wanted_Status = _Wanted_Status;
	@synthesize Weight = _Weight;
	@synthesize ssImage_Photo = _ssImage_Photo;

	- (id) init
	{
		if(self = [super init])
		{
			self.Charges = nil;
			self.Contact_Phone = nil;
			self.Date_Of_Birth = nil;
			self.First_Name = nil;
			self.Last_Name = nil;
			self.Reward = nil;
			self.ssImage_Photo = nil;

		}
		return self;
	}

	+ (SQLSTUDIOtbl_Most_Wanted_Result*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SQLSTUDIOtbl_Most_Wanted_Result*)[[[SQLSTUDIOtbl_Most_Wanted_Result alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.Charges = [Soap getNodeValue: node withName: @"Charges"];
			self.Contact_Phone = [Soap getNodeValue: node withName: @"Contact_Phone"];
			self.Date_Of_Birth = [Soap dateFromString: [Soap getNodeValue: node withName: @"Date_Of_Birth"]];
			self.First_Name = [Soap getNodeValue: node withName: @"First_Name"];
			self.Height_Feet = [[Soap getNodeValue: node withName: @"Height_Feet"] intValue];
			self.Height_Inches = [[Soap getNodeValue: node withName: @"Height_Inches"] intValue];
			self.Last_Name = [Soap getNodeValue: node withName: @"Last_Name"];
			self.Market_ID = [[Soap getNodeValue: node withName: @"Market_ID"] intValue];
			self.Most_Wanted_ID = [[Soap getNodeValue: node withName: @"Most_Wanted_ID"] intValue];
			self.Race = [[Soap getNodeValue: node withName: @"Race"] intValue];
			self.Reward = [NSDecimalNumber decimalNumberWithString: [Soap getNodeValue: node withName: @"Reward"]];
			self.Sex = [[Soap getNodeValue: node withName: @"Sex"] intValue];
			self.Wanted_Status = [[Soap getNodeValue: node withName: @"Wanted_Status"] intValue];
			self.Weight = [[Soap getNodeValue: node withName: @"Weight"] intValue];
			self.ssImage_Photo = [Soap getNodeValue: node withName: @"ssImage_Photo"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"tbl_Most_Wanted_Result"];
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
		if (self.Charges != nil) [s appendFormat: @"<Charges>%@</Charges>", [[self.Charges stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.Contact_Phone != nil) [s appendFormat: @"<Contact_Phone>%@</Contact_Phone>", [[self.Contact_Phone stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.Date_Of_Birth != nil) [s appendFormat: @"<Date_Of_Birth>%@</Date_Of_Birth>", [Soap getDateString: self.Date_Of_Birth]];
		if (self.First_Name != nil) [s appendFormat: @"<First_Name>%@</First_Name>", [[self.First_Name stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<Height_Feet>%@</Height_Feet>", [NSString stringWithFormat: @"%i", self.Height_Feet]];
		[s appendFormat: @"<Height_Inches>%@</Height_Inches>", [NSString stringWithFormat: @"%i", self.Height_Inches]];
		if (self.Last_Name != nil) [s appendFormat: @"<Last_Name>%@</Last_Name>", [[self.Last_Name stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<Market_ID>%@</Market_ID>", [NSString stringWithFormat: @"%i", self.Market_ID]];
		[s appendFormat: @"<Most_Wanted_ID>%@</Most_Wanted_ID>", [NSString stringWithFormat: @"%i", self.Most_Wanted_ID]];
		[s appendFormat: @"<Race>%@</Race>", [NSString stringWithFormat: @"%i", self.Race]];
		if (self.Reward != nil) [s appendFormat: @"<Reward>%@</Reward>", [NSString stringWithFormat: @"%@", self.Reward]];
		[s appendFormat: @"<Sex>%@</Sex>", [NSString stringWithFormat: @"%i", self.Sex]];
		[s appendFormat: @"<Wanted_Status>%@</Wanted_Status>", [NSString stringWithFormat: @"%i", self.Wanted_Status]];
		[s appendFormat: @"<Weight>%@</Weight>", [NSString stringWithFormat: @"%i", self.Weight]];
		if (self.ssImage_Photo != nil) [s appendFormat: @"<ssImage_Photo>%@</ssImage_Photo>", [[self.ssImage_Photo stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SQLSTUDIOtbl_Most_Wanted_Result class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.Charges != nil) { [self.Charges release]; }
		if(self.Contact_Phone != nil) { [self.Contact_Phone release]; }
		if(self.Date_Of_Birth != nil) { [self.Date_Of_Birth release]; }
		if(self.First_Name != nil) { [self.First_Name release]; }
		if(self.Last_Name != nil) { [self.Last_Name release]; }
		if(self.Reward != nil) { [self.Reward release]; }
		if(self.ssImage_Photo != nil) { [self.ssImage_Photo release]; }
		[super dealloc];
	}

@end
