jadeVersionNumber "22.0.03";
schemaDefinition
SimpleBankModel subschemaOf RootSchema completeDefinition;
	setModifiedTimeStamp "Philippa" "18.0.01" 2020:02:26:10:10:55.455;
localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
	setModifiedTimeStamp "Philippa" "18.0.01" 2020:02:26:10:10:55.421;
typeHeaders
	SimpleBankModel subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, highestOrdinal = 1, number = 2052;
	Bank subclassOf Object highestSubId = 2, highestOrdinal = 4, number = 2058;
	BankAccount subclassOf Object abstract, highestOrdinal = 3, number = 2179;
	CurrentAccount subclassOf BankAccount highestOrdinal = 1, number = 2183;
	SavingsAccount subclassOf BankAccount highestOrdinal = 1, number = 2185;
	Customer subclassOf Object highestSubId = 1, highestOrdinal = 10, number = 2054;
	GSimpleBankModel subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2053;
	SSimpleBankModel subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2055;
	BankAccountByNumberDict subclassOf MemberKeyDictionary loadFactor = 66, number = 2184;
	CustomerByLastNameDict subclassOf MemberKeyDictionary duplicatesAllowed, loadFactor = 66, number = 2087;
	PrimTypeSet subclassOf Set loadFactor = 66, transient, number = 2180;
membershipDefinitions
	BankAccountByNumberDict of BankAccount;
	CustomerByLastNameDict of Customer;
	PrimTypeSet of PrimType;
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
	referenceDefinitions
		ourBank:                       Bank  readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:19:14:04:41.264;
	jadeMethodDefinitions
		initialize() updating, number = 1001;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:19:14:04:41.255;
	)
	Bank completeDefinition
	(
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:14:46:53.239;
	attributeDefinitions
		lastAccountNumber:             Integer protected, number = 3, ordinal = 4;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:14:46:53.239;
		lastCustomerNumber:            Integer protected, number = 1, ordinal = 1;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:14:35:17.460;
	referenceDefinitions
		allCustomers:                  CustomerByLastNameDict  implicitMemberInverse, readonly, subId = 1, number = 2, ordinal = 3;
		documentationText
`WARNING! The Bank (allCustomers) to Customer (myBank) relationship was defined
without inverses and requires manual maintenance.`
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:14:28:54.548;
	jadeMethodDefinitions
		create() updating, number = 1003;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:14:52:20.983;
		nextAccountNumber(): Integer updating, number = 1002;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:55:24.978;
		nextCustomerNumber(): Integer updating, number = 1001;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:14:35:17.444;
	)
	BankAccount completeDefinition
	(
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:10:19:17.912;
	constantDefinitions
		Default_Interest_Rate:         Real = 2.5 number = 1002;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:19:07:26.389;
		Default_Overdraft_Limit:       Integer = 500 number = 1001;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:12:12.144;
	attributeDefinitions
		accountNumber:                 Integer readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:10:19:44.756;
		balance:                       Decimal[12,2] protected, number = 3, ordinal = 3;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:21:34.509;
	referenceDefinitions
		myCustomer:                    Customer   explicitEmbeddedInverse, number = 2, ordinal = 2;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:10:32:38.080;
	jadeMethodDefinitions
		canWithdraw(amount: Decimal): Boolean abstract, number = 1002;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:19:36.642;
		create(number: Integer) updating, number = 1001;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:07:23.620;
		deposit(amount: Decimal) updating, number = 1003;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:21:42.898;
		getBalance(): Decimal number = 1004;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:22:44.932;
		withdraw(amount: Decimal) updating, number = 1005;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:24:09.884;
	)
	CurrentAccount completeDefinition
	(
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:10:20:08.021;
	attributeDefinitions
		overdraftLimit:                Integer readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:09:08.876;
	jadeMethodDefinitions
		canWithdraw(amount: Decimal): Boolean number = 1002;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:39:12.871;
		create(number: Integer) updating, number = 1001;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:12:51.577;
	)
	SavingsAccount completeDefinition
	(
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:15:26.169;
	attributeDefinitions
		interestRate:                  Decimal[12,1] readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:16:47.357;
	jadeMethodDefinitions
		canWithdraw(amount: Decimal): Boolean number = 1002;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:38:23.262;
		create(number: Integer) updating, number = 1001;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:18:26.670;
	)
	Customer completeDefinition
	(
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:01:11:39:32.095;
	attributeDefinitions
		city:                          String[21] protected, number = 6, ordinal = 6;
		setModifiedTimeStamp "Philippa" "18.0.01" 2020:02:26:10:55:13.107;
		creditScore:                   Integer readonly, number = 7, ordinal = 7;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:21:22:10.728;
		firstName:                     String[21] readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:21:00:18.847;
		lastName:                      String[21] readonly, number = 2, ordinal = 2;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:21:00:35.529;
		number:                        Integer protected, number = 8, ordinal = 8;
		setModifiedTimeStamp "Philippa" "18.0.01" 2020:02:26:10:55:33.005;
		phone:                         String[16] protected, number = 3, ordinal = 3;
		setModifiedTimeStamp "Philippa" "18.0.01" 2020:02:26:10:54:52.804;
		streetAddress:                 String[51] protected, number = 4, ordinal = 4;
		setModifiedTimeStamp "Philippa" "18.0.01" 2020:02:26:10:55:01.243;
		suburb:                        String[21] protected, number = 5, ordinal = 5;
		setModifiedTimeStamp "Philippa" "18.0.01" 2020:02:26:10:55:08.225;
	referenceDefinitions
		allBankAccounts:               BankAccountByNumberDict   explicitInverse, subId = 1, number = 10, ordinal = 10;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:10:32:36.256;
		myBank:                        Bank  protected, number = 9, ordinal = 9;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:06:13:14:17.202;
	jadeMethodDefinitions
		create(
			cFirstName: String; 
			cLastName: String; 
			cPhone: String; 
			cStreetAddress: String; 
			cSuburb: String; 
			cCity: String; 
			cCreditScore: Integer) updating, number = 1001;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:12:53:20.077;
		getFullName(): String number = 1002;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:20:57:26.171;
		getNumber(): Integer number = 1003;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:02:02:12:43.581;
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
	JadeScript completeDefinition
	(
	jadeMethodDefinitions
		createCustomersFromFile() number = 1006;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:02:02:23:51.187;
		createTestAccounts() updating, number = 1009;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:47:44.670;
		createTestCustomer() updating, number = 1001;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:00:27.632;
		iterationWithForeach() number = 1013;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:21:43:23.017;
		iterationWithIterator() number = 1014;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:21:25:14.341;
		purgeAccounts() updating, number = 1011;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:19:37:39.922;
		purgeCustomers() number = 1007;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:41:30.342;
		testAutomatedInverseAssignment() updating, number = 1010;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:17:09:56.489;
		workingDecimalType() number = 1003;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:11:12:50:24.635;
		workingWithDatesAndTimes() number = 1005;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:06:12:22:03.828;
		workingWithNumbers() number = 1002;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:05:15:43:50.869;
		workingWithStrings() number = 1004;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:05:19:43:32.228;
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
	Window completeDefinition
	(
	)
	Form completeDefinition
	(
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
	BankAccountByNumberDict completeDefinition
	(
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:19:22:19.437;
	)
	CustomerByLastNameDict completeDefinition
	(
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:13:14:14:12.156;
	)
	Set completeDefinition
	(
	)
	PrimTypeSet completeDefinition
	(
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:19:15:01:09.472;
	)
	Decimal completeDefinition
	(
	jadeMethodDefinitions
		withTax(): Decimal number = 1001;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:05:15:41:05.216;
	)
memberKeyDefinitions
	BankAccountByNumberDict completeDefinition
	(
		accountNumber;
	)
	CustomerByLastNameDict completeDefinition
	(
		lastName;
	)
inverseDefinitions
	allBankAccounts of Customer automatic peerOf myCustomer of BankAccount manual;

databaseDefinitions
	SimpleBankModelDb
	(
	setModifiedTimeStamp "Philippa" "18.0.01" 2020:02:26:10:10:55.457;
	databaseFileDefinitions
		"simplebankaccount" number = 64;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:10:18:08.973;
		"simplebankcustomer" number = 54;
		setModifiedTimeStamp "Philippa" "18.0.01" 2020:02:26:10:39:06.027;
		"simplebankmodel" number = 53;
		setModifiedTimeStamp "Philippa" "18.0.01" 2020:02:26:10:10:55.457;
	defaultFileDefinition "simplebankmodel";
	classMapDefinitions
		Bank in "simplebankmodel";
		BankAccount in "simplebankaccount";
		BankAccountByNumberDict in "simplebankaccount";
		CurrentAccount in "simplebankaccount";
		Customer in "simplebankcustomer";
		CustomerByLastNameDict in "simplebankcustomer";
		GSimpleBankModel in "simplebankmodel";
		PrimTypeSet in "simplebankmodel";
		SSimpleBankModel in "_environ";
		SavingsAccount in "simplebankaccount";
		SimpleBankModel in "_usergui";
	)
typeSources
	SimpleBankModel (
	jadeMethodSources
initialize
{
/*
Ensure the SimpleBankModel instance has at most one instance of the Bank class
at any time.
*/
initialize() updating;

begin
	// Use the first instance of the Bank class... that is, if exists.
	self.ourBank := Bank.firstInstance();
	
	if self.ourBank = null then
		beginTransaction;
		create self.ourBank persistent;
		commitTransaction;
	endif;
end;
}
	)
	Bank (
	jadeMethodSources
create
{
create() updating;

vars

begin
	self.lastAccountNumber :=  1000000000; // 1,000,000,000 to MaxInteger (2147483647, 2^21 -1).
	self.lastCustomerNumber := 0;

end;
}
nextAccountNumber
{
nextAccountNumber() : Integer updating;

vars

begin
	// Note that in this context lastAccountNumber is the same as self.lastAccount number!
	// It is better practice to remember the self reference.
	lastAccountNumber := lastAccountNumber + 1;
	return lastAccountNumber;

end;
}
nextCustomerNumber
{
nextCustomerNumber() : Integer updating;

begin
	self.lastCustomerNumber := self.lastCustomerNumber + 1;
	return self.lastCustomerNumber;
end;
}
	)
	BankAccount (
	jadeMethodSources
canWithdraw
{
canWithdraw(amount : Decimal) : Boolean abstract;
}
create
{
create(number : Integer) updating;

vars

begin
	self.accountNumber := number;

end;
}
deposit
{
deposit(amount: Decimal) updating;

vars

begin
	self.balance := self.balance + amount;

end;
}
getBalance
{
getBalance() : Decimal;

vars

begin
	return self.balance;

end;
}
withdraw
{
withdraw(amount: Decimal) updating;

vars

begin
	if self.canWithdraw(amount) then
		self.balance := self.balance - amount;
	endif;

end;
}
	)
	CurrentAccount (
	jadeMethodSources
canWithdraw
{
canWithdraw(amount: Decimal): Boolean;

vars

begin
	// Can't withdraw if amount is greater than the sum of balance and overdraft.
	if amount > self.balance + self.overdraftLimit then
		return false;
	else
		return true;
	endif;

end;
}
create
{
create(number : Integer) ::super(number) updating;

vars

begin
	self.overdraftLimit := BankAccount.Default_Overdraft_Limit;

end;
}
	)
	SavingsAccount (
	jadeMethodSources
canWithdraw
{
canWithdraw(amount: Decimal): Boolean;

begin
	// Shorthand notation.
	return (self.balance - amount) >= 0;

end;
}
create
{
create(number : Integer) ::super(number) updating;

vars

begin
	self.interestRate := BankAccount.Default_Interest_Rate;

end;
}
	)
	Customer (
	jadeMethodSources
create
{
/*
 * Parameterised constructor.
 * Initialises all the attributes of the newly-created Customer-type objects.
 */
create(cFirstName, cLastName, cPhone, cStreetAddress, cSuburb, cCity : String;
		cCreditScore : Integer) updating;

begin


	self.number := app.ourBank.nextCustomerNumber();
	
	// The 'trimBlanks()' method is used to remove unwanted white space.
	self.firstName := cFirstName.trimBlanks();
	self.lastName := cLastName.trimBlanks();
	self.phone := cPhone.trimBlanks();
	self.streetAddress := cStreetAddress.trimBlanks();
	self.suburb := cSuburb.trimBlanks();
	self.city := cCity.trimBlanks();
	self.creditScore := cCreditScore;

	// Reference & collection maintenance, manual on both sides.
	self.myBank := app.ourBank;
	self.myBank.allCustomers.add(self);

end;
}
getFullName
{
getFullName() : String;

vars
	fullName : String;

begin
	
	fullName := self.lastName & ', ' & self.firstName;
	return fullName;

end;
}
getNumber
{
getNumber(): Integer;


begin

	return self.number;

end;
}
	)
	JadeScript (
	jadeMethodSources
createCustomersFromFile
{
createCustomersFromFile();

vars
	inputFile : File;
	firstLine : String;
	fileLine : String;
	customer : Customer;

begin
	// Make sure the root object (instance of the class Bank) is available
	app.initialize();
	
	// Prepare the input file for reading the data
	create inputFile transient;
	inputFile.fileName := "C:\Users\jorda\Downloads\chch_customers.txt";
	
	//This line prevents a specific error message which only some of you may experience.
	inputFile.kind := File.Kind_Unknown_Text;
	
	// Skip one line because it contains the column names.
	firstLine := inputFile.readLine();

	// This loop will terminate when we reach the end of inputFile.
	while not inputFile.endOfFile() do
		
		//Read the line.
		fileLine := inputFile.readLine();
		
		beginTransaction;
			// Create a new customer, and assign customer properties.
			/* Note: This code is incomplete. Examine the input file (in Notepad++) and
			 * count the starting positions and length of each field, like for the
			 * first field, firstName: filLine[1:11].
			 */
			customer :=
				// create Customer(fileLine[1:11], "", "", "", "", "", 0);
				create Customer(fileLine[1:11],
					fileLine[13:11],
					fileLine[25:15],
					fileLine[41:30],
					fileLine[72:20],
					fileLine[93:12],
					fileLine[106:3].Integer);
			
			// Write a notification to the Jade Interpreter Output window
			write "Created customer #" & customer.getPropertyValue("number").String & " " &
				  customer.getFullName() & " with OID " & customer.getOidString();

		commitTransaction;
	endwhile;
	
	//The epliog block is always executed, even if the preceeding code fails.
epilog
	/*
	* Here we delete the transient inputFile which was added earlier.
	* Without this line, we'd have lots and lots of copies of the inputFile clogging things up
	*/
	delete inputFile;

end;
}
createTestAccounts
{
/*
 * A test method to create a couple BankAccount instance, one for each subclass.
 */
createTestAccounts() updating;

vars
	curr : CurrentAccount;
	savs : SavingsAccount;

begin
	// Make sure the root object (instance of the class Bank) is available
	app.initialize();

	beginTransaction;
	curr := create CurrentAccount(app.ourBank.nextAccountNumber()) persistent;
	savs := create SavingsAccount(app.ourBank.nextAccountNumber()) persistent;
	commitTransaction;

end;
}
createTestCustomer
{
/*
 * A test method to create one Customer instance in the database.
 */
createTestCustomer() updating;

vars
	customer : Customer;
	firstName : String;
	lastName : String;

begin
	app.initialize();
	
	read firstName;
	read lastName;
	
	beginTransaction;
	// Create a new Customer object, and set the customer object attribute values.
	// All customers happen to reside in the UC halls of residence at this stage.
	customer := create Customer(firstName, lastName,
								'+64-03-266-0400', '32 Dovdale Avenue',
								'Upper Riccarton', 'Chisrtchurch',
								500);
	commitTransaction;
	
	/*
	 * The Object Identifier is the Primary Key (PK) of the Object in the database,
	 * automatically created by the JADE object manager when creating new instances.
	 */
	write "Created customer " & customer.getFullName() &
			" with OID " & customer.getOidString();
end;
}
iterationWithForeach
{
iterationWithForeach();

vars
	cust : Customer;

begin
	app.clearWriteWindow();
	app.initialize();
	
	write "Running " & currentSchema.name & "::" & self.getName() & "::" & method.name & " method." & CrLf;
	write "Customers with A. A. initials:" & CrLf;
	
	foreach cust in app.ourBank.allCustomers 
	where cust.lastName[1] = 'A' and cust.firstName[1] = 'A'
	do
		write cust.lastName & ", " & cust.firstName;
	endforeach;
	
end;
}
iterationWithIterator
{
iterationWithIterator();

vars
	iter : Iterator;
	cust : Customer;
	sum : Integer;
	
begin
	app.clearWriteWindow();
	app.initialize();
	write "Running " & currentSchema.name & "::" & self.getName() & "::" & method.name & " method." & CrLf;
	write "The average credit score is:" & CrLf;
	
	iter := app.ourBank.allCustomers.createIterator();
	
	while iter.next(cust) do
		sum := sum + cust.creditScore;
	endwhile;
	
	write (sum / app.ourBank.allCustomers.size()).String;

	
end;
}
purgeAccounts
{
purgeAccounts() updating;

vars
	instances : ObjectArray;

begin
	beginTransaction;
	app.clearWriteWindow();
	
	create instances transient;
	// Note the use of the allInstances method to get all BankAccount subclasses' 
	// instances.
	BankAccount.allInstances(instances, Max_Integer, true);
	instances.purge();
	
	// Reset account number initial value.
	Bank.firstInstance().setPropertyValue('lastAccountNumber', 1000000000);
	commitTransaction;
end;
}
purgeCustomers
{
purgeCustomers();

begin
	beginTransaction;
	// Customer.instances.purge();
	Bank.firstInstance().allCustomers.purge();
	// Reset customer number initial value.
	Bank.firstInstance().setPropertyValue('lastCustomerNumber', 0);
	commitTransaction;
end;
}
testAutomatedInverseAssignment
{
testAutomatedInverseAssignment() updating;

vars
	curr : CurrentAccount;
	savs : SavingsAccount;
	cust : Customer;
	
	currIncluded, savsIncluded : Boolean;

begin
	// Make sure the root object (instance of the class Bank) is available
	app.initialize();
	
	// There should be at least one instance.
	curr := CurrentAccount.firstInstance();
	// There should be at least one instance.
	savs := SavingsAccount.firstInstance();
	// Note the subscript array-like element acces by dictionary (lastName) key!
	cust := app.ourBank.allCustomers['Acevedo'];
	
	// This is a checkpoint.
	// Have you imported Customer data from file?
	// Have you declared and instantiated the BankAccount subclasses?
	if curr = null or savs = null or cust = null then
		app.msgBox("Either the instances of the current and savings accounts, " &
				"or customer instance (last name 'Acevedo') have not been " &
				"created/found in the database." & CrLf & CrLf &
				"Retrace the steps, debug, or consult tutor or your study buddy!",
				"Oops!", MsgBox_OK_Only);
		return;
	endif;

	beginTransaction;
	// Neither Customer class, nor BankAccount class take responsibility
	// for eachother's assignment/collection membership.
	
	// Manual inverse/collection assigrment.
	curr.myCustomer := cust;
	savs.myCustomer := cust;
	
	// Automatic inverse/collection membership executed explicitly.
	// WARNING: if uncommented, this won't compile!
	// cust.allBankAccounts.add(curr);
	// cust.allBankAccounts.add(savs);
	commitTransaction;
	
	currIncluded := cust.allBankAccounts.includes(curr);
	savsIncluded := cust.allBankAccounts.includes(savs);
	
	if currIncluded and savsIncluded then
		app.msgBox("It appears automatic inverse assignment " &
		"has been set up correctly!", "Hooray!!!", MsgBox_OK_Only);
	else
		app.msgBox("Somtheing's not right with automatic inverse assignment..."
		& CrLf & CrLf &
		"Again, retrace the steps, debug, or consult tutor or your study buddy!",
		"Arrgh!", MsgBox_OK_Only);
	endif;
end;
}
workingDecimalType
{
workingDecimalType();

vars
	// 6 digits in total, with 2 digits after the decimal place.
	price : Decimal[6, 2];
	priceWithTax : Decimal[6, 2];
	
begin
	// Assign initial value.
	price := 1000.00;
	priceWithTax := price.withTax();
	write "Item price: " & price.currencyFormat();
	write "Total due: " & priceWithTax.currencyFormat();

end;
}
workingWithDatesAndTimes
{
workingWithDatesAndTimes();

vars
	today : Date;
	tomorrow : Date;
	christmas : Date;
	daysTillChristmas : Integer;
	now : Time;
	anHourLater : Time;
	timeDiff : TimeStampInterval;

begin
	write "Today is " & today.String;
	// Date arithmetic: adding (subtracting) days.
	tomorrow := today + 1;
	write "Tomorrow is " & tomorrow.String; 
	
	// One way of assigning dates.
	christmas.setDate(25, 12, today.year);
	// A simpler way of assigning dates.
	christmas := "25/12/2024".asDate();
	write "Christmas is on " & christmas.String;

	// Subtract one Date from another.
	daysTillChristmas := christmas - today;
	write "It's another " & daysTillChristmas.String & " days till Christmas";
	
	write "Now it is " & now.String;
	// Add the number of milliseconds in one hour.
	anHourLater := now + 60 * 60 * 1000; // Milliseconds in an hour.
	write "An hour later it will be " & anHourLater.String;
	
	// Look up the documentation how to subtract one date from another
	// to obtain a TimeStampInterval value of this sort: "0:01:00:00.000".
	timeDiff := anHourLater.subtract(now);
	write "The time differente betwen now and then is " & timeDiff.String;
		
end;
}
workingWithNumbers
{
workingWithNumbers();

vars
	// 6 digits in total, with 2 digits after the decimal place.
	price : Decimal[6, 2];
	priceWithTax : Decimal[6, 2];
	
begin
	// Assign initial value.
	price := 1000.00;
	write "Item price: " & price.String;
	
	// Calculate the total due, with an added 15% tax (GST).
	priceWithTax := price * 1.15;
	write "Total due: " & priceWithTax.String;

end;
}
workingWithStrings
{
workingWithStrings();

vars
	message : String;

begin
	message := "Hello JADE World";
	
	// Substring operator examples.
	write message[7]; // Extract a single character at position 7.
	write message[7:4]; // Extract a substring starting at position 7 of length 4.
	write message[7:end]; // Extract a substring starting at position 7 to the end.
	
	// Insert code to produce the rest of required ouptut.
	write message.toLower();
	write message.toUpper();
	write '"JADE" found at position ' & message.pos("JADE", 1).String;

end;
}
	)
	Decimal (
	jadeMethodSources
withTax
{
withTax() : Decimal;

begin
	 // Complete the calculation to return the value with added 15% tax.
	return self * 1.15;
end;
}
	)
