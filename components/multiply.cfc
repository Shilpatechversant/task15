<cfcomponent name="multiply">
    <cffunction name="multiply" access="public" output="true">
        <cfset var local.mul=1>
        <cfloop index="i" from="1" to="#ArrayLen(Arguments)#"> 
            <cfset local.mul=#mul# * #Arguments[i]#>
        </cfloop> 
         <cfreturn local.mul>
    </cffunction>
</cfcomponent>
