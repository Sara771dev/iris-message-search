/// This class is generated by the Search.Demo.BP BPL class.
/// This class should not be edited or modified in any way.
/// Do not make direct use of this class in your application.
Class Search.Demo.BP.Context Extends Ens.BP.Context [ ClassType = persistent, CompileAfter = Search.Demo.BP, GeneratedBy = Ens.BPL.Compiler.CLS, ProcedureBlock ]
{

/// Response Handler for call to Search.Demo.BO for pCompiler.CurrentMethod Search.Demo.BP.Context
Method OnResponse1(process As Ens.BusinessProcess, context As Ens.BP.Context, request As Ens.Request, response As Ens.Response, callrequest As Ens.Request, callresponse As Ens.Response, callname As %String) As %Status [ Language = objectscript, PublicList = (process, context) ]
{
 Set $ZT="Trap",status=$$$OK do {
 Set status=$$$OK,response=callresponse
 If $$$ISERR(status) Quit
 } while (0)
Exit Quit status
Trap Set $ZT="",status=##class(Ens.Util.Error).EnsSystemError("Search.Demo.BP.Thread1","OnResponse1")
 Goto Exit
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
