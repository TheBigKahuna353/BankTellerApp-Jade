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
	AccountSearch subclassOf Form transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 4, number = 2074;
	AccountsAndTransactions subclassOf Form transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 15, number = 2077;
	CustomerDetails subclassOf Form transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 15, number = 2092;
	CustomerAdd subclassOf CustomerDetails transient, transientAllowed, subclassTransientAllowed, number = 2186;
	CustomerEdit subclassOf CustomerDetails transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 1, number = 2059;
	CustomerList subclassOf Form transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 3, number = 2057;
	CustomerSearch subclassOf Form transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 7, number = 2069;
	MainMenu subclassOf Form transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 10, number = 2056;
	NewTransaction subclassOf Form transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 13, number = 2076;
	TransactionSearch subclassOf Form transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 4, number = 2079;
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
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:29:19:42:18.539;
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
		runMainMenu() number = 1016;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:11:17:24:34.110;
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
	AccountSearch completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:25:16:23:23.346;
	referenceDefinitions
		btnSearch:                     Button  number = 1, ordinal = 1;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:21:01:08:35.282;
		label1:                        Label  number = 4, ordinal = 4;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:21:01:08:35.283;
		numberLabel:                   Label  number = 2, ordinal = 2;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:21:01:08:35.283;
		txtNumber:                     TextBox  number = 3, ordinal = 3;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:21:01:08:35.283;
	jadeMethodDefinitions
		accountSearch(num: Integer): BankAccount number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:21:01:12:46.836;
		btnSearch_click(btn: Button input) updating, number = 1002;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:21:01:14:40.224;
	eventMethodMappings
		btnSearch_click = click of Button;
	)
	AccountsAndTransactions completeDefinition
	(
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:30:13:28:09.793;
	referenceDefinitions
		accountEdit:                   Button  number = 12, ordinal = 13;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:20:23:45:52.228;
		addAccount:                    Button  number = 3, ordinal = 3;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:15:18:08:34.114;
		btnXML:                        Button  number = 13, ordinal = 14;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:16:00:04.580;
		groupBox3:                     GroupBox  number = 7, ordinal = 7;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:20:23:28:10.538;
		grpBoxAccCreate:               GroupBox  number = 4, ordinal = 4;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:15:18:16:00.600;
		labelAccNum:                   Label  number = 11, ordinal = 11;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:20:23:30:47.662;
		labelAccType:                  Label  number = 10, ordinal = 10;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:20:23:30:47.661;
		listAccounts:                  ListBox  number = 1, ordinal = 1;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:15:16:59:08.807;
		listTransactions:              ListBox  number = 9, ordinal = 9;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:20:23:28:10.539;
		myCustomer:                    Customer  number = 2, ordinal = 2;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:15:17:16:28.394;
		optionCurrentAccount:          OptionButton  number = 6, ordinal = 6;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:15:18:16:00.601;
		optionSavingsAccount:          OptionButton  number = 5, ordinal = 5;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:15:18:16:00.601;
		selectedAccount:               BankAccount  protected, number = 14, ordinal = 15;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:16:03:51.662;
	jadeMethodDefinitions
		addAccount_click(btn: Button input) updating, number = 1004;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:20:22:45:33.962;
		btnXML_click(btn: Button input) updating, number = 1006;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:16:03:04.340;
		listAccounts_click(listbox: ListBox input) updating, number = 1005;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:30:13:29:05.968;
		listAccounts_displayRow(
			listbox: ListBox input; 
			account: BankAccount; 
			lstIndex: Integer; 
			bcontinue: Boolean io): String updating, number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:26:15:37:24.512;
		listTransactions_displayRow(
			listbox: ListBox input; 
			obj: Transaction; 
			lstIndex: Integer; 
			bcontinue: Boolean io): String updating, number = 1007;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:26:15:42:07.586;
		load() updating, clientExecution, number = 1003;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:26:15:42:36.398;
		showAccounts(customer: Customer) updating, number = 1002;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:21:00:57:25.617;
	eventMethodMappings
		addAccount_click = click of Button;
		btnXML_click = click of Button;
		listAccounts_click = click of ListBox;
		listAccounts_displayRow = displayRow of ListBox;
		listTransactions_displayRow = displayRow of ListBox;
		load = load of Form;
	)
	CustomerDetails completeDefinition
	(
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:20:23:45:56.754;
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
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:15:16:54:03.068;
	jadeMethodDefinitions
		btnOK_click(btn: Button input) updating, number = 1002;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:17:39:06.070;
		createCustomer() number = 1001;
		setModifiedTimeStamp "cza14" "22.0.03" 2024:03:20:20:42:32.870;
	eventMethodMappings
		btnOK_click = click of Button;
	)
	CustomerEdit completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:12:13:58:33.540;
	referenceDefinitions
		myCustomer:                    Customer  number = 1, ordinal = 1;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:12:14:00:56.820;
	jadeMethodDefinitions
		load() updating, number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:12:14:32:12.295;
		updateCustomer() protected, number = 1002;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:12:14:23:17.408;
	eventMethodMappings
		load = load of Form;
	)
	CustomerList completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:21:01:06:50.501;
	referenceDefinitions
		btnAccounts:                   Button  number = 3, ordinal = 3;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:15:16:59:10.391;
		btnEdit:                       Button  number = 2, ordinal = 2;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:12:13:42:47.155;
		lstCustomers:                  ListBox  number = 1, ordinal = 1;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:12:13:42:47.149;
	jadeMethodDefinitions
		btnAccounts_click(btn: Button input) updating, number = 1005;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:23:00:04:17.196;
		btnEdit_click(btn: Button input) updating, number = 1003;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:12:14:26:36.221;
		gotFocus(cntrl: Control input) updating, number = 1004;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:14:12:48:00.816;
		load() updating, clientExecution, number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:12:13:47:05.339;
		lstCustomers_displayRow(
			listbox: ListBox input; 
			cust: Customer; 
			lstIndex: Integer; 
			bcontinue: Boolean io): String updating, number = 1002;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:12:13:49:53.578;
	eventMethodMappings
		btnAccounts_click = click of Button;
		btnEdit_click = click of Button;
		gotFocus = gotFocus of Form;
		load = load of Form;
		lstCustomers_displayRow = displayRow of ListBox;
	)
	CustomerSearch completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:21:01:00:35.455;
	referenceDefinitions
		btnAccounts:                   Button  number = 6, ordinal = 6;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:02:01:30:35.018;
		btnEdit:                       Button  number = 7, ordinal = 7;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:21:00:32:05.097;
		label1:                        Label  number = 1, ordinal = 1;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:02:01:30:35.016;
		label3:                        Label  number = 4, ordinal = 4;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:02:01:30:35.017;
		nameTextbox:                   TextBox  number = 5, ordinal = 5;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:02:01:30:35.017;
		numberLabel:                   Label  number = 3, ordinal = 3;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:02:01:30:35.017;
		textBox1:                      TextBox  number = 2, ordinal = 2;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:02:01:30:35.017;
	jadeMethodDefinitions
		btnAccounts_click(btn: Button input) updating, number = 1002;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:23:00:04:17.196;
		btnEdit_click(btn: Button input) updating, number = 1004;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:21:00:38:31.688;
		click() updating, number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:02:02:15:08.936;
		findCustomer(
			custName: String; 
			num: Integer): Customer number = 1003;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:21:00:35:12.705;
	eventMethodMappings
		btnAccounts_click = click of Button;
		btnEdit_click = click of Button;
		click = click of Form;
	)
	MainMenu completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:29:20:40:45.321;
	referenceDefinitions
		mnuAccount:                    MenuItem  number = 6, ordinal = 6;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:15:32:34.540;
		mnuAddCustoemr:                MenuItem  number = 2, ordinal = 2;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:11:17:22:17.520;
		mnuCustomer:                   MenuItem  number = 1, ordinal = 1;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:11:17:22:17.519;
		mnuCustomerList:               MenuItem  number = 3, ordinal = 3;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:11:17:22:17.520;
		mnuCustomerSearch:             MenuItem  number = 4, ordinal = 4;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:11:17:25:11.521;
		mnuImport:                     MenuItem  number = 10, ordinal = 10;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:29:20:40:45.321;
		mnuNewTransaction:             MenuItem  number = 8, ordinal = 8;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:15:32:34.540;
		mnuSearchAcc:                  MenuItem  number = 5, ordinal = 5;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:21:01:16:08.354;
		mnuSearchTransactions:         MenuItem  number = 9, ordinal = 9;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:16:11:30.525;
		mnuTransaction:                MenuItem  number = 7, ordinal = 7;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:15:32:34.540;
	jadeMethodDefinitions
		load() updating, clientExecution, number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:11:17:15:46.138;
		mnuAddCustoemr_click(menuItem: MenuItem input) updating, number = 1002;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:11:17:23:40.266;
		mnuCustomerList_click(menuItem: MenuItem input) updating, number = 1004;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:12:14:31:05.813;
		mnuCustomerSearch_click(menuItem: MenuItem input) updating, number = 1003;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:11:17:26:08.657;
		mnuImport_click(menuItem: MenuItem input) updating, number = 1008;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:29:20:49:00.667;
		mnuNewTransaction_click(menuItem: MenuItem input) updating, number = 1006;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:15:38:54.629;
		mnuSearchAcc_click(menuItem: MenuItem input) updating, number = 1005;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:21:01:16:50.385;
		mnuSearchTransactions_click(menuItem: MenuItem input) updating, number = 1007;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:25:16:23:03.180;
	eventMethodMappings
		load = load of Form;
		mnuAddCustoemr_click = click of MenuItem;
		mnuCustomerList_click = click of MenuItem;
		mnuCustomerSearch_click = click of MenuItem;
		mnuImport_click = click of MenuItem;
		mnuNewTransaction_click = click of MenuItem;
		mnuSearchAcc_click = click of MenuItem;
		mnuSearchTransactions_click = click of MenuItem;
	)
	NewTransaction completeDefinition
	(
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:30:13:24:21.962;
	referenceDefinitions
		accounTextBox:                 TextBox  number = 5, ordinal = 5;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:15:32:32.915;
		accountLabel:                  Label  number = 4, ordinal = 4;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:15:32:32.915;
		amountLabel:                   Label  number = 6, ordinal = 6;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:15:32:32.915;
		amountTextBox:                 TextBox  number = 7, ordinal = 7;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:15:32:32.916;
		dateTextBox:                   TextBox  number = 11, ordinal = 11;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:15:32:32.916;
		datelabel:                     Label  number = 10, ordinal = 10;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:15:32:32.916;
		depositRadioBtn:               OptionButton  number = 2, ordinal = 2;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:15:32:32.914;
		payeeLabel:                    Label  number = 8, ordinal = 8;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:15:32:32.916;
		payeetextBox:                  TextBox  number = 9, ordinal = 9;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:15:32:32.916;
		paymentlRadioBtn:              OptionButton  number = 3, ordinal = 3;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:15:32:32.915;
		statusLine:                    StatusLine  number = 13, ordinal = 13;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:30:13:24:21.961;
		submitButton:                  Button  number = 12, ordinal = 12;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:15:32:32.917;
		typeGroupBox:                  GroupBox  number = 1, ordinal = 1;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:22:15:32:32.914;
	jadeMethodDefinitions
		submitButton_click(btn: Button input) updating, number = 1001;
		setModifiedTimeStamp "dkmor" "22.0.03" 2024:05:30:13:26:56.680;
	eventMethodMappings
		submitButton_click = click of Button;
	)
	TransactionSearch completeDefinition
	(
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:25:16:26:22.508;
	referenceDefinitions
		btnSearch:                     Button  number = 4, ordinal = 4;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:25:16:08:14.603;
		label1:                        Label  number = 1, ordinal = 1;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:25:16:08:14.602;
		numberLabel:                   Label  number = 3, ordinal = 3;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:25:16:08:14.603;
		txtNumber:                     TextBox  number = 2, ordinal = 2;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:25:16:08:14.603;
	jadeMethodDefinitions
		btnSearch_click(btn: Button input) updating, number = 1001;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:25:16:22:25.615;
		searchTrans(num: Integer): Transaction number = 1002;
		setModifiedTimeStamp "jorda" "22.0.03" 2024:05:25:16:17:41.986;
	eventMethodMappings
		btnSearch_click = click of Button;
	)
databaseDefinitions
	SimpleBankViewDb
	(
	setModifiedTimeStamp "cza14" "16.0.01" 2017:02:24:18:50:00.343;
	databaseFileDefinitions
		"simplebankview" number = 56;
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
runMainMenu
{
runMainMenu();

vars
	form: MainMenu;

begin

	app.initialize();
	create form transient;
	form.show();

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
	AccountSearch (
	jadeMethodSources
accountSearch
{
accountSearch(num: Integer): BankAccount;

vars
	foundAcc: Boolean;
	bankAcc: BankAccount;
	temp: BankAccount;

begin

	foundAcc := false;
	if not num = 0 then
		foreach temp in app.ourBank.allBankAccounts
		where temp.accountNumber = num do
			bankAcc := temp;
			foundAcc := true;
		endforeach;
		if not foundAcc then
			app.msgBox("Could not find Account", "404 Not Found", MsgBox_OK_Only);
			return null;
		endif;
	else
		app.msgBox("Please input Account Number", "Error", MsgBox_OK_Only);
		return null;
	endif;
	
	return bankAcc;
	
end;
}
btnSearch_click
{
btnSearch_click(btn: Button input) updating;

vars

	num : Integer;
	acc : BankAccount;
	form : AccountsAndTransactions;

begin

	num := self.txtNumber.getTextAsInteger();
	
	acc := self.accountSearch(num);
	if acc = null then
		return;
	endif;
	
	create form transient;
	form.showAccounts(acc.myCustomer);

end;
}
	)
	AccountsAndTransactions (
	jadeMethodSources
addAccount_click
{
addAccount_click(btn: Button input) updating;

vars
	newCurrentAccount : CurrentAccount;
	newSavingsAccount : SavingsAccount;
begin
	if optionCurrentAccount.value = true then
		beginTransaction;
		newCurrentAccount := create CurrentAccount(self.myCustomer);
		commitTransaction;
	elseif optionSavingsAccount.value = true then
		beginTransaction;
		newSavingsAccount := create SavingsAccount(self.myCustomer);
		commitTransaction;
	else
		app.msgBox("Please pick an account type", "Account creation error", MsgBox_OK_Only);
	endif;
end;
}
btnXML_click
{
btnXML_click(btn: Button input) updating;

vars

	acc : BankAccount;
	handler : XMLHandler;

begin

	acc := self.listAccounts.listObject.BankAccount;
	
	create handler transient;
	
	// upload data
	handler.saveAccount(acc);
	
	// handler.upload();

end;
}
listAccounts_click
{
listAccounts_click(listbox: ListBox input) updating;

vars

begin
	self.btnXML.enabled := true;
	self.selectedAccount := self.listAccounts.listObject.BankAccount;
	self.listTransactions.displayCollection(selectedAccount.allTransactions, true, ListBox.DisplayCollection_Forward, null, "");
	
	labelAccNum.caption := "- Account number: " & selectedAccount.accountNumber.String;
	labelAccType.caption := "- Account Type: " & selectedAccount.getName();
end;
}
listAccounts_displayRow
{
listAccounts_displayRow(listbox: ListBox input; account: BankAccount; lstIndex: Integer; bcontinue: Boolean io):String updating;

vars

begin
	return account.accountNumber.String & " - " & account.getName();
end;
}
listTransactions_displayRow
{
listTransactions_displayRow(listbox: ListBox input; obj: Transaction; lstIndex: Integer; bcontinue: Boolean io):String updating;

vars

begin

	return obj.getPropertyValue('date').String & " - " & obj.getName() & ", $" & obj.getAmount().String & " to " & obj.getPropertyValue('payee').String;

end;
}
load
{
load() updating, clientExecution;

vars

	emptyCollection : TransactionsByNumber;

begin
	self.listAccounts.displayCollection(myCustomer.allAccounts, true, ListBox.DisplayCollection_Forward, null, "");
	
	
	
end;
}
showAccounts
{
showAccounts(customer: Customer) updating;

vars

begin
	
	myCustomer := customer;
	self.show();
	
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
	CustomerEdit (
	jadeMethodSources
load
{
load() updating;

vars

begin
	app.mdiFrame := MainMenu;
	
	self.txtFirstName.text := myCustomer.firstName;
	self.txtLastName.text := myCustomer.lastName;
	self.txtPhone.text := myCustomer.getPropertyValue('phone').String;
	self.txtStreetAddress.text := myCustomer.getPropertyValue('streetAddress').String;
	self.txtSuburb.text := myCustomer.getPropertyValue('suburb').String;
	self.txtCity.text := myCustomer.getPropertyValue('city').String;

end;
}
updateCustomer
{
updateCustomer() protected;

begin
	beginTransaction;
		self.myCustomer.setPropertyValue('firstName', self.txtFirstName.text);
		self.myCustomer.setPropertyValue('lastName', self.txtLastName.text);
		self.myCustomer.setPropertyValue('streetAddress', self.txtStreetAddress.text);
		self.myCustomer.setPropertyValue('suburb', self.txtSuburb.text);
		self.myCustomer.setPropertyValue('city', self.txtCity.text);
	commitTransaction;
	
end;
}
	)
	CustomerList (
	jadeMethodSources
btnAccounts_click
{
btnAccounts_click(btn: Button input) updating;

vars
	cust: Customer;
	form: AccountsAndTransactions;
begin
	
	cust := self.lstCustomers.listObject.Customer;
	
	if cust = null then
		app.msgBox("Select a customer first","No customer selected", MsgBox_OK_Only);
	else
		create form transient;
		form.myCustomer := cust;
		form.show();
	endif;
end;
}
btnEdit_click
{
btnEdit_click(btn: Button input) updating;

vars

	cust: Customer;
	form: CustomerEdit;

begin

	cust := self.lstCustomers.listObject.Customer;
	
	if cust = null then
		app.msgBox("Select a customer to edit first", "No Customer Selected", MsgBox_OK_Only);
	else
		create form transient;
		form.myCustomer := cust;
		form.show();
	endif;

end;
}
gotFocus
{
gotFocus(cntrl: Control input) updating;

begin
	// write currentSchema.name & "::" & self.name & "::" & method.name;
	 
	// This is just one way of making sure the ListBox displays the latest 
	//changes to displayed
	// objects. It is a quick-and-dirty-good-enogh-for-now solution, but it 
	//would be more
	// appropriate to use the mechanism of JADE notifications.
	if self.lstCustomers.listIndex > 0 then
		self.lstCustomers.refreshEntries(
			self.lstCustomers.itemObject[self.lstCustomers.listIndex]);
	endif;
 
end;
}
load
{
load() updating, clientExecution;

vars

begin
	self.lstCustomers.displayCollection(app.ourBank.allCustomers, true, 
		ListBox.DisplayCollection_Forward, null, "");
	
end;
}
lstCustomers_displayRow
{
lstCustomers_displayRow(listbox: ListBox input; cust: Customer; lstIndex: Integer; bcontinue: Boolean io):String updating;

begin

	return cust.getFullName();

end;
}
	)
	CustomerSearch (
	jadeMethodSources
btnAccounts_click
{
btnAccounts_click(btn: Button input) updating;

vars

	custName : String;
	num : Integer;
	customer : Customer;
	form : AccountsAndTransactions;

begin

	custName := self.nameTextbox.text.trimBlanks();
	num := self.textBox1.getTextAsInteger();
	
	customer := self.findCustomer(custName, num);
	if customer = null then
		return;
	endif;
	
	create form transient;
	form.showAccounts(customer);
		

end;
}
btnEdit_click
{
btnEdit_click(btn: Button input) updating;

vars

	custName : String;
	num : Integer;
	customer : Customer;
	form : CustomerEdit;

begin

	custName := self.nameTextbox.text.trimBlanks();
	num := self.textBox1.getTextAsInteger();
	
	customer := self.findCustomer(custName, num);
	if customer = null then
		return;
	endif;
	
	create form transient;
	form.showCustomer(customer);
	
end;
}
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
findCustomer
{
findCustomer(custName: String; num: Integer): Customer;

vars
	foundCust: Boolean;
	customer: Customer;
	temp: Customer;

begin

	foundCust := false;
	
	if not custName = "" then
		customer := app.ourBank.allCustomers.getAtKey(custName);
		if customer = null then
			app.msgBox("Could not find Customer", "404 Not Found", MsgBox_OK_Only);
			return null;
		endif;
	elseif not num = 0 then
		foreach temp in app.ourBank.allCustomers
		where temp.getNumber() = num do
			customer := temp;
			foundCust := true;
		endforeach;
		if not foundCust then
			app.msgBox("Could not find Customer", "404 Not Found", MsgBox_OK_Only);
			return null;
		endif;
	else
		app.msgBox("Please input customer's number or last name", "Error", MsgBox_OK_Only);
		return null;
	endif;
	
	return customer;
	
end;
}
	)
	MainMenu (
	jadeMethodSources
load
{
load() updating, clientExecution;

vars

begin
	// this is to identify this as the parent MDI form
	app.mdiFrame := MainMenu;
end;
}
mnuAddCustoemr_click
{
mnuAddCustoemr_click(menuItem: MenuItem input) updating;

vars
	form: CustomerAdd;
	
begin
	
	create form transient;
	form.show();
	
end;
}
mnuCustomerList_click
{
mnuCustomerList_click(menuItem: MenuItem input) updating;

vars

	form: CustomerList;

begin

	create form transient;
	form.show();

end;
}
mnuCustomerSearch_click
{
mnuCustomerSearch_click(menuItem: MenuItem input) updating;

vars

	form: CustomerSearch;

begin
	
	create form transient;
	form.show();

end;
}
mnuImport_click
{
mnuImport_click(menuItem: MenuItem input) updating;

vars

	fileOpener : CMDFileOpen;	
	xmlHandler : XMLHandler;

begin
	create xmlHandler transient;
	create fileOpener;
	
    if fileOpener.open = 0 then
        xmlHandler.importXMLFile(fileOpener.fileName);
		app.msgBox("Succesfully imported file.", "Success!", MsgBox_OK_Only);
    endif;

end;
}
mnuNewTransaction_click
{
mnuNewTransaction_click(menuItem: MenuItem input) updating;

vars
	form : NewTransaction;
begin
	create form transient;
	form.show();
end;
}
mnuSearchAcc_click
{
mnuSearchAcc_click(menuItem: MenuItem input) updating;

vars

	form: AccountSearch; 

begin
	create form transient;
	form.show();

end;
}
mnuSearchTransactions_click
{
mnuSearchTransactions_click(menuItem: MenuItem input) updating;

vars

	form : TransactionSearch;

begin

	create form transient;
	form.show();

end;
}
	)
	NewTransaction (
	jadeMethodSources
submitButton_click
{
submitButton_click(btn: Button input) updating;

vars
    doubleCheck : Integer;
	newDepositTransaction : Deposit;
	newPaymentTransaction : Payment; 
	targetAccount : BankAccount;
	transactionDate: Date;
	
	dateException : DateInputException;
begin
	app.initialize();
	//clears status line
	statusLine.caption := "";
	
	// Just displays a simple message box prompting a user to double check they're input
    doubleCheck := app.msgBox("Please confirm transaction details.", "Transaction Confirmation", MsgBox_OK_Cancel);
    if doubleCheck = MsgBox_Return_Cancel then
        return;
    endif;
	
	on Exception do app.genericExceptionHandler(exception) global;
	//gets the account for which the transaction is to be associated with
	targetAccount := app.ourBank.allBankAccounts.getAtKey(accounTextBox.text.Integer);
	
	//checks correct date input
	transactionDate := dateTextBox.text.asDate;
	if transactionDate.isValid = false then
		statusLine.caption := "Incorrect date format.";
		create dateException;
		dateException.setErrorText();
		raise dateException;
	endif;
	
	//creates a new tranasaction object either a deposit or 
	if depositRadioBtn.value = true then
		beginTransaction;
		newDepositTransaction := create Deposit(targetAccount, amountTextBox.text.Decimal, transactionDate, payeetextBox.text);
		commitTransaction;
	elseif paymentlRadioBtn.value = true then
		beginTransaction;
		newPaymentTransaction := create Payment(targetAccount, amountTextBox.text.Decimal, transactionDate, payeetextBox.text);
		commitTransaction;
	else
		app.msgBox("Please pick a transaction type", "Transaction error", MsgBox_OK_Only);
	endif;
end;
}
	)
	TransactionSearch (
	jadeMethodSources
btnSearch_click
{
btnSearch_click(btn: Button input) updating;

vars

	form : AccountsAndTransactions;
	tran : Transaction;
	
begin
	
	tran := self.searchTrans(self.txtNumber.text.Integer);
	
	if tran = null then
		return;
	endif;
	
	create form transient;
	form.showAccounts(tran.myAccount.myCustomer);
	

end;
}
searchTrans
{
searchTrans(num: Integer) : Transaction;

vars

	iter : MergeIterator;
	temp : Transaction;
	foundAcc : Boolean;
	tran : Transaction;

begin

	if not num = 0 then
		iter := app.ourBank.getAllTransactions();
		while iter.next(temp) do
			if temp.number = txtNumber.text.Integer then
				tran := temp;
			endif;
		endwhile;
		if not foundAcc then
			app.msgBox("Could not find Transaction", "404 Not Found", MsgBox_OK_Only);
			return null;
		endif;
	else
		app.msgBox("Please input Transaction Number", "Error", MsgBox_OK_Only);
		return null;
	endif;

	return tran;
end;
}
	)
