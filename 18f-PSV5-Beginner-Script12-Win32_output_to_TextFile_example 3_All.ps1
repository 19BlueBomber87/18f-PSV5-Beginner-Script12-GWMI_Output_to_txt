#This is the same Script In "theory" Now i can get evry Get-WmiObject -Class Win32_* output
#I have been running this for about 60 mins now.  Its going to be one big txt file <@:)
##It has been interesting to see some of the WIN32_* ouput has no ouput or they error for different reasons
#Not Supported, provider failure and access denied (Im not logged in as an administrator) <@:)
#I started the script at 11:04 pm. The longest pause so far was about 15 mins!!!
#It has been running for over 40 mins!!
(gwmi -List *win32_*).name | Sort-Object -CaseSensitive | Out-File C:\Kruse\WMI_Win32_Alllist.txt
$wmi_ALLlist = get-content C:\Kruse\WMI_Win32_Alllist.txt
Thanks for watching <@:)
Function Get-WMI32_ALL_Output
{
Foreach ($W in $WMI_ALLlist)
{
$BB = (Get-Date).DateTime
"-----------------------------------$BB------------------------------------------------------<@:)
----------OUTPUT--------Get-WmiObject -Class $W------output--------------------------------------
------------------------------------$BB------------------------------------------------------<@:)
------------------------------------------------------------------------------Notice how the time stamp changes
----------------------------------------------------------------------------($BB).hour------($BB).Minute-----($BB).second--------------------------------------------------------"
gwmi $w | format-list * 
"-------------------------------end of wmi win32_$w output----------------------------------------------------------Ilovebrakes




THanks for watching <@:)

-------------------------------end of wmi win32_$w output----------------------------------------------------------Ilovebrakes










"
Write-Verbose -Message "Get-WmiObject -Class $W 
 $BB Status: Complete
 <@:)
 ----------------------------------------------------------------------------" -Verbose 6>&1

}
}

Get-WMI32_ALL_Output | Out-File C:\Kruse\wmiALLlist.txt
notepad C:\Kruse\wmiALLlist.txt




