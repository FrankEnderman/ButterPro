<!-- :: Batch section
@echo off
setlocal


for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTAreply=%%a"
echo End of HTA window, reply: "%HTAreply%"
goto :EOF
-->


<HTML>
<HEAD>
<HTA:APPLICATION SCROLL="no" SYSMENU="no" >

<TITLE>Experimental GUI Interface (EGI)</TITLE>

<SCRIPT language="JavaScript">
window.resizeTo(974,700);
function closeHTA(reply){
   var fso = new ActiveXObject("Scripting.FileSystemObject");
   fso.GetStandardStream(1).WriteLine(reply);
   var Choic4 = (reply)
   window.close();
   
   
}

</SCRIPT>
</HEAD>
<BODY>
   <button onclick="closeHTA(1);">Exit Experimental GUI Interface</button>
   