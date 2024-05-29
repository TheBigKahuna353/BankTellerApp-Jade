jadeVersionNumber "22.0.03";
schemaDefinition
SimpleBankModel subschemaOf RootSchema completeDefinition;
	setModifiedTimeStamp "Philippa" "18.0.01" 2020:02:26:10:10:55.455;
localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
	setModifiedTimeStamp "Philippa" "18.0.01" 2020:02:26:10:10:55.421;
typeHeaders
	SimpleBankModel subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, highestOrdinal = 2, number = 2052;
	Bank subclassOf Object highestSubId = 2, highestOrdinal = 6, number = 2058;
	BankAccount subclassOf Object abstract, highestSubId = 1, highestOrdinal = 5, number = 2179;
	CurrentAccount subclassOf BankAccount highestOrdinal = 1, number = 2183;
	SavingsAccount subclassOf BankAccount highestOrdinal = 1, number = 2185;
	Customer subclassOf Object highestSubId = 1, highestOrdinal = 10, number = 2054;
	DateInputException subclassOf NormalException transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2048;
	MissingPropertyException subclassOf NormalException transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2072;
	GSimpleBankModel subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2053;
	AccountXMLParser subclassOf JadeXMLParser transient, transientAllowed, subclassTransientAllowed, number = 2080;
	Transaction subclassOf Object abstract, highestOrdinal = 7, number = 2060;
	Deposit subclassOf Transaction number = 2061;
	Payment subclassOf Transaction number = 2064;
	Withdrawal subclassOf Transaction number = 2075;
	SSimpleBankModel subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2055;
	XMLHandler subclassOf Object number = 2071;
	BankAccountByNumberDict subclassOf MemberKeyDictionary loadFactor = 66, number = 2184;
	CustomerByLastNameDict subclassOf MemberKeyDictionary duplicatesAllowed, loadFactor = 66, number = 2087;
	TransactionsByDate subclassOf MemberKeyDictionary loadFactor = 66, number = 2068;
	TransactionsByNumber subclassOf MemberKeyDictionary loadFactor = 66, number = 2070;
	PrimTypeSet subclassOf Set loadFactor = 66, transient, number = 2180;
membershipDefinitions
	BankAccountByNumberDict of BankAccount;
	CustomerByLastNameDict of Customer;
	TransactionsByDate of Transaction;
	TransactionsByNumber of Transaction;
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
	constantDefinitions
		CWDJordan:                     String = "C:\Users\jorda\Documents\GitHub\BankTellerApp-Jade\" number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:18:21:14:32.772;
	attributeDefinitions
		cwd:                           String[31] readonly, number = 2, ordinal = 2;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:18:21:16:47.607;
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
	constantDefinitions
		CWD:                           String = "C:\Users\jorda\Documents\GitHub\BankTellerApp-Jade\" number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:18:21:12:57.168;
	attributeDefinitions
		lastAccountNumber:             Integer protected, number = 3, ordinal = 4;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:14:46:53.239;
		lastCustomerNumber:            Integer protected, number = 1, ordinal = 1;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:14:35:17.460;
		lastTransactionNumber:         Integer protected, number = 4, ordinal = 5;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:16:21:33:12.034;
	referenceDefinitions
		allBankAccounts:               BankAccountByNumberDict  implicitMemberInverse, subId = 2, number = 5, ordinal = 6;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:21:01:06:02.858;
		allCustomers:                  CustomerByLastNameDict  implicitMemberInverse, readonly, subId = 1, number = 2, ordinal = 3;
		documentationText
`WARNING! The Bank (allCustomers) to Customer (myBank) relationship was defined
without inverses and requires manual maintenance.`
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:14:28:54.548;
	jadeMethodDefinitions
		create() updating, number = 1003;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:25:16:23:50.010;
		getAllTransactions(): MergeIterator number = 1005;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:25:17:08:32.305;
		nextAccountNumber(): Integer updating, number = 1002;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:55:24.978;
		nextCustomerNumber(): Integer updating, number = 1001;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:14:35:17.444;
		nextTransactionNumber(): Integer updating, number = 1004;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:16:21:34:35.883;
	)
	BankAccount completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:25:15:43:37.096;
	constantDefinitions
		Default_Credit_Rating:         Integer = 300 number = 1003;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:16:21:49:27.914;
		Default_Interest_Rate:         Real = 2.5 number = 1002;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:19:07:26.389;
		Default_Overdraft_Limit:       Integer = 500 number = 1001;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:12:12.144;
	attributeDefinitions
		accountNumber:                 Integer readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:10:19:44.756;
		balance:                       Decimal[12,2] protected, number = 3, ordinal = 3;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:21:34.509;
		openingBalance:                Decimal[12] protected, number = 5, ordinal = 5;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:26:15:03:48.631;
	referenceDefinitions
		allTransactions:               TransactionsByNumber   explicitInverse, subId = 1, number = 4, ordinal = 4;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:15:52:15.533;
		myCustomer:                    Customer   explicitEmbeddedInverse, number = 2, ordinal = 2;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:15:53:00.392;
	jadeMethodDefinitions
		adjustBalances() updating, number = 1006;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:26:15:15:45.757;
		canWithdraw(amount: Decimal): Boolean abstract, number = 1002;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:19:36.642;
		create(cust: Customer) updating, number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:21:01:06:07.276;
		deposit(amount: Decimal) updating, number = 1003;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:21:42.898;
		getBalance(): Decimal number = 1004;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:22:44.932;
		setBalance(amount: Decimal) updating, number = 1007;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:24:15:44:53.089;
		setOpeningBalance(balance: Decimal) updating, number = 1008;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:26:15:11:03.126;
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
		create(cust: Customer) updating, number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:14:14:23:25.714;
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
		create(cust: Customer) updating, number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:14:14:23:43.883;
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
		allAccounts:                   BankAccountByNumberDict   explicitInverse, subId = 1, number = 10, ordinal = 10;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:15:53:00.392;
		myBank:                        Bank  protected, number = 9, ordinal = 9;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:06:13:14:17.202;
	jadeMethodDefinitions
		checkForNull() number = 1004;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:17:23:24:58.693;
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
	Exception completeDefinition
	(
	)
	NormalException completeDefinition
	(
	)
	DateInputException completeDefinition
	(
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:29:11:38:25.514;
	jadeMethodDefinitions
		create() updating, protected, number = 1001;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:29:11:47:31.524;
		setErrorText() updating, number = 1002;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:29:11:48:18.702;
	)
	MissingPropertyException completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:17:22:51:51.486;
	jadeMethodDefinitions
		create() updating, protected, number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:17:22:56:57.995;
		setErrorText(
			property: String; 
			class: Object) updating, number = 1002;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:17:23:01:47.999;
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
		addTransactions() number = 1018;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:21:01:04:52.373;
		createCustomersFromFile() number = 1006;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:15:16:48:00.029;
		createTestAccounts() updating, number = 1009;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:14:14:23:58.694;
		createTestCustomer() updating, number = 1001;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:00:27.632;
		importAndExportXML() number = 1021;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:21:01:04:52.373;
		iterationWithForeach() number = 1013;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:21:43:23.017;
		iterationWithIterator() number = 1014;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:21:25:14.341;
		purgeAccounts() updating, number = 1011;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:19:37:39.922;
		purgeCustomers() number = 1007;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:15:41:30.342;
		purgeTransactions() number = 1022;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:18:00:01:13.153;
		runXMLParser() number = 1024;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:18:21:44:03.096;
		saveTransaction() number = 1019;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:25:16:25:32.954;
		testAllTransactions() number = 1025;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:25:17:07:46.830;
		testAutomatedInverseAssignment() updating, number = 1010;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:21:01:04:52.373;
		testClass() number = 1017;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:16:23:32:31.850;
		testExcpetions() number = 1020;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:17:23:01:08.161;
		testRESTReq() number = 1023;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:19:00:20:16.897;
		workingDecimalType() number = 1003;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:11:12:50:24.635;
		workingWithDatesAndTimes() number = 1005;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:06:12:22:03.828;
		workingWithNumbers() number = 1002;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:05:15:43:50.869;
		workingWithStrings() number = 1004;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:05:19:43:32.228;
	)
	JadeXMLParser completeDefinition
	(
		setModifiedTimeStamp "<unknown>" "9.9.00" 10207 2007:02:01:14:22:25.365;
	)
	AccountXMLParser completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:18:21:39:58.658;
	jadeMethodDefinitions
		characters(text: String) updating, protected, number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:18:21:40:49.604;
		endElement(
			namespaceURI: String; 
			localName: String; 
			qualifiedName: String) updating, protected, number = 1002;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:18:21:41:16.847;
		startElement(
			namespaceURI: String; 
			localName: String; 
			qualifiedName: String; 
			attributeCount: Integer) updating, protected, number = 1003;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:18:21:41:38.087;
	)
	Transaction completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:26:15:04:36.093;
	attributeDefinitions
		accBalance:                    Decimal[12] protected, number = 3, ordinal = 7;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:26:15:05:07.575;
		amount:                        Decimal[12,2] protected, number = 4, ordinal = 4;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:14:13:13:22.339;
		date:                          Date protected, number = 1, ordinal = 1;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:14:13:08:29.257;
		number:                        Integer readonly, number = 6, ordinal = 6;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:25:16:11:17.898;
		payee:                         String[31] protected, number = 2, ordinal = 2;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:14:13:11:22.485;
	referenceDefinitions
		myAccount:                     BankAccount   explicitEmbeddedInverse, number = 5, ordinal = 5;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:15:52:15.530;
	jadeMethodDefinitions
		create(
			account: BankAccount; 
			amount: Decimal; 
			date: Date; 
			payee: String) updating, number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:26:15:09:01.396;
		getAmount(): Decimal number = 1002;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:26:15:06:05.304;
		getBalanceChange(): Decimal abstract, number = 1004;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:26:15:14:41.877;
		setBalance(amount: Decimal) updating, number = 1003;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:26:15:07:10.499;
	)
	Deposit completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:26:15:13:41.250;
	jadeMethodDefinitions
		create(
			account: BankAccount; 
			amount: Decimal; 
			date: Date; 
			payee: String) updating, number = 1001;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:16:22:30.536;
		getBalanceChange(): Decimal number = 1002;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:26:15:14:22.701;
	)
	Payment completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:14:13:15:50.480;
	jadeMethodDefinitions
		create(
			account: BankAccount; 
			amount: Decimal; 
			date: Date; 
			payee: String) updating, number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:25:15:40:36.882;
		getBalanceChange(): Decimal number = 1002;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:26:15:15:10.989;
	)
	Withdrawal completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:26:15:15:17.376;
	jadeMethodDefinitions
		create(
			account: BankAccount; 
			amount: Decimal; 
			date: Date; 
			payee: String) updating, number = 1001;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:16:22:43.929;
		getBalanceChange(): Decimal number = 1002;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:26:15:15:35.325;
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
	XMLHandler completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:16:21:51:27.784;
	jadeMethodDefinitions
		addCustDetails(
			cust: Customer; 
			root: JadeXMLElement io) number = 1004;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:18:00:13:57.637;
		addTransaction(
			tran: Transaction; 
			root: JadeXMLElement io) number = 1005;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:18:00:13:29.859;
		importTransactions(xml: JadeXMLDocument) number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:26:15:18:31.994;
		importXMLFile(file: String) number = 1006;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:17:23:42:10.866;
		saveAccount(acc: BankAccount) number = 1003;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:18:21:24:58.469;
		saveTransaction(tran: Transaction) number = 1002;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:17:23:34:33.292;
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
	TransactionsByDate completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:14:13:22:05.427;
	)
	TransactionsByNumber completeDefinition
	(
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:24:15:51:42.637;
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
	TransactionsByDate completeDefinition
	(
		date;
	)
	TransactionsByNumber completeDefinition
	(
		number;
	)
inverseDefinitions
	allTransactions of BankAccount automatic parentOf myAccount of Transaction manual;
	allAccounts of Customer automatic parentOf myCustomer of BankAccount manual;

databaseDefinitions
	SimpleBankModelDb
	(
	setModifiedTimeStamp "Philippa" "18.0.01" 2020:02:26:10:10:55.457;
	databaseFileDefinitions
		"simplebankaccount" number = 64;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:10:18:08.973;
		"simplebankcustomer" number = 53;
		setModifiedTimeStamp "Philippa" "18.0.01" 2020:02:26:10:39:06.027;
		"simplebankmodel" number = 62;
		setModifiedTimeStamp "Philippa" "18.0.01" 2020:02:26:10:10:55.457;
	defaultFileDefinition "simplebankmodel";
	classMapDefinitions
		AccountXMLParser in "simplebankmodel";
		Bank in "simplebankmodel";
		BankAccount in "simplebankaccount";
		BankAccountByNumberDict in "simplebankaccount";
		CurrentAccount in "simplebankaccount";
		Customer in "simplebankcustomer";
		CustomerByLastNameDict in "simplebankcustomer";
		DateInputException in "simplebankmodel";
		Deposit in "simplebankmodel";
		GSimpleBankModel in "simplebankmodel";
		MissingPropertyException in "simplebankmodel";
		Payment in "simplebankmodel";
		PrimTypeSet in "simplebankmodel";
		SSimpleBankModel in "_environ";
		SavingsAccount in "simplebankaccount";
		SimpleBankModel in "_usergui";
		Transaction in "simplebankmodel";
		TransactionsByDate in "simplebankmodel";
		TransactionsByNumber in "simplebankmodel";
		Withdrawal in "simplebankmodel";
		XMLHandler in "simplebankmodel";
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
	self.lastTransactionNumber := 0;

end;
}
getAllTransactions
{
getAllTransactions(): MergeIterator;

vars
	iter : MergeIterator;
	acc : BankAccount;

begin
	write self.allBankAccounts.size;

	create iter transient;
	foreach acc in allBankAccounts do
		write "adding collection";
		iter.addCollection(acc.allTransactions);
	endforeach;
	
	return iter;
		
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
nextTransactionNumber
{
nextTransactionNumber(): Integer updating;


begin

	lastAccountNumber += 1;
	return lastAccountNumber;
end;
}
	)
	BankAccount (
	jadeMethodSources
adjustBalances
{
adjustBalances() updating;

vars

	tran : Transaction;
	balance : Decimal[12, 2];

begin
	balance := openingBalance;
	
	foreach tran in allTransactions do
		balance := balance + tran.getBalanceChange();
		tran.setBalance(balance);
	endforeach;
	
	self.balance := balance;
end;
}
canWithdraw
{
canWithdraw(amount : Decimal) : Boolean abstract;
}
create
{
create(cust: Customer) updating;

vars

begin
	self.accountNumber := app.ourBank.nextAccountNumber();
	self.myCustomer := cust;
	app.ourBank.allBankAccounts.add(self);

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
setBalance
{
setBalance(amount : Decimal) updating;

vars
	
begin
	self.balance := amount;
end;
}
setOpeningBalance
{
setOpeningBalance(balance : Decimal) updating;

vars

begin

	self.openingBalance := balance;

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
create(cust: Customer) ::super(cust) updating;

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
create(cust: Customer) ::super(cust) updating;

vars

begin
	self.interestRate := BankAccount.Default_Interest_Rate;

end;
}
	)
	Customer (
	jadeMethodSources
checkForNull
{
checkForNull();

vars
	exception: MissingPropertyException;

begin
	
	if self.city = null then
		create exception;
		exception.setErrorText("city", self);
	elseif self.creditScore = null then
		create exception;
		exception.setErrorText("creditScore", self);
	elseif self.firstName = null then
		create exception;
		exception.setErrorText("firstName", self);
	elseif self.lastName = null then
		create exception;
		exception.setErrorText("lastName", self);
	elseif self.number = null then
		create exception;
		exception.setErrorText("number", self);
	elseif self.phone = null then
		create exception;
		exception.setErrorText("phone", self);
	elseif self.streetAddress = null then
		create exception;
		exception.setErrorText("streetAddress", self);
	elseif self.suburb = null then
		create exception;
		exception.setErrorText("suburb", self);
	endif;

end;
}
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
	DateInputException (
	jadeMethodSources
create
{
create() updating, protected;

begin

	self.errorCode := 6942;

end;
}
setErrorText
{
setErrorText() updating;

begin
	self.errorItem := "Incorrect format for date input, please input date as dd/mm/yyyy.";
end;
}
	)
	MissingPropertyException (
	jadeMethodSources
create
{
create() updating, protected;

begin

	self.errorCode := 6969;

end;
}
setErrorText
{
setErrorText(property: String; class: Object) updating;

begin

	self.errorItem := "Property: '" & property & "' on Object: " & class.String & " does not exist";

end;
}
	)
	JadeScript (
	jadeMethodSources
addTransactions
{
addTransactions();

vars
	
	xmlDoc		:	JadeXMLDocument;
	parser		:	JadeXMLDocumentParser;
	handler		: 	XMLHandler;
	current		:	CurrentAccount;
	savings		:	SavingsAccount;
	cust		:	Customer;

begin

	app.initialize();
	create xmlDoc transient;
	create parser transient;
	create handler transient;
	
	cust := app.ourBank.allCustomers.getAtKey("Higgins");
	
	// create accounts if none exist
	if cust.allAccounts.size = 0 then
		beginTransaction;
			current := create CurrentAccount(cust);
			savings := create SavingsAccount(cust);
		commitTransaction;
	endif;
	
	parser.parseDocumentFile(xmlDoc, "C:\Users\jorda\Documents\GitHub\BankTellerApp-Jade\XML files\account-statement.0.short.xml");
	handler.importTransactions(xmlDoc);
	
epilog

	delete xmlDoc;
	delete parser;

end;
}
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
	inputFile.fileName := "C:\Users\dkmor\OneDrive - University of Canterbury\Semester 1 2024\Info213\BankTellerApp-Jade\chch_customers.txt";
	
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
	customer : Customer;

begin
	// Make sure the root object (instance of the class Bank) is available
	app.initialize();

	beginTransaction;
	customer := create Customer("Test", "last name", "02745234", "123 fake street", "ilam", "chch", 500);
	curr := create CurrentAccount(customer) persistent;
	savs := create SavingsAccount(customer) persistent;
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
importAndExportXML
{
importAndExportXML();

constants
	Filename : String = "C:\Users\jorda\Documents\GitHub\BankTellerApp-Jade\XML files\account-statement.4.huge.debt.xml";

vars
	handler : XMLHandler;
	bankAcc : BankAccount;

begin

	app.initialize();
	
	create handler transient;
	bankAcc := app.ourBank.allCustomers.getAtKey("Higgins").allAccounts.first;
	
	// import transactions
	handler.importXMLFile(Filename);
	
	// export transactions
	handler.saveAccount(bankAcc);
	

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
purgeTransactions
{
purgeTransactions();

vars
	instances : ObjectArray;

begin
	beginTransaction;
	app.clearWriteWindow();
	
	create instances transient;
	// Note the use of the allInstances method to get all BankAccount subclasses' 
	// instances.
	Transaction.allInstances(instances, Max_Integer, true);
	instances.purge();
	
	// Reset account number initial value.
	Bank.firstInstance().setPropertyValue('lastTransactionNumber', 1000000000);
	commitTransaction;
end;
}
runXMLParser
{
runXMLParser();

vars
	parser : AccountXMLParser;

begin
	app.clearWriteWindow();
	
	create parser;
	parser.parseFile("C:\Users\jorda\Documents\GitHub\BankTellerApp-Jade\XML files\output.xml");
	
end;
}
saveTransaction
{
saveTransaction();

vars

	tran: Transaction;
	cust: Customer;
	acc : CurrentAccount;
	today : Date;
	handler: XMLHandler;

begin

	app.initialize();
	beginTransaction;
	cust := create Customer("John", "Madden", "02340234", "123 Fake Street", "Ilam", "chch", 500);
	acc := create CurrentAccount(cust);
	tran := create Deposit(acc, 500, today, "UC");
	commitTransaction;
	
	create handler transient;

	handler.saveTransaction(tran);
end;
}
testAllTransactions
{
testAllTransactions();

vars

	temp: Transaction;
	iter : MergeIterator;

begin

	app.initialize();
	iter := app.ourBank.getAllTransactions();
	write iter.getCollectionCount();

	

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
	
	currIncluded := cust.allAccounts.includes(curr);
	savsIncluded := cust.allAccounts.includes(savs);
	
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
testClass
{
testClass();

begin
	app.initialize();
	if app.ourBank.getName() = Bank.getName() then
		write "Passed";
	else
		write "failed";
	endif;

end;
}
testExcpetions
{
testExcpetions();

vars
	exception: MissingPropertyException;

begin

	app.initialize();
	create exception;
	exception.setErrorText("Name", app.ourBank);
	raise exception;
end;
}
testRESTReq
{
testRESTReq();


/*
	This is a quick and dirty prototype to demonstrate how to build and send an example/test XML file 
	in the body of a request to a REST API intended for XML file validation.
*/
constants
	FileLocation = app.CWDJordan & "XML Files/"; // This where the example XML file is located. 
	FileName = "account-statement.0.short.xml"; // This is the name of the XML file.
	End_Point = "http://c141kn.canterbury.ac.nz/sbmxmlv/"; // This is where we are sending those files. 
	Path = "uploadxml"; // This is the name of the service.
	BearerToken = "fa3b2c9c-a96d-48a8-82ad-0cb775dd3e5a"; // This should be your group bearer token. 
	DataName = "data";
	ContentType="application/xml";
vars
	file: File;
	client: JadeRestClient;
	request: JadeRestRequest;
	response: JadeRestResponse;
begin
	create file transient;
	file.fileName := FileLocation & FileName;
	file.kind := File.Kind_ANSI;
	client := create JadeRestClient(End_Point) transient; 
	request := create JadeRestRequest (Path) transient;
	request.addBearerToken (BearerToken);
	request.dataFormat := JadeRestRequest.DataFormat_MultipartFormData;
	
	/* This example uses an actual XML file saved on disk. However, when this example is adapted 
	* or integrated into the application, it is not necessary to generate/save XML files on disk.
	* Instead of the redundant step of file generation, an XML document created/generated in
	* memory can be converted to string representation (serialised) and then passed as the last
	* argument to the following method call, thus avoiding writing/reading XML data on disk. */
	
	request.addMultipartFormData(DataName, FileName, ContentType, file.readString(file.fileLength()));
	create response transient;
	client.post(request, response);
	write "Request posted to " & response.url & " returned status " &
		response.statusCode.String & " and this data [" & response.data & "].";
epilog
	delete client;
	delete response;
	delete request;

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
	AccountXMLParser (
	jadeMethodSources
characters
{
characters(text: String) updating, protected;

vars
	trimmedText : String;
	
begin
	trimmedText := text.trimBlanks();
	write trimmedText.pos(#"0D", 1); // Non-printable Cr (Carriage return).
	write trimmedText.pos(#"0D0A", 1); // Non-printable CrLf (Carriage return, line feed).
	write trimmedText.pos(#"0A", 1); // Non-printable Lf (Line feed).
	if trimmedText.length > 0 then
		write "'CHARS (length: " & trimmedText.length.String & ") |" & trimmedText & "|'";
	endif;

end;
}
endElement
{
endElement(namespaceURI: String; localName: String; qualifiedName: String) updating, protected;

vars

begin
	write localName & ">";

end;
}
startElement
{
startElement(namespaceURI: String; localName: String; qualifiedName: String; attributeCount: Integer) updating, protected;

vars
	idx : Integer;
	namespaceURIAttr : String;
	localNameAttr : String;
    qualifiedNameAttr : String;
    type : String;
    value: String;
			 
begin

	write "<" & localName & " (QN:" & qualifiedName & ")" & " with " & attributeCount.String & " attribute(s)";
	
	if attributeCount > 0 then
		foreach idx in 1 to attributeCount do
			getAttribute(idx, namespaceURIAttr, localNameAttr, qualifiedNameAttr, type, value);
			write "#" & idx.String & " " & localNameAttr & " (QNA:" & qualifiedNameAttr & ")" & " VAL: " & value;
		endforeach;
	endif;

end;
}
	)
	Transaction (
	jadeMethodSources
create
{
create(account : BankAccount; amount: Decimal; date: Date; payee: String) updating;

begin
	
	self.myAccount := account;
	self.amount := amount;
	self.date := date;
	self.payee := payee;
	self.number := app.ourBank.nextTransactionNumber();
	
	self.myAccount.adjustBalances();
	
end;
}
getAmount
{
getAmount(): Decimal;


begin

	return amount;

end;
}
getBalanceChange
{
getBalanceChange() : Decimal abstract;
}
setBalance
{
setBalance(amount: Decimal) updating;

vars

begin

	self.accBalance := amount;

end;
}
	)
	Deposit (
	jadeMethodSources
create
{
create(account : BankAccount; amount: Decimal; date: Date; payee: String) :: super(account, amount, date, payee) updating;

begin

end;
}
getBalanceChange
{
getBalanceChange() : Decimal;

begin

	return self.amount;

end;
}
	)
	Payment (
	jadeMethodSources
create
{
create(account : BankAccount; amount: Decimal; date: Date; payee: String) :: super(account, amount, date, payee) updating;

vars

begin

end;
}
getBalanceChange
{
getBalanceChange(): Decimal;

begin

	return -self.amount;

end;
}
	)
	Withdrawal (
	jadeMethodSources
create
{
create(account : BankAccount; amount: Decimal; date: Date; payee: String) :: super(account, amount, date, payee) updating;

vars

begin

end;
}
getBalanceChange
{
getBalanceChange(): Decimal;

begin

	return -amount;

end;
}
	)
	XMLHandler (
	jadeMethodSources
addCustDetails
{
addCustDetails(cust: Customer; root: JadeXMLElement io);

// adds the customers deatils in XML tags to the given XML Element called root


vars
	elmt : JadeXMLElement;
	text : String;


begin
	
	elmt := root.addElement("customer_number");
	text := cust.getNumber().String;
	
	elmt.setText(text);
	
	elmt := root.addElement("first_name");
	text := cust.getPropertyValue("firstName").String;
	elmt.setText(text);
	
	elmt := root.addElement("last_name");
	text := cust.getPropertyValue("lastName").String;
	elmt.setText(text);
	
	elmt := root.addElement("phone");
	text := cust.getPropertyValue("phone").String;
	elmt.setText(text);
	
	elmt := root.addElement("street_address");
	text := cust.getPropertyValue("streetAddress").String;
	elmt.setText(text);
	
	elmt := root.addElement("suburb");
	text := cust.getPropertyValue("suburb").String;
	elmt.setText(text);
	
	elmt := root.addElement("city");
	text := cust.getPropertyValue("city").String;
	elmt.setText(text);
	
	elmt := root.addElement("credit_score");
	text := cust.getPropertyValue("creditScore").String;
	elmt.setText(text);

end;
}
addTransaction
{
addTransaction(tran: Transaction; root: JadeXMLElement io);

// adds Transaction XML tags to XML Element called root

vars
	elmt : JadeXMLElement;

begin

	elmt := root.addElement("Date");
	elmt.setText(tran.getPropertyValue("date").Date.format("yyy-MM-dd"));
	
	if tran.getName() = "Deposit" then
		elmt := root.addElement("Deposit");
		elmt.setText(tran.getPropertyValue("amount").String);
	else
		elmt := root.addElement("Payment");
		elmt.setText(tran.getPropertyValue("amount").String);
	endif;
	
	elmt := root.addElement("Payee");
	elmt.setText(tran.getPropertyValue("payee").String);
	
	elmt := root.addElement("Balance");
	elmt.setText(tran.getPropertyValue("balance").String);
end;
}
importTransactions
{
importTransactions(xml: JadeXMLDocument);

// assumes customers exist in database but not account, so creates a new one

vars

	// Element variables
	elmnt, acc,
	cust, temp		:	JadeXMLElement;
	//Element arrays
	transactions		:	JadeXMLElementArray;
	
	lastName, payee,
	accType				: String;
	
	balance, amount		: Integer;
	
	date				: Date;
	
	customer			: Customer;
	bankAcc				: BankAccount;
	
	tran				: Transaction;
	
	i					: Integer;

begin

	cust := xml.getElementByTagName("customer");
	acc := xml.getElementByTagName("account");
	
	lastName := cust.getElementByTagName("last_name").textData;
	accType := acc.getAttributeByName("type").value;
	
	customer := app.ourBank.allCustomers.getAtKey(lastName);
	
	beginTransaction;
	
	if accType = "CurrentAccount" then
		bankAcc := create CurrentAccount(customer);
	else
		bankAcc := create SavingsAccount(customer);
	endif;
	
	create transactions transient;
	xml.getElementsByTagName("transaction", transactions);
	
	i := 0;
	foreach elmnt in transactions do
		payee := elmnt.getElementByTagName("Payee").textData;
		date := elmnt.getElementByTagName("Date").textData.asDate();
		balance := elmnt.getElementByTagName("Balance").textData.Integer;
		temp := elmnt.getElementByTagName("Deposit");
		if temp <> null then
			amount := elmnt.getElementByTagName("Deposit").textData.Integer;
			tran := create Deposit(bankAcc, amount, date, payee);
		else
			amount := elmnt.getElementByTagName("Payment").textData.Integer;
			tran := create Payment(bankAcc, amount, date, payee);
		endif;
		if i = 0 then
			bankAcc.setOpeningBalance(tran.getBalanceChange());
		endif;
		write "added Transaction";
	endforeach;
	commitTransaction;
end;
}
importXMLFile
{
importXMLFile(file: String);

vars
	
	xmlDoc		:	JadeXMLDocument;
	parser		:	JadeXMLDocumentParser;
	handler		: 	XMLHandler;

begin

	app.initialize();
	create xmlDoc transient;
	create parser transient;
	create handler transient;
	
	parser.parseDocumentFile(xmlDoc, file);
	handler.importTransactions(xmlDoc);
	
epilog

	delete xmlDoc;
	delete parser;

end;
}
saveAccount
{
saveAccount(acc: BankAccount);

// save all Transactions from a bank account

vars
	
	xml					:	JadeXMLDocument;
	statement, customer, 
	account, transactions,
	transaction, temp	:	JadeXMLElement;
	cust				: 	Customer;
	tran				:	Transaction;
	xmlCustDetails		: 	StringArray;
	

begin
	
	create xml transient;
	create xmlCustDetails transient;
	
	
	cust := acc.myCustomer;
	
	statement := xml.addElement("statement");
	
	// add customer details
	customer := statement.addElement("customer");
	self.addCustDetails(cust, customer);
	
	// add account
	account := statement.addElement("account");
	account.addAttribute("type", acc.getName());
	// add interestRate
	if acc.getName() = "CurrentAccount" then
		temp := account.addElement("overdraft_limit");
		temp.setText(acc.getPropertyValue("overdraftLimit").String);
	else
		temp := account.addElement("interest_rate");
		temp.setText(acc.getPropertyValue("interestRate").String);
	endif;
	
	//add transactions
	transactions := account.addElement("transactions");
	foreach tran in acc.allTransactions do
		transaction := transactions.addElement("transaction");
		
		self.addTransaction(tran, transaction);
	endforeach;
		
	xml.writeToFile(app.CWDJordan & "XML files\output.xml");
		
	
	write "successfully exported to XML";
end;
}
saveTransaction
{
saveTransaction(tran: Transaction);

// save a single transaction to XML to be uploaded

vars
	
	xml					:	JadeXMLDocument;
	statement, customer, 
	account, transactions,
	transaction, temp	:	JadeXMLElement;
	
	cust				: 	Customer;
	acc					:	BankAccount;
	xmlCustDetails		: 	StringArray;
	

begin
	
	create xml transient;
	create xmlCustDetails transient;
	
	
	acc := tran.myAccount;
	cust := acc.myCustomer;
	
	statement := xml.addElement("statement");
	
	// add customer details
	customer := statement.addElement("customer");
	self.addCustDetails(cust, customer);
	
	// add account
	account := statement.addElement("account");
	account.addAttribute("type", acc.getName());
	// add interestRate
	if acc.getName() = "CurrentAccount" then
		temp := account.addElement("overdraft_limit");
		temp.setText(acc.getPropertyValue("overdraftLimit").String);
	else
		temp := account.addElement("interest_rate");
		temp.setText(acc.getPropertyValue("interestRate").String);
	endif;
	
	//add transaction
	transactions := account.addElement("transactions");
	
	transaction := transactions.addElement("transaction");
	
	self.addTransaction(tran, transaction);
	
	xml.writeToFile("C:\Users\jorda\Documents\GitHub\BankTellerApp-Jade\XML files\output.xml");
	
	write "successfully exported to XML";
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
