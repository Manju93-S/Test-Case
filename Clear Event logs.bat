
@Echo off
cd C:\Windows\System32\winevt\Logs

wevtutil cl Application /bu:C:\Users\Public\Documents\backup.evtx 	
pause
