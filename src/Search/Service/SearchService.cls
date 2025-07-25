Class Search.Service.SearchService Extends %RegisteredObject
{

ClassMethod GetSearchColumn()
{
    set arr =[]
    Set sc = $$$OK
    Set sql = " SELECT  id,COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'Search_DB'  and TABLE_NAME = 'SearchColumnDB' "
    Set stmt = ##class(%SQL.Statement).%New()
    Set sc = stmt.%Prepare(sql)
    Set rset = stmt.%Execute()
    while rset.%Next() {
        Set id = rset.%Get("id")
        Set column = rset.%Get("COLUMN_NAME")
    
        if (column '="tableName") && (column '="ID") {
            Set SearchObj = {}
            Set SearchObj.id = id
            Set SearchObj.column = column
            d arr.%Push(SearchObj)
        }

 
    }

    return arr
}

ClassMethod SearchService(Page, Size, SearchType)
{


    Set Low=Size*(Page-1)
	Set High=Size*Page-1
    Set data =[],dataArr=[]
    Set ResObj ={}
    Set sql = "SELECT tableName FROM Search_DB.SearchColumnDB WHERE 1=1 "
    Set whereSQL = " 1=1  "
    Set iter = SearchType.%GetIterator()
    while iter.%GetNext(.i, .obj) {
        Set column = obj.column
        Set value = obj.value
        Set sql = sql_" and "_column_" = '1' "
        Set whereSQL = whereSQL_" and "_column_" = ? "
        Set parms = i+1
        Set parms(parms) = value
    }
    // get searchtable
    Set stmt = ##class(%SQL.Statement).%New()
    Set sc = stmt.%Prepare(sql)
    Set rset = stmt.%Execute()
    while rset.%Next() {
        Set searchTable = rset.%Get("tableName")
        Set searchSQL = 4
		Set searchSQL(1) = "SELECT ID,TimeCreated, SessionId, Status, CASE IsError WHEN 1 THEN 'Error' ELSE 'OK' END As Error, SourceConfigName,TargetConfigName     "
		Set searchSQL(2) = "FROM Ens.MessageHeader Where  SourceBusinessType='1'  and SessionId in ( "
		Set searchSQL(3) = "SELECT SessionId FROM Ens.MessageHeader WHERE MessageBodyId in (SELECT DocId FROM "_searchTable_" WHERE "_whereSQL_"  )) "
        Set searchSQL(4) = "ORDER BY ID DESC "
        Set searchStmt = ##class(%SQL.Statement).%New()
        Set sc = searchStmt.%Prepare(.searchSQL, .parms)
        Set searchRset = searchStmt.%Execute(parms...)
        while searchRset.%Next() {

            Set SearchObj = {}
            Set SearchObj.id = searchRset.%Get("ID")
            Set SearchObj.SessionId = searchRset.%Get("SessionId")
            Set SearchObj.Status = searchRset.%Get("Status")
            Set SearchObj.Error = searchRset.%Get("Error")
            Set SearchObj.SourceConfigName = searchRset.%Get("SourceConfigName")  
            Set SearchObj.TargetConfigName = searchRset.%Get("TargetConfigName")
            Set SearchObj.TimeCreated = searchRset.%Get("TimeCreated")
            d data.%Push(SearchObj)

        }
    }
    // 
	FOR i=Low:1:High{
		if data.%Get(i)'=""{
			Set obj=data.%Get(i)	
			Do dataArr.%Push(obj)
		}
	}
    Set ResObj.data = dataArr
    Set ResObj.total = data.%Size()
    return ResObj
}

}
