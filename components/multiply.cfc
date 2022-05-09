<cfcomponent>
    <cffunction name="multiply" access="public" >
        <cfset var local.mul=1>
        <cfloop index="i" from="1" to="#ArrayLen(Arguments)#"> 
            <cfset mul=#mul# * #Arguments[i]#>
        </cfloop> 
         <cfreturn mul>
    </cffunction>
</cfcomponent>
