'[2/2]
'sendKeys.vbs

'http://stackoverflow.com/questions/2806713/can-i-pass-an-argument-to-a-vbscript-vbs-file-launched-with-cscript

user=WScript.Arguments(0)
pwd=WScript.Arguments(1)
op=WScript.Arguments(2)

set OBJECT=WScript.CreateObject("WScript.Shell")

WScript.sleep 50 
OBJECT.SendKeys user & "{ENTER}" 
WScript.sleep 50 
OBJECT.SendKeys pwd & "{ENTER}"
WScript.sleep 50 
OBJECT.SendKeys "dns config static " & op & "{ENTER}"
WScript.sleep 50 
OBJECT.SendKeys "reboot{ENTER}" 
WScript.sleep 50 
OBJECT.SendKeys "exit{ENTER}" 
WScript.sleep 50
OBJECT.SendKeys "{ENTER}"
