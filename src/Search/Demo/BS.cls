Class Search.Demo.BS Extends EnsLib.SOAP.Service
{

Parameter ADAPTER;

Property TargetConfigNames As Ens.DataType.ConfigName;

Property SearchTableClass As %String;

Parameter SETTINGS = "TargetConfigNames:Basic:selector?context={Ens.ContextSearch/ProductionItems?targets=1&productionName=@productionId},SearchTableClass:Basic:selector?context={Ens.ContextSearch/SearchTableClasses?host=Search.Demo.BS}";

/// Description
Method Send(Message As %String) As %String [ WebMethod ]
{
    Set str = ""
    // do something
    Set Document =##Class(EnsLib.EDI.XML.Document).%New()
    Set Document =##class(EnsLib.EDI.XML.Document).ImportFromString(Message,.status)
    Set tSC=..SendRequestSync(..TargetConfigNames,Document,.pOutput)
    if $L(..SearchTableClass)'=0{
		Set tSCStore=$zobjclassmethod(..SearchTableClass,"IndexDoc",Document)
		}
	Set str =pOutput.OutputToString(,.status)

    Return str
}

}
