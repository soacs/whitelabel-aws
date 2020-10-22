## Process to Export spread sheet data to SBX:

1. make sure there is errorCodes.xlsx file in the imports folder (current folder)
2. do an npm install on the project, the excel dependencies (read-excel-file) needs to be loaded. 
3. run node importErrorRecords.js script from terminal
4. On success of step 3, export the ErrorMessagesMap records like any other table export process.
