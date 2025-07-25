Class Search.Task.Search Extends %SYS.Task.Definition
{

Method OnTask() As %Status
{
	quit ##class(Search.Service.SearchColumn).GetPropertySave()
}

}
