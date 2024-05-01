jadeVersionNumber "22.0.03";
schemaDefinition
SimpleBankModel subschemaOf RootSchema completeDefinition;
	setModifiedTimeStamp "jorda" "22.0.03" 2024:03:01:13:15:18.152;
localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
	setModifiedTimeStamp "jorda" "22.0.03" 2024:03:01:13:15:18.132;
typeHeaders
	SimpleBankModel subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, highestOrdinal = 1, number = 2055;
	Bank subclassOf Object highestSubId = 1, highestOrdinal = 2, number = 2052;
	Customer subclassOf Object highestOrdinal = 8, number = 2058;
	GSimpleBankModel subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2056;
	SSimpleBankModel subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2057;
	CustomerDetails subclassOf Form transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 15, number = 2061;
	CustomerByLastNameDict subclassOf MemberKeyDictionary duplicatesAllowed, loadFactor = 66, number = 2053;
membershipDefinitions
	CustomerByLastNameDict of Customer;
typeDefinitions
	Object completeDefinition
	(
	)
	Application completeDefinition
	(
	)
	RootSchemaApp completeDefinition
	(
	)
	SimpleBankModel completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:01:13:15:18.151;
	referenceDefinitions
		myBank:                        Bank  readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:07:23:59:01.713;
	jadeMethodDefinitions
		initialize() updating, number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:08:00:09:28.093;
	)
	Bank completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:07:23:50:57.380;
	attributeDefinitions
		customerNumber:                Integer protected, number = 1, ordinal = 1;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:07:23:51:47.656;
	referenceDefinitions
		allCustomers:                  CustomerByLastNameDict  implicitMemberInverse, readonly, subId = 1, number = 2, ordinal = 2;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:12:52:54.021;
	jadeMethodDefinitions
		nextCustomerNumber(): Integer updating, number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:07:23:55:20.234;
	)
	Customer completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:01:13:17:06.868;
	attributeDefinitions
		city:                          String[21] protected, number = 6, ordinal = 6;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:01:13:26:55.334;
		creditScore:                   Integer protected, number = 7, ordinal = 7;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:01:13:27:14.126;
		firstName:                     String[21] protected, number = 1, ordinal = 1;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:01:13:25:28.737;
		lastName:                      String[21] protected, number = 2, ordinal = 2;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:01:13:25:50.701;
		number:                        Integer protected, number = 8, ordinal = 8;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:01:13:27:19.388;
		phone:                         String[16] protected, number = 3, ordinal = 3;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:01:13:26:05.208;
		streetAddress:                 String[51] protected, number = 4, ordinal = 4;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:01:13:26:26.872;
		suburb:                        String[21] protected, number = 5, ordinal = 5;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:01:13:26:46.322;
	jadeMethodDefinitions
		create(
			cFirstName: String; 
			cLastName: String; 
			cPhone: String; 
			cStreetAddress: String; 
			cSuburb: String; 
			cCity: String; 
			cCreditScore: Integer) updating, number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:12:53:04.152;
		getFullName(): String number = 1002;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:01:13:45:02.245;
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GSimpleBankModel completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:01:13:15:18.151;
	)
	JadeScript completeDefinition
	(
	jadeMethodDefinitions
		createCustomer() updating, number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:08:00:12:08.187;
		createCustomerFromFile() number = 1006;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:08:00:39:27.439;
		purgeCustomers() updating, number = 1007;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:12:58:12.242;
		runCustomerDetailsForm() number = 1008;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:13:48:34.411;
		workingDecimalType() number = 1003;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:07:14:20:23.444;
		workingWithDatesAndTimes() number = 1005;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:07:14:43:57.127;
		workingWithNumbers() number = 1002;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:07:14:12:04.539;
		workingWithStrings() number = 1004;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:07:14:27:40.243;
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
		setModifiedTimeStamp "<unknown>" "6.1.00" 20031119 2003:12:01:13:54:02.270;
	)
	SSimpleBankModel completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:01:13:15:18.151;
	)
	Window completeDefinition
	(
	)
	Form completeDefinition
	(
	)
	CustomerDetails completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:13:23:44.770;
	referenceDefinitions
		btnCancel:                     Button  number = 14, ordinal = 14;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:13:23:44.769;
		btnOK:                         Button  number = 13, ordinal = 13;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:13:23:44.769;
		l:                             Label  number = 2, ordinal = 2;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:13:23:44.766;
		label:                         Label  number = 1, ordinal = 1;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:13:23:44.764;
		label4:                        Label  number = 4, ordinal = 4;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:13:23:44.766;
		label5:                        Label  number = 5, ordinal = 5;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:13:23:44.767;
		label6:                        Label  number = 6, ordinal = 6;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:13:23:44.767;
		phone:                         Label  number = 3, ordinal = 3;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:13:23:44.766;
		statusLine:                    StatusLine  number = 15, ordinal = 15;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:13:23:44.769;
		txtCity:                       TextBox  number = 12, ordinal = 12;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:13:23:44.769;
		txtFirstName:                  TextBox  number = 7, ordinal = 7;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:13:23:44.767;
		txtLastName:                   TextBox  number = 8, ordinal = 8;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:13:23:44.768;
		txtPhone:                      TextBox  number = 9, ordinal = 9;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:13:23:44.768;
		txtStreetAddress:              TextBox  number = 10, ordinal = 10;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:13:23:44.768;
		txtSuburb:                     TextBox  number = 11, ordinal = 11;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:13:23:44.768;
	jadeMethodDefinitions
		btnCancel_click(btn: Button input) updating, number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:13:24:53.655;
		clearForm() number = 1002;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:13:27:33.749;
		isFormFilled(): Boolean number = 1003;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:13:35:16.189;
	eventMethodMappings
		btnCancel_click = click of Button;
	)
	Collection completeDefinition
	(
	)
	Btree completeDefinition
	(
	)
	Dictionary completeDefinition
	(
	)
	MemberKeyDictionary completeDefinition
	(
	)
	CustomerByLastNameDict completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:15:12:46:04.664;
	)
	Decimal completeDefinition
	(
	jadeMethodDefinitions
		withTax(): Decimal number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:07:14:15:36.248;
	)
memberKeyDefinitions
	CustomerByLastNameDict completeDefinition
	(
		lastName caseInsensitive Latin1;
	)
databaseDefinitions
	SimpleBankModelDb
	(
	setModifiedTimeStamp "jorda" "22.0.03" 2024:03:01:13:15:18.152;
	databaseFileDefinitions
		"simplebankcustomer" number = 54;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:01:13:16:25.904;
		"simplebankmodel" number = 53;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:03:01:13:15:18.152;
	defaultFileDefinition "simplebankmodel";
	classMapDefinitions
		Bank in "simplebankcustomer";
		Customer in "simplebankcustomer";
		CustomerByLastNameDict in "simplebankcustomer";
		GSimpleBankModel in "simplebankmodel";
		SSimpleBankModel in "_environ";
		SimpleBankModel in "_usergui";
	)
typeSources
	SimpleBankModel (
	jadeMethodSources
initialize
{
initialize() updating;

begin
	// Use the first instance of the bank class
	self.myBank := Bank.firstInstance;
	
	if self.myBank = null then
		beginTransaction;
		create self.myBank persistent;
		commitTransaction;
	endif;
	
end;
}
	)
	Bank (
	jadeMethodSources
nextCustomerNumber
{
nextCustomerNumber(): Integer updating;


begin
	self.customerNumber := self.customerNumber + 1;
	return self.customerNumber;

end;
}
	)
	Customer (
	jadeMethodSources
create
{
create(cFirstName, cLastName, cPhone, cStreetAddress, cSuburb, cCity : String;
		cCreditScore: Integer) updating;

begin
	self.number := app.myBank.nextCustomerNumber();
	// .trimBlanks() removes whitespace
	self.firstName := cFirstName.trimBlanks();
	self.lastName := cLastName.trimBlanks();
	self.phone := cPhone.trimBlanks();
	self.streetAddress := cStreetAddress.trimBlanks();
	self.suburb := cSuburb.trimBlanks();
	self.city := cCity.trimBlanks();
	self.creditScore := cCreditScore;
	
	app.myBank.allCustomers.add(self);

end;
}
getFullName
{
getFullName(): String;

begin

	return self.firstName & " " & self.lastName;

end;
}
	)
	JadeScript (
	jadeMethodSources
createCustomer
{
createCustomer() updating;

vars

	customer : Customer;
	firstName : String;
	lastName : String;

begin
	app.initialize();
	
	read firstName;
	read lastName;
	
	beginTransaction;
	
	customer := create Customer(firstName, lastName,
								'+64-03-266-0400', '32 Dovdale Avenue',
								'Upper Riccarton', 'Christchurch',
								500);
	commitTransaction;
	
	// Object Identidier (Oid) is the primary key in the database, created automaticaly by Jade
	
	write "Created customer " & customer.getFullName() & " with OID " & customer.getOidString();

end;
}
createCustomerFromFile
{
createCustomerFromFile();

vars

	inputFile : File;
	firstLine : String;
	fileLine : String;
	customer : Customer;

begin

	app.initialize();
	
	create inputFile transient;
	inputFile.fileName := "C:\Users\jorda\Downloads\chch_customers.txt";
	
	// fixes werid bug
	inputFile.kind := File.Kind_Unknown_Text;
	
	//skip one line because it contains the column names
	firstLine := inputFile.readLine();
	
	while not inputFile.endOfFile() do
		
		// read the line
		fileLine := inputFile.readLine();
		
		beginTransaction;
			//create a new customer
			customer := create Customer(
				fileLine[1:11], 
				fileLine[13:11], 
				fileLine[25:15], 
				fileLine[41:30], 
				fileLine[72:20], 
				fileLine[93:12], 
				fileLine[106:3].Integer
				);
			
			// Write a notification to the Jade Output Window
			write "Created customer #" & customer.getPropertyValue("number").String & " " & 
				customer.getFullName() & " with OID " & customer.getOidString();
		commitTransaction;
	endwhile;

	epilog
		// delete transient variable so doesnt clog up
		delete inputFile;
	
end;
}
purgeCustomers
{
purgeCustomers() updating;

vars

begin
	beginTransaction;
		//Customer.instances.purge;
		Bank.firstInstance.allCustomers.purge();
		Bank.firstInstance.setPropertyValue('customerNumber', 0);
	commitTransaction;
end;
}
runCustomerDetailsForm
{
runCustomerDetailsForm();

vars
	form : CustomerDetails;
	btn : Integer;
	result : Boolean;

begin
	app.initialize();
	create form transient;
	form.show();
	form.txtFirstName.text := "Gilbert";
	form.txtLastName.text := "Simpson";
	// for testing, we leaving this one blank
	form.txtPhone.text := "+64-03-260-7260";
	form.txtStreetAddress.text := "494 Moorhouse Avenue";
	form.txtSuburb.text := "Central City";
	form.txtCity.text := "Christchurch";
	
	btn := app.msgBox("Click OK to call to call isFormFilled method", "Test isFormFilled Method?", MsgBox_OK_Cancel);
	
	if btn = MsgBox_Return_OK then
		result := form.isFormFilled();
	endif;
	
	if result then
		app.msgBox("The form has been filled!", "Hooray!", MsgBox_OK_Only);
	else
		app.msgBox("It appears the form hasnt been filled", "hmmm...", MsgBox_OK_Only);
	endif;

end;
}
workingDecimalType
{
workingDecimalType();

vars

	price : Decimal[6, 2];

begin

	price := 1000.0;
	write "Item Price: " & price.currencyFormat();
	write "Total Price: " & price.withTax.currencyFormat;

end;
}
workingWithDatesAndTimes
{
workingWithDatesAndTimes();

vars
	today: Date;
	tomorow: Date;
	christmas: Date;
	daysTillChristmas: Integer;
	now: Time;
	anHourLater: Time;
	timeDiff: TimeStampInterval;

begin
	write "Today is " & today.String;
	tomorow := today + 1;
	write "Tomorow is " & tomorow.String;
	
	christmas.setDate(25, 12, today.year);
	//another way of doing it
	christmas := "25/12/2024".asDate;
	write "Christmas is on " & christmas.String;
	
	daysTillChristmas := christmas.dayOfYear - today.dayOfYear;
	write "It's " & daysTillChristmas.String & " days till christmas";
	
	write "Now is is " & now.String;
	
	anHourLater := now + 1000 * 60 * 60; //1 hour in milleseconds
	write "An hour later it will be " & anHourLater.String;
	
	timeDiff := anHourLater.TimeStamp - now.TimeStamp;
	write "Time diff between now and then is" & timeDiff.String;

end;
}
workingWithNumbers
{
workingWithNumbers();

vars
	// 6 digits in total, 2 after decimal point
	price : Decimal[6, 2];
	priceWithTax : Decimal[6, 2];

begin
	// assign inital values
	price := 1000.00;
	write "Item Price: " & price.String;
	
	// Calculate the total due, with an added 15% added
	priceWithTax := price * 1.15;
	write "Total Due: " & priceWithTax.String;

end;
}
workingWithStrings
{
workingWithStrings();

vars

	message : String;

begin

	message := "Hello JADE World!";

	// Substring operator
	write message[7];
	write message[7:4];		// start at index 7, and go 4 chars
	write message[7:end];	// start at index 7, go to end
	write message.toLower;
	write message.toUpper;
	write "JADE found at position " & message.pos('JADE', 1).String;
	

end;
}
	)
	CustomerDetails (
	jadeMethodSources
btnCancel_click
{
btnCancel_click(btn: Button input) updating;

vars

begin
	self.unloadForm();

end;
}
clearForm
{
clearForm();

begin

	txtFirstName.text := "";
	txtLastName.text := "";
	txtPhone.text := "";
	txtStreetAddress.text := "";
	txtCity.text := "";
	txtSuburb.text := "";
	txtFirstName.setFocus();
	statusLine.caption := "";
end;
}
isFormFilled
{
isFormFilled(): Boolean;


begin
	
	if txtFirstName.text = "" then
		txtFirstName.setFocus();
		statusLine.caption := "Please enter first name";
		return false;
	elseif txtLastName.text = "" then
		txtLastName.setFocus();
		statusLine.caption := "Please enter last name";
		return false;
	elseif txtPhone.text = "" then
		txtPhone.setFocus();
		statusLine.caption := "Please enter phone number";
		return false;
	elseif txtStreetAddress.text = "" then
		txtStreetAddress.setFocus();
		statusLine.caption := "Please enter street address";
		return false;
	elseif txtSuburb.text = "" then
		txtSuburb.setFocus();
		statusLine.caption := "Please enter suburb";
		return false;
	elseif txtCity.text = "" then
		txtCity.setFocus();
		statusLine.caption := "Please enter city";
		return false;
	endif;
	return true;
end;
}
	)
	Decimal (
	jadeMethodSources
withTax
{
withTax(): Decimal;


begin

	return self * 1.15;

end;
}
	)
