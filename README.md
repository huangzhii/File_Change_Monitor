# File_Change_Monitor
A matlab program running on Win/Linux.

Run filemonitor.m in Matlab. filemonitor.m is the main program.

Tutorial:

1. Simply copy 3 .m files to the root directory of the folder that you want to detect files' add / delete status. The program runs in infinite loop with a query per 5 seconds. Users can adjust the gap time (5 seconds is default).

2. Run it in Matlab, the folder files changes will be shown as '+' and '-'. '+' for adding new files. '-' for deleting files.

3. rdir.m will find all file recursively.

4. The files change result are shown in Matlab command window. Copy and paste to a file in order to save the result.
