/*
	SQLSTUDIOtbl_User_Result.h
	The interface definition of properties and methods for the SQLSTUDIOtbl_User_Result object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SQLSTUDIOtbl_User_Result : SoapObject
{
	BOOL _Is_Admin;
	NSString* _Last_IP;
	NSDate* _Last_Login;
	NSString* _Password;
	NSString* _User_Email;
	int _User_ID;
	NSString* _User_Name;
	int _User_Status;
	
}
		
	@property BOOL Is_Admin;
	@property (retain, nonatomic) NSString* Last_IP;
	@property (retain, nonatomic) NSDate* Last_Login;
	@property (retain, nonatomic) NSString* Password;
	@property (retain, nonatomic) NSString* User_Email;
	@property int User_ID;
	@property (retain, nonatomic) NSString* User_Name;
	@property int User_Status;

	+ (SQLSTUDIOtbl_User_Result*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
