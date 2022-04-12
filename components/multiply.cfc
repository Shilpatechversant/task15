<cfcomponent>
<cffunction name="multiply" access="public" >

<cfset var mul=1>
<cfloop index="i" from="1" to="#ArrayLen(Arguments)#"> 
<cfset mul=#mul# * #Arguments[i]#>

</cfloop> 
<cfoutput> Result :#mul# <br></cfoutput> 

</cffunction>
</cfcomponent>
