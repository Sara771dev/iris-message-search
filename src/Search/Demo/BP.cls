/// 
Class Search.Demo.BP Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='Ens.Request' response='Ens.Response' height='2000' width='2000' >
<sequence xend='200' yend='350' >
<call name='demo' target='Search.Demo.BO' async='0' xpos='200' ypos='250' >
<request type='Ens.Request' >
<assign property="callrequest" value="request" action="set" languageOverride="" />
</request>
<response type='Ens.Response' >
<assign property="response" value="callresponse" action="set" languageOverride="" />
</response>
</call>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
