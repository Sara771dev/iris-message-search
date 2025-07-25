Class Search.DB.SearchColumnDB Extends %Persistent
{

Property ALIASNAME As %String(MAXLEN = "");

Property ApplicationID As %String(MAXLEN = "");

Property BINGRENID As %String(MAXLEN = "");

Property BINGRENZYID As %String(MAXLEN = "");

Property BookingStatus As %String(MAXLEN = "");

Property DICTNAME As %String(MAXLEN = "");

Property DepID As %String(MAXLEN = "");

Property DepName As %String(MAXLEN = "");

Property DepartmentID As %String(MAXLEN = "");

Property DepartmentName As %String(MAXLEN = "");

Property DoctorID As %String(MAXLEN = "");

Property DoctorName As %String(MAXLEN = "");

Property DocumentID As %String(MAXLEN = "");

Property HospitalizationID As %String(MAXLEN = "");

Property IDCard As %String(MAXLEN = "");

Property InpatientID As %String(MAXLEN = "");

Property MedCard As %String(MAXLEN = "");

Property ObsNum As %String(MAXLEN = "");

Property OperatorID As %String(MAXLEN = "");

Property OperatorName As %String(MAXLEN = "");

Property OrdID As %String(MAXLEN = "");

Property OrderID As %String(MAXLEN = "");

Property OutpatientID As %String(MAXLEN = "");

Property PCard As %String(MAXLEN = "");

Property PID As %String(MAXLEN = "");

Property PName As %String(MAXLEN = "");

Property PUBLISH As %String(MAXLEN = "");

Property PatientID As %String(MAXLEN = "");

Property PatientName As %String(MAXLEN = "");

Property PropId As %String(MAXLEN = "");

Property PropValue As %String(MAXLEN = "");

Property SUBSCRIBER As %String(MAXLEN = "");

Property SYSTEMCODE As %String(MAXLEN = "");

Property SchedulingID As %String(MAXLEN = "");

Property Search1 As %String(MAXLEN = "");

Property Search10 As %String(MAXLEN = "");

Property Search2 As %String(MAXLEN = "");

Property Search3 As %String(MAXLEN = "");

Property Search4 As %String(MAXLEN = "");

Property Search5 As %String(MAXLEN = "");

Property Search6 As %String(MAXLEN = "");

Property Search7 As %String(MAXLEN = "");

Property Search8 As %String(MAXLEN = "");

Property Search9 As %String(MAXLEN = "");

Property SubscribeID As %String(MAXLEN = "");

Property TermID As %String(MAXLEN = "");

Property TermName As %String(MAXLEN = "");

Property TopParentId As %String(MAXLEN = "");

Property VisitedID As %String(MAXLEN = "");

Property VisitingCardID As %String(MAXLEN = "");

Property ZHUYUANHAO As %String(MAXLEN = "");

Property funcCode As %String(MAXLEN = "");

Property funcName As %String(MAXLEN = "");

Property session As %String(MAXLEN = "");

Property sysAccess As %String(MAXLEN = "");

Property sysCode As %String(MAXLEN = "");

Property tableName As %String(MAXLEN = "");

Property userCode As %String(MAXLEN = "");

Storage Default
{
<Data name="SearchColumnDBDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ALIASNAME</Value>
</Value>
<Value name="3">
<Value>ApplicationID</Value>
</Value>
<Value name="4">
<Value>BINGRENID</Value>
</Value>
<Value name="5">
<Value>BINGRENZYID</Value>
</Value>
<Value name="6">
<Value>BookingStatus</Value>
</Value>
<Value name="7">
<Value>DICTNAME</Value>
</Value>
<Value name="8">
<Value>DepID</Value>
</Value>
<Value name="9">
<Value>DepName</Value>
</Value>
<Value name="10">
<Value>DepartmentID</Value>
</Value>
<Value name="11">
<Value>DepartmentName</Value>
</Value>
<Value name="12">
<Value>DoctorID</Value>
</Value>
<Value name="13">
<Value>DoctorName</Value>
</Value>
<Value name="14">
<Value>DocumentID</Value>
</Value>
<Value name="15">
<Value>HospitalizationID</Value>
</Value>
<Value name="16">
<Value>IDCard</Value>
</Value>
<Value name="17">
<Value>InpatientID</Value>
</Value>
<Value name="18">
<Value>MedCard</Value>
</Value>
<Value name="19">
<Value>ObsNum</Value>
</Value>
<Value name="20">
<Value>OperatorID</Value>
</Value>
<Value name="21">
<Value>OperatorName</Value>
</Value>
<Value name="22">
<Value>OrdID</Value>
</Value>
<Value name="23">
<Value>OrderID</Value>
</Value>
<Value name="24">
<Value>OutpatientID</Value>
</Value>
<Value name="25">
<Value>PCard</Value>
</Value>
<Value name="26">
<Value>PID</Value>
</Value>
<Value name="27">
<Value>PName</Value>
</Value>
<Value name="28">
<Value>PUBLISH</Value>
</Value>
<Value name="29">
<Value>PatientID</Value>
</Value>
<Value name="30">
<Value>PatientName</Value>
</Value>
<Value name="31">
<Value>PropId</Value>
</Value>
<Value name="32">
<Value>PropValue</Value>
</Value>
<Value name="33">
<Value>SUBSCRIBER</Value>
</Value>
<Value name="34">
<Value>SYSTEMCODE</Value>
</Value>
<Value name="35">
<Value>SchedulingID</Value>
</Value>
<Value name="36">
<Value>Search1</Value>
</Value>
<Value name="37">
<Value>Search10</Value>
</Value>
<Value name="38">
<Value>Search2</Value>
</Value>
<Value name="39">
<Value>Search3</Value>
</Value>
<Value name="40">
<Value>Search4</Value>
</Value>
<Value name="41">
<Value>Search5</Value>
</Value>
<Value name="42">
<Value>Search6</Value>
</Value>
<Value name="43">
<Value>Search7</Value>
</Value>
<Value name="44">
<Value>Search8</Value>
</Value>
<Value name="45">
<Value>Search9</Value>
</Value>
<Value name="46">
<Value>SubscribeID</Value>
</Value>
<Value name="47">
<Value>TermID</Value>
</Value>
<Value name="48">
<Value>TermName</Value>
</Value>
<Value name="49">
<Value>TopParentId</Value>
</Value>
<Value name="50">
<Value>VisitedID</Value>
</Value>
<Value name="51">
<Value>VisitingCardID</Value>
</Value>
<Value name="52">
<Value>ZHUYUANHAO</Value>
</Value>
<Value name="53">
<Value>funcCode</Value>
</Value>
<Value name="54">
<Value>funcName</Value>
</Value>
<Value name="55">
<Value>session</Value>
</Value>
<Value name="56">
<Value>sysAccess</Value>
</Value>
<Value name="57">
<Value>sysCode</Value>
</Value>
<Value name="58">
<Value>tableName</Value>
</Value>
<Value name="59">
<Value>userCode</Value>
</Value>
</Data>
<DataLocation>^Search.DB.SearchColumnDBD</DataLocation>
<DefaultData>SearchColumnDBDefaultData</DefaultData>
<ExtentSize>264</ExtentSize>
<IdLocation>^Search.DB.SearchColumnDBD</IdLocation>
<IndexLocation>^Search.DB.SearchColumnDBI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,16,$lb("-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000"),$lb(21,21,21,21,21,21,21,21,21,21,21,21,21,21,21),$lb(758198320,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,758198320))</Histogram>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3.03</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,1,0,$lb(1,18,36,54,72,90,108,126,144,162,179,196,213,230,247,264),$lb(1,0,0,0,0,0,1,1,1,1,1,0,1,1,1),"")</Histogram>
<Selectivity>1</Selectivity>
</Property>
<Property name="ALIASNAME">
<AverageFieldSize>2.02</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.984848:</OutlierSelectivity>
<Selectivity>1.5152%</Selectivity>
</Property>
<Property name="ApplicationID">
<AverageFieldSize>2.11</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,1,3),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,0,0,540082176))</Histogram>
<OutlierSelectivity>.890152:</OutlierSelectivity>
<Selectivity>10.9848%</Selectivity>
</Property>
<Property name="BINGRENID">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.996212:</OutlierSelectivity>
<Selectivity>0.3788%</Selectivity>
</Property>
<Property name="BINGRENZYID">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.996212:</OutlierSelectivity>
<Selectivity>0.3788%</Selectivity>
</Property>
<Property name="BookingStatus">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.996212:</OutlierSelectivity>
<Selectivity>0.3788%</Selectivity>
</Property>
<Property name="DICTNAME">
<AverageFieldSize>2.01</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.992424:</OutlierSelectivity>
<Selectivity>0.7576%</Selectivity>
</Property>
<Property name="DepID">
<AverageFieldSize>2.03</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.973485:</OutlierSelectivity>
<Selectivity>2.6515%</Selectivity>
</Property>
<Property name="DepName">
<AverageFieldSize>2.01</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.988636:</OutlierSelectivity>
<Selectivity>1.1364%</Selectivity>
</Property>
<Property name="DepartmentID">
<AverageFieldSize>2.02</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.984848:</OutlierSelectivity>
<Selectivity>1.5152%</Selectivity>
</Property>
<Property name="DepartmentName">
<AverageFieldSize>2.01</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.988636:</OutlierSelectivity>
<Selectivity>1.1364%</Selectivity>
</Property>
<Property name="DoctorID">
<AverageFieldSize>2.04</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.958333:</OutlierSelectivity>
<Selectivity>4.1667%</Selectivity>
</Property>
<Property name="DoctorName">
<AverageFieldSize>2.02</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.977273:</OutlierSelectivity>
<Selectivity>2.2727%</Selectivity>
</Property>
<Property name="DocumentID">
<AverageFieldSize>2.01</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.992424:</OutlierSelectivity>
<Selectivity>0.7576%</Selectivity>
</Property>
<Property name="HospitalizationID">
<AverageFieldSize>2.05</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.950758:</OutlierSelectivity>
<Selectivity>4.9242%</Selectivity>
</Property>
<Property name="IDCard">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.996212:</OutlierSelectivity>
<Selectivity>0.3788%</Selectivity>
</Property>
<Property name="InpatientID">
<AverageFieldSize>2.08</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,1,3),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,0,0,540082176))</Histogram>
<OutlierSelectivity>.916667:</OutlierSelectivity>
<Selectivity>8.3333%</Selectivity>
</Property>
<Property name="MedCard">
<AverageFieldSize>2.01</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.988636:</OutlierSelectivity>
<Selectivity>1.1364%</Selectivity>
</Property>
<Property name="ObsNum">
<AverageFieldSize>2.07</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,1,3),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,0,0,540082176))</Histogram>
<OutlierSelectivity>.931818:</OutlierSelectivity>
<Selectivity>6.8182%</Selectivity>
</Property>
<Property name="OperatorID">
<AverageFieldSize>2.01</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.992424:</OutlierSelectivity>
<Selectivity>0.7576%</Selectivity>
</Property>
<Property name="OperatorName">
<AverageFieldSize>2.01</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.992424:</OutlierSelectivity>
<Selectivity>0.7576%</Selectivity>
</Property>
<Property name="OrdID">
<AverageFieldSize>2.02</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.981061:</OutlierSelectivity>
<Selectivity>1.8939%</Selectivity>
</Property>
<Property name="OrderID">
<AverageFieldSize>2.05</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.94697:</OutlierSelectivity>
<Selectivity>5.3030%</Selectivity>
</Property>
<Property name="OutpatientID">
<AverageFieldSize>2.08</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,1,3),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,0,0,540082176))</Histogram>
<OutlierSelectivity>.920455:</OutlierSelectivity>
<Selectivity>7.9545%</Selectivity>
</Property>
<Property name="PCard">
<AverageFieldSize>2.05</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.94697:</OutlierSelectivity>
<Selectivity>5.3030%</Selectivity>
</Property>
<Property name="PID">
<AverageFieldSize>2.2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," 1"," 1"," 1"," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,1,3,3,3),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,0,0,0,0,0,0,540082176))</Histogram>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="PName">
<AverageFieldSize>2.11</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,1,3),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,0,0,540082176))</Histogram>
<OutlierSelectivity>.890152:</OutlierSelectivity>
<Selectivity>10.9848%</Selectivity>
</Property>
<Property name="PUBLISH">
<AverageFieldSize>2.01</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.992424:</OutlierSelectivity>
<Selectivity>0.7576%</Selectivity>
</Property>
<Property name="PatientID">
<AverageFieldSize>2.39</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," 1"," 1"," 1"," 1"," 1"," 1"," 1"),$lb(2,2,2,2,2,2,2,2,1,3,3,3,3,3,3),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,0,0,0,0,0,0,0,0,0,0,0,0,540082176))</Histogram>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="PatientName">
<AverageFieldSize>2.32</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," 1"," 1"," 1"," 1"," 1"),$lb(2,2,2,2,2,2,2,2,2,2,1,3,3,3,3),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,0,0,0,0,0,0,0,0,540082176))</Histogram>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="PropId">
<AverageFieldSize>2.1</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,1,3),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,0,0,540082176))</Histogram>
<OutlierSelectivity>.901515:</OutlierSelectivity>
<Selectivity>9.8485%</Selectivity>
</Property>
<Property name="PropValue">
<AverageFieldSize>2.1</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,1,3),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,0,0,540082176))</Histogram>
<OutlierSelectivity>.901515:</OutlierSelectivity>
<Selectivity>9.8485%</Selectivity>
</Property>
<Property name="SUBSCRIBER">
<AverageFieldSize>2.01</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.992424:</OutlierSelectivity>
<Selectivity>0.7576%</Selectivity>
</Property>
<Property name="SYSTEMCODE">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.996212:</OutlierSelectivity>
<Selectivity>0.3788%</Selectivity>
</Property>
<Property name="SchedulingID">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.996212:</OutlierSelectivity>
<Selectivity>0.3788%</Selectivity>
</Property>
<Property name="Search1">
<AverageFieldSize>2.09</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,1,3),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,0,0,540082176))</Histogram>
<OutlierSelectivity>.909091:</OutlierSelectivity>
<Selectivity>9.0909%</Selectivity>
</Property>
<Property name="Search10">
<AverageFieldSize>2.09</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,1,3),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,0,0,540082176))</Histogram>
<OutlierSelectivity>.909091:</OutlierSelectivity>
<Selectivity>9.0909%</Selectivity>
</Property>
<Property name="Search2">
<AverageFieldSize>2.09</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,1,3),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,0,0,540082176))</Histogram>
<OutlierSelectivity>.909091:</OutlierSelectivity>
<Selectivity>9.0909%</Selectivity>
</Property>
<Property name="Search3">
<AverageFieldSize>2.09</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,1,3),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,0,0,540082176))</Histogram>
<OutlierSelectivity>.909091:</OutlierSelectivity>
<Selectivity>9.0909%</Selectivity>
</Property>
<Property name="Search4">
<AverageFieldSize>2.09</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,1,3),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,0,0,540082176))</Histogram>
<OutlierSelectivity>.909091:</OutlierSelectivity>
<Selectivity>9.0909%</Selectivity>
</Property>
<Property name="Search5">
<AverageFieldSize>2.09</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,1,3),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,0,0,540082176))</Histogram>
<OutlierSelectivity>.909091:</OutlierSelectivity>
<Selectivity>9.0909%</Selectivity>
</Property>
<Property name="Search6">
<AverageFieldSize>2.09</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,1,3),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,0,0,540082176))</Histogram>
<OutlierSelectivity>.909091:</OutlierSelectivity>
<Selectivity>9.0909%</Selectivity>
</Property>
<Property name="Search7">
<AverageFieldSize>2.09</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,1,3),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,0,0,540082176))</Histogram>
<OutlierSelectivity>.909091:</OutlierSelectivity>
<Selectivity>9.0909%</Selectivity>
</Property>
<Property name="Search8">
<AverageFieldSize>2.09</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,1,3),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,0,0,540082176))</Histogram>
<OutlierSelectivity>.909091:</OutlierSelectivity>
<Selectivity>9.0909%</Selectivity>
</Property>
<Property name="Search9">
<AverageFieldSize>2.09</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,1,3),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,0,0,540082176))</Histogram>
<OutlierSelectivity>.909091:</OutlierSelectivity>
<Selectivity>9.0909%</Selectivity>
</Property>
<Property name="SubscribeID">
<AverageFieldSize>2.02</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.981061:</OutlierSelectivity>
<Selectivity>1.8939%</Selectivity>
</Property>
<Property name="TermID">
<AverageFieldSize>2.05</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.954545:</OutlierSelectivity>
<Selectivity>4.5455%</Selectivity>
</Property>
<Property name="TermName">
<AverageFieldSize>2.05</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.954545:</OutlierSelectivity>
<Selectivity>4.5455%</Selectivity>
</Property>
<Property name="TopParentId">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.996212:</OutlierSelectivity>
<Selectivity>0.3788%</Selectivity>
</Property>
<Property name="VisitedID">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.996212:</OutlierSelectivity>
<Selectivity>0.3788%</Selectivity>
</Property>
<Property name="VisitingCardID">
<AverageFieldSize>2.01</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.992424:</OutlierSelectivity>
<Selectivity>0.7576%</Selectivity>
</Property>
<Property name="ZHUYUANHAO">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.996212:</OutlierSelectivity>
<Selectivity>0.3788%</Selectivity>
</Property>
<Property name="funcCode">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.996212:</OutlierSelectivity>
<Selectivity>0.3788%</Selectivity>
</Property>
<Property name="funcName">
<AverageFieldSize>2.01</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.992424:</OutlierSelectivity>
<Selectivity>0.7576%</Selectivity>
</Property>
<Property name="session">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.996212:</OutlierSelectivity>
<Selectivity>0.3788%</Selectivity>
</Property>
<Property name="sysAccess">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.996212:</OutlierSelectivity>
<Selectivity>0.3788%</Selectivity>
</Property>
<Property name="sysCode">
<AverageFieldSize>2.01</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.988636:</OutlierSelectivity>
<Selectivity>1.1364%</Selectivity>
</Property>
<Property name="tableName">
<AverageFieldSize>38.03</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" ."," HII_UTIL_SEARCHTABLE.CHECKSTATUSINFOUPDATE"," HII_UTIL_SEARCHTABLE.OPERATIONAPPINFOADD"," HII_UTIL_SEARCHTABLE.OUTPATIENTAPPOINTSTATUSINFOUPDATE"," HII_UTIL_SEARCHTABLE.TERMINOLOGYREGISTER"," JHIPLIB_SEARCHTABLE_HL7V2.O21INSPECTIONSEARCHTABLE"," JHIPLIB_SEARCHTABLE_HL7V3.JH0110"," JHIPLIB_SEARCHTABLE_HL7V3.JH0203"," JHIPLIB_SEARCHTABLE_HL7V3.JH0221"," JHIPLIB_SEARCHTABLE_HL7V3.JH0410"," JHIPLIB_SEARCHTABLE_HL7V3.JH0427"," JHIPLIB_SEARCHTABLE_HL7V3.JH0602"," JHIPLIB_SEARCHTABLE_HL7V3.JH0908"," JHIPLIB_SEARCHTABLE_XML.BASESEARCHTABLE"," JHIPLIB_SEARCHTABLE_XML.BASESEARCHTABLE6"," SEARCH_DEMO.SEARCHTABLE"),$lb(1,22,23,22,1,25,30,31,30,31,30,30,21,40,1),$lb(539885568,771751936,1212762463,1128809795,1330660690,1346720321,1431588929,1330992208,1413829197,1212762463,1246251344,841895730,858671688,825307136,842019584,808648704,842072064,842150144,875638784,825229312,842465280,875706112,909128192,909128192,959461376,1212954454,1481460782,0,905969664,1246251344,1397047634,542328129))</Histogram>
<Selectivity>0.3788%</Selectivity>
</Property>
<Property name="userCode">
<AverageFieldSize>2.01</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," 1"),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,1),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,822083584,540082176))</Histogram>
<OutlierSelectivity>.992424:</OutlierSelectivity>
<Selectivity>0.7576%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-16</BlockCount>
</SQLMap>
<StreamLocation>^Search.DB.SearchColumnDBS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
