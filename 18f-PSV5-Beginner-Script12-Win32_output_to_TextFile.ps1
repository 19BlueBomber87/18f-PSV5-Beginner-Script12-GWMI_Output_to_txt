﻿#With this script I can output all the output for the objects in this list:
#Get-WMi-Object win32_A*
(gwmi -List *win32_a*).name | Out-File C:\Kruse\WMI_Win32_Alist.txt
$wmi_Alist = get-content C:\Kruse\WMI_Win32_Alist.txt

Function Get-WMI32_A_Output
{
Foreach ($W in $WMI_Alist)
{
$BB = (Get-Date).DateTime
"-----------------------------------$BB------------------------------------------------------<@:)
----------OUTPUT--------Get-WmiObject -Class $W------output--------------------------------------
------------------------------------$BB------------------------------------------------------<@:)
------------------------------------------------------------------------------Notice how the time stamp changes
----------------------------------------------------------------------------($BB).hour------($BB).Minute-----($BB).second--------------------------------------------------------"
gwmi $w | format-list *
"-------------------------------end of wmi win32_$w output----------------------------------------------------------Ilovebrakes






-------------------------------end of wmi win32_$w output----------------------------------------------------------Ilovebrakes










"

}
}
$BB="MarkK.";$SD="2018-11-9";$PSV5="PowerShellVersion5";$XamplePurpose="Learn, Share and Document";$DJ="Save The Puppies! <3<3<3";$SP="<@:)";$TY="ThankYou For Your Help :)";$MK="UAA Alum, CMC Alum, CNT Student, PowerShell Enthusiast";$TFTSP_FWH="Founder of: The Foundation to Save The Puppies From Write-Host";$Mission="Spread Joy Through Learning PS5";$TFW="ThanksForWatching"
$MyFirstHashTableIsMyDigitalSignature=[Ordered]@{Name="Name: $BB";MarkK="MarkK.:$MK";Date="StarDate: $SD";PSVersion="PowerShellVersionUsed: $PSV5";
Xample="Prupose: $XamplePurpose";Thanks="$TY";TFTSP_FWH="$TFTSP_FWH";Mission="$mission";DJ="$DJ";TFW="$TFW";SP="$SP"}

Cls
Function Blue-Bomber
{
ForEach ($BlueBombersInfo in $MyFirstHashTableIsMyDigitalSignature) 
{
    Write-Verbose -Message ($BlueBombersInfo).Name      -Verbose 6>&1
    Write-Verbose -Message ($BlueBombersInfo).MarkK     -Verbose 5>&1
    Write-Verbose -Message ($BlueBombersInfo).Date      -Verbose 4>&1
    Write-Verbose -Message ($BlueBombersInfo).PSVersion -Verbose 3>&1
    Write-Verbose -Message ($BlueBombersInfo).Xample    -Verbose 2>&1
    Write-Verbose -Message ($BlueBombersInfo).Thanks    -Verbose *>&1
    Write-Verbose -Message ($BlueBombersInfo).TFTSP_FWH -Verbose 2>&1
    Write-Verbose -Message ($BlueBombersInfo).Mission   -Verbose 3>&1
    Write-Verbose -Message ($BlueBombersInfo).DJ        -Verbose 4>&1
    Write-Verbose -Message ($BlueBombersInfo).TFW       -Verbose 5>&1
    Write-Verbose -Message ($BlueBombersInfo).SP        -Verbose 6>&1
}
}
cls
Blue-Bomber


#Help about_Hash

Get-WMI32_A_Output | Out-File C:\Kruse\wmiAlist.txt
notepad C:\Kruse\wmiAlist.txt




