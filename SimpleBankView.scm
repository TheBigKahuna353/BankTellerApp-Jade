jadeVersionNumber "22.0.03";
schemaDefinition
SimpleBankView subschemaOf SimpleBankModel completeDefinition;
	setModifiedTimeStamp "cza14" "16.0.01" 2017:02:24:18:50:00.343;
localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
	setModifiedTimeStamp "cza14" "22.0.03" 2024:03:13:16:39:52.846;
typeHeaders
	SimpleBankView subclassOf SimpleBankModel transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2088;
	GSimpleBankView subclassOf GSimpleBankModel transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2089;
	SSimpleBankView subclassOf SSimpleBankModel transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2090;
	CustomerDetails subclassOf Form transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 15, number = 2092;
	CustomerAdd subclassOf CustomerDetails transient, transientAllowed, subclassTransientAllowed, number = 2186;
	CustomerSearch subclassOf Form transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 6, number = 2069;
membershipDefinitions
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
		setModifiedTimeStamp "Philippa" "18.0.01" 2020:02:26:10:10:55.454;
	)
	SimpleBankView completeDefinition
	(
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:13:16:39:52.873;
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GSimpleBankModel completeDefinition
	(
		setModifiedTimeStamp "Philippa" "18.0.01" 2020:02:26:10:10:55.454;
	)
	GSimpleBankView completeDefinition
	(
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:13:16:39:52.873;
	)
	JadeScript completeDefinition
	(
	jadeMethodDefinitions
		runCustomerAddForm() number = 1012;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:17:44:20.273;
		runCustomerDetailsForm() number = 1008;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:17:41:21.977;
		runSearchCustomerForms() number = 1015;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:02:01:43:18.858;
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
		setModifiedTimeStamp "Philippa" "18.0.01" 2020:02:26:10:10:55.455;
	)
	SSimpleBankView completeDefinition
	(
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:13:16:39:52.874;
	)
	Window completeDefinition
	(
	)
	Form completeDefinition
	(
	)
	CustomerDetails completeDefinition
	(
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:14:13:42:53.862;
	referenceDefinitions
		btnCancel:                     Button  number = 2, ordinal = 2;
		setModifiedTimeStamp "cza14" "16.0.01" 2017:02:27:18:20:23.280;
		btnOK:                         Button  number = 1, ordinal = 1;
		setModifiedTimeStamp "cza14" "16.0.01" 2017:02:27:18:20:23.277;
		city:                          Label  number = 12, ordinal = 12;
		setModifiedTimeStamp "cza14" "16.0.01" 2017:02:27:18:20:23.285;
		firstName:                     Label  number = 3, ordinal = 3;
		setModifiedTimeStamp "cza14" "16.0.01" 2017:02:27:18:20:23.281;
		lastName:                      Label  number = 4, ordinal = 4;
		setModifiedTimeStamp "cza14" "16.0.01" 2017:02:27:18:20:23.282;
		phone:                         Label  number = 10, ordinal = 10;
		setModifiedTimeStamp "cza14" "16.0.01" 2017:02:27:18:20:23.284;
		statusLine:                    StatusLine  number = 6, ordinal = 6;
		setModifiedTimeStamp "cza14" "16.0.01" 2017:02:27:18:20:23.283;
		streetAddress:                 Label  number = 5, ordinal = 5;
		setModifiedTimeStamp "cza14" "16.0.01" 2017:02:27:18:20:23.283;
		suburb:                        Label  number = 11, ordinal = 11;
		setModifiedTimeStamp "cza14" "16.0.01" 2017:02:27:18:20:23.285;
		txtCity:                       TextBox  number = 15, ordinal = 15;
		setModifiedTimeStamp "cza14" "16.0.01" 2017:02:27:18:20:23.286;
		txtFirstName:                  TextBox  number = 7, ordinal = 7;
		setModifiedTimeStamp "cza14" "16.0.01" 2017:02:27:18:20:23.283;
		txtLastName:                   TextBox  number = 8, ordinal = 8;
		setModifiedTimeStamp "cza14" "16.0.01" 2017:02:27:18:20:23.284;
		txtPhone:                      TextBox  number = 9, ordinal = 9;
		setModifiedTimeStamp "cza14" "16.0.01" 2017:02:27:18:20:23.284;
		txtStreetAddress:              TextBox  number = 13, ordinal = 13;
		setModifiedTimeStamp "cza14" "16.0.01" 2017:02:27:18:20:23.285;
		txtSuburb:                     TextBox  number = 14, ordinal = 14;
		setModifiedTimeStamp "cza14" "16.0.01" 2017:02:27:18:20:23.285;
	jadeMethodDefinitions
		btnCancel_click(btn: Button input) updating, number = 1001;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:14:12:25:02.455;
		clearForm() number = 1002;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:14:13:42:44.577;
		isFormFilled(): Boolean number = 1003;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:14:13:43:00.014;
		showCustomer(customer: Customer) updating, number = 1004;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:02:02:22:00.186;
	eventMethodMappings
		btnCancel_click = click of Button;
	)
	CustomerAdd completeDefinition
	(
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:17:24:49.520;
	jadeMethodDefinitions
		btnOK_click(btn: Button input) updating, number = 1002;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:17:39:06.070;
		createCustomer() number = 1001;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:20:42:32.870;
	eventMethodMappings
		btnOK_click = click of Button;
	)
	CustomerSearch completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:02:02:26:53.825;
	referenceDefinitions
		label1:                        Label  number = 1, ordinal = 1;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:02:01:30:35.016;
		label3:                        Label  number = 4, ordinal = 4;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:02:01:30:35.017;
		nameTextbox:                   TextBox  number = 5, ordinal = 5;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:02:01:30:35.017;
		numberLabel:                   Label  number = 3, ordinal = 3;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:02:01:30:35.017;
		submit:                        Button  number = 6, ordinal = 6;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:02:01:30:35.018;
		textBox1:                      TextBox  number = 2, ordinal = 2;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:02:01:30:35.017;
	jadeMethodDefinitions
		click() updating, number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:02:02:15:08.936;
		submit_click(btn: Button input) updating, number = 1002;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:02:02:32:51.962;
	eventMethodMappings
		click = click of Form;
		submit_click = click of Button;
	)
databaseDefinitions
	SimpleBankViewDb
	(
	setModifiedTimeStamp "cza14" "16.0.01" 2017:02:24:18:50:00.343;
	databaseFileDefinitions
		"simplebankview" number = 55;
		setModifiedTimeStamp "cza14" "16.0.01" 2017:02:24:18:50:00.343;
	defaultFileDefinition "simplebankview";
	classMapDefinitions
		GSimpleBankView in "simplebankview";
		SSimpleBankView in "_environ";
		SimpleBankView in "_usergui";
	)
typeSources
	JadeScript (
	jadeMethodSources
runCustomerAddForm
{
runCustomerAddForm();

vars
	form : CustomerAdd;
		
begin
	app.initialize();
	create form transient;
	form.show();
	
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
	// Say, for testing purposes we want to leave this field blank.
	// form.txtPhone.text := "+64-03-260-7260";
	form.txtStreetAddress.text := "494 Moorhouse Avenue";
	form.txtSuburb.text := "Central City";
	form.txtCity.text := "Christchurch";
	
	
	btn := app.msgBox("Click OK to call isFormFilled method.",
					"Test isFormFilled Method?",
					MsgBox_OK_Cancel);
					
	if btn = MsgBox_Return_OK then
		result := form.isFormFilled();
	endif;
	
	if result then
		app.msgBox("The form has been filled!",
				"Hooray!", MsgBox_OK_Only);
	else
		app.msgBox("It appears the form hasn't been filled.",
				"Hmmm...", MsgBox_OK_Only);
	endif;

end;
}
runSearchCustomerForms
{
runSearchCustomerForms();

vars
	searchForm : CustomerSearch;
	detailsForm : CustomerDetails;

begin

	app.initialize();
	
	create searchForm transient;
	
	searchForm.show();
	
	
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
	txtSuburb.text := "";
	txtCity.text := "";
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
showCustomer
{
showCustomer(customer: Customer) updating;

vars

begin

	self.show();
	self.txtFirstName.text := customer.firstName;
	self.txtLastName.text := customer.lastName;
	self.txtStreetAddress.text := customer.getPropertyValue("streetAddress").asString();
	self.txtCity.text := customer.getPropertyValue("city").asString();
	self.txtPhone.text := customer.getPropertyValue("phone").asString();
	self.txtSuburb.text := customer.getPropertyValue("suburb").asString();
	
end;
}
	)
	CustomerAdd (
	jadeMethodSources
btnOK_click
{
btnOK_click(btn: Button input) updating;

vars

begin
	if self.isFormFilled() then
		self.createCustomer();
		self.clearForm();
		self.statusLine.caption := "Customer successfully added!";
	endif;

end;
}
createCustomer
{
createCustomer();

vars
	cust : Customer;
	firstName, lastName, phone, address, suburb, city : String; 

begin
	firstName := self.txtFirstName.text.trimBlanks();
	lastName := self.txtLastName.text.trimBlanks();
	phone := self.txtPhone.text.trimBlanks();
	address := self.txtStreetAddress.text.trimBlanks();
	suburb := self.txtSuburb.text.trimBlanks();
	city := self.txtCity.text.trimBlanks();
	
	beginTransaction;
	// (Default) credit rating should be defined
	// as a constant in BankAccount class.
	cust := create Customer(firstName, lastName, phone,
							address, suburb, city, 300);
	commitTransaction;

end;
}
	)
	CustomerSearch (
	jadeMethodSources
click
{
click() updating;

vars

	custName : String;
	num : Integer;
	customer : Customer;
	temp : Customer;
	form : CustomerDetails;

begin

	custName := self.nameTextbox.text.trimBlanks();
	num := self.textBox1.getTextAsInteger();
	
	if not custName = "" then
		customer := app.ourBank.allCustomers.getAtKey(custName);
	elseif not num = 0 then
		foreach temp in app.ourBank.allCustomers
		where temp.getNumber() = num do
			customer := temp;
		endforeach;
	else
		app.msgBox("Could not find Customer", "404 Not Found", MsgBox_OK_Only);
		return;
	endif;
	
	self.unloadForm();
	create form transient;
	form.showCustomer(customer);
		

end;
}
submit_click
{
submit_click(btn: Button input) updating;

vars

	custName : String;
	num : Integer;
	customer : Customer;
	temp : Customer;
	form : CustomerDetails;
	foundCust : Boolean;

begin

	custName := self.nameTextbox.text.trimBlanks();
	num := self.textBox1.getTextAsInteger();
	foundCust := false;
	
	if not custName = "" then
		customer := app.ourBank.allCustomers.getAtKey(custName);
		if customer = null then
			app.msgBox("Could not find Customer", "404 Not Found", MsgBox_OK_Only);
			return;
		endif;
	elseif not num = 0 then
		foreach temp in app.ourBank.allCustomers
		where temp.getNumber() = num do
			customer := temp;
			foundCust := true;
		endforeach;
		if not foundCust then
			app.msgBox("Could not find Customer", "404 Not Found", MsgBox_OK_Only);
			return;
		endif;
	else
		app.msgBox("Please input customer's number or last name", "Error", MsgBox_OK_Only);
		return;
	endif;
	
	self.unloadForm();
	create form transient;
	form.showCustomer(customer);
		

end;
}
	)
