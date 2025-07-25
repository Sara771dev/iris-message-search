Class Search.Util.Search Extends %RegisteredObject
{

/// This method inserts a value into a list if it is not already present.
/// It checks if the value is "ID" or "DocId", in which case it returns the list unchanged.
/// If the list is empty, it initializes it with the value.
/// If the value is already in the list, it returns the list unchanged.                  
ClassMethod InsertType(list, value)
{
    If (value = "ID")||(value = "DocId") Quit list    
    If list = "" Set list = $LISTBUILD(value)  Quit list
     
    If $LISTFIND(list, value) > 0  Quit list   
     
    Set list = $LISTFROMSTRING($LISTTOSTRING(list) _ "," _ value)

    Quit list
}

/// This method updates the search column definitions in the database.
/// It clears existing properties and storages, then adds new properties based on the provided list.
/// Returns a status indicating success or failure.             
ClassMethod UpdateSearchColumn(list) As %Status
{

    &SQL(TRUNCATE TABLE Search_DB.SearchColumnDB)
    Set ClassName = "Search.DB.SearchColumnDB"
	Set class = ##class(%Dictionary.ClassDefinition).%OpenId(ClassName)
	do class.Properties.Clear()
	do class.Storages.Clear()

    Set tsc = $$$OK
    Set listLength=$LISTLENGTH(list)
    for i=1:1:listLength {
        Set value = $LISTGET(list, i)
		Set Property=##class(%Dictionary.PropertyDefinition).%New()
		Set Property.Name=value
		Set Property.Type="%String"
		do Property.Parameters.SetAt("","MAXLEN")
		do class.Properties.Insert(Property)

    }
    Set tsc = class.%Save()	
	Set tsc= $System.OBJ.Compile(class.Name)		

    Return tsc
}

/// This method inserts search column definitions into the database.
/// It takes a JSON string representing the search columns, parses it,  
/// and inserts the columns into the SearchColumnDB table.
/// Returns a status indicating success or failure.
/// @param json: JSON string containing the search columns to be inserted
/// @example: Set sc = #class(Search.Util.Search).InsertSearchColumn("{'tableName': 'MyTable', 'columns': ['Column1', 'Column2']}")
/// @note: The JSON string should be formatted as follows:
///         {'tableName': 'TableName', 'columns': ['Column1', 'Column2']}
/// @note: The method will  insert the table name and columns into the SearchColumnDB table.
/// @note: If the table already exists, it will not insert duplicate entries.
/// @note: The method will return a status indicating success or failure.
/// @note: If the JSON string is not properly formatted, it will return an error status
/// @note: The method will iterate through the JSON object and insert each column into the database
/// @note: The method will return a status indicating success or failure        
ClassMethod InsertSearchColumn(json) As %Status
{

    Set sc = $$$OK
    Set Object = {}.%FromJSON(json)
    Set iter = Object.%GetIterator()
    While iter.%GetNext(.table, .arr){
        Set updateSQL =3
        Set updateSQL(1) = " insert into  Search_DB.SearchColumnDB (tableName "
        Set updateSQL(2) = " ) values ('"_table_"' "
        Set updateSQL(3) = " )"
        Set arrIter = arr.%GetIterator()
        While arrIter.%GetNext(.key, .value){
            Set updateSQL(1) = updateSQL(1)_","_value
            Set updateSQL(2) = updateSQL(2)_", 1 "
        }
        Set upStatment = ##class(%SQL.Statement).%New()
		Set sc = upStatment.%Prepare(.updateSQL)
		Set upResult = upStatment.%Execute()
    }

    Return sc
}

/// This method creates a task in the system with the specified name, class, and time.
/// It first checks if a task with the given name already exists, and if so, deletes it.
/// Then, it creates a new task with the provided parameters and saves it.		
/// @param Name: The name of the task to be created
/// @param ClassName: The class name of the task to be created
/// @param Time: The time period for the task in HH:MM:SS format
/// @return: Returns 1 if the task is created successfully, or an error message if there is an issue
/// @example: Set result = #class(Search.Util.Search).Task("MyTask", "Search.MyTaskClass", "12:00:00")
/// @note: The time should be provided in HH:MM:SS format.
/// @note: If the task already exists, it will be deleted before creating a new one.
/// @note: The method will return 1 if the task is created successfully, or an error message if there is an issue.
/// @note: The method will set the task's name, namespace, description, class, time period,
///         daily frequency, daily start time, and display start date.
/// @note: The method will return a status indicating success or failure.	
ClassMethod Task(Name As %String, ClassName As %String, Time As %String) As %String
{

	Set taskObj=##class(%SYS.Task).%New()
	Set TaskID =taskObj.FindId(Name)
	if $L(TaskID)'=0 {
		Set tSC = taskObj.%DeleteId(TaskID)
	}
	Set taskObj.Name=Name
	Set taskObj.NameSpace=$namespace
	Set taskObj.Description=Name  
	Set taskObj.TaskClass= ClassName 
	Set taskObj.TimePeriod="0"
	Set taskObj.TimePeriodDay=""
	Set taskObj.TimePeriodEvery=1
	Set taskObj.DailyFrequency=0
	Set taskObj.DailyFrequencyTime=0
	Set taskObj.DailyIncrement=""
	set time=($p(Time,":",1)*60*60)+($p(Time,":",2)*60)+($p(Time,":",3))
	Set taskObj.DailyStartTime=time
	Set taskObj.DisplayStartDate=$zd($h,3)
	S tsc=taskObj.%Save()
	IF 'tsc{
		Quit $System.Status.GetErrorText(tsc)
	}ELSE{
		Quit 1
	}
}

}
