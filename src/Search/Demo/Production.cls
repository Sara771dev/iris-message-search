Class Search.Demo.Production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="Search.Demo.Production" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="Search.Demo.BS" Category="" ClassName="Search.Demo.BS" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="TargetConfigNames">Search.Demo.BP</Setting>
    <Setting Target="Host" Name="SearchTableClass">Search.Demo.SearchTable</Setting>
  </Item>
  <Item Name="Search.Demo.BO" Category="" ClassName="Search.Demo.BO" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="Search.Demo.BP" Category="" ClassName="Search.Demo.BP" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
</Production>
}

}
