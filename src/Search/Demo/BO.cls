Class Search.Demo.BO Extends Ens.BusinessOperation
{

Method Receive(pInput As EnsLib.EDI.XML.Document, Output pOutput As EnsLib.EDI.XML.Document) As %Status
{
    // Process the input and generate a response
    Set pOutput = ##class(EnsLib.EDI.XML.Document).%New()
    Set response = "<Response><Status>Success</Status></Response>"

    Set pOutput=pOutput.ImportFromString(response,.status)


    Return $$$OK
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="EnsLib.EDI.XML.Document"> 
		<Method>Receive</Method>
	</MapItem>
</MapItems>
}

}
