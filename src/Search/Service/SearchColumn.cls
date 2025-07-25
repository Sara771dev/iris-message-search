Class Search.Service.SearchColumn Extends %RegisteredObject
{

/// d ##class(Search.Service.SearchColumn).GetPropertySave()
ClassMethod GetPropertySave()
{
    // Ens.SearchTableBase
    Set SuperClass ="Ens.SearchTableBase"
    Set stmt = ##class(%SQL.Statement).%New()
    Set sql = "CALL %Dictionary.ClassDefinition_SubclassOf(?)"
    Set status = stmt.%Prepare(sql)
    Set TableSchema = "",TableName = "",list = $lb("tableName")
    Set SearchObj = {}
    Set Util = ##class(Search.Util.Search).%New()
    IF $$$ISOK(status) {
        SET rset = stmt.%Execute(SuperClass)
        WHILE rset.%Next() {
            
            &SQL(SELECT  TABLE_SCHEMA, TABLE_NAME into :TableSchema, :TableName 
			 FROM INFORMATION_SCHEMA.TABLES 
			 WHERE CLASSNAME = :rset.%Get("Name")
			 )
            Set table =TableSchema_"."_TableName
            Set tabArr =[]

            // get column names
            Set getColumnStmt = ##class(%SQL.Statement).%New()  
            Set getColumnSql = "SELECT TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = ? and TABLE_NAME = ?"
            Set getColumnStatus = getColumnStmt.%Prepare(getColumnSql)
            IF $$$ISOK(getColumnStatus) {
                Set getColumnRset = getColumnStmt.%Execute(TableSchema, TableName)
                While getColumnRset.%Next() {
                    Set list = Util.InsertType(list, getColumnRset.%Get("COLUMN_NAME"))
                    if (getColumnRset.%Get("COLUMN_NAME") '= "ID") & (getColumnRset.%Get("COLUMN_NAME") '= "DocId"){
                        d tabArr.%Push(getColumnRset.%Get("COLUMN_NAME"))
                    }
                  
                    
                }
            }                     
            d SearchObj.%Set(table, tabArr)

        }
        DO rset.%Close()

        Set tsc = Util.UpdateSearchColumn(list)

        Set tsc = Util.InsertSearchColumn(SearchObj.%ToJSON())


        quit tsc
    }
}

}
