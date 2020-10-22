/*

script to run is - node importErrorRecords.js

 1. Make sure you do npm install before you use this script for first time. Since we need read-excel-file for dependencies
 2. Make sure that the errorCodes.xlsx is available in the same folder as that fo script (this is provided by business)

 */

var AWS = require('aws-sdk');
AWS.config.update({region: 'us-east-1'});
var documentClient = new AWS.DynamoDB.DocumentClient();
var ddb = new AWS.DynamoDB();

const loadErrorMessagesMapTable = async function() {
    const Res = await documentClient.scan({TableName: 'ErrorMessageMap'}).promise();
    await deleteRecords(Res.Items);
    console.log('Successfully deleted records from ErrorMessagesMap table');
    const xlsxFile = require('read-excel-file/node');    
    const spreadSheetRecords = await xlsxFile('./errorCodes.xlsx');
    console.log('Loading records from spreadsheeet to ErrorMessagesMap table');
    spreadSheetRecords.shift();
    await insertRecords(spreadSheetRecords);
};

loadErrorMessagesMapTable().then(() => {
    console.log('Completed loading records to ErrorMessagesMap table');
});

async function insertRecords(currentTableRecords) {
  const itemsToInsert = currentTableRecords.map((currentRecord, index) => {
      return {
        PutRequest : {
            Item : {
                'index' :  { N: index.toString() },
                'errorCode' : { S: currentRecord[0].toString() },
                'userFacingErrorMessage' : { S: currentRecord[1] }
            }
        }
      }
  });
  
  await batchInsertItems(itemsToInsert);
}

async function batchDeleteItems(batchItems) {
    while(batchItems.length > 0) {
        const currentItems = batchItems.splice(0, 25);
        var params = {
            RequestItems : {
                'ErrorMessageMap' : currentItems
            }
        };
    
        await documentClient.batchWrite(params).promise();
    }
}

async function batchInsertItems(batchItems) {
  while(batchItems.length > 0) {
      const currentItems = batchItems.splice(0, 25);
      var params = {
          RequestItems : {
              'ErrorMessageMap' : currentItems
          }
      };
  
      await ddb.batchWriteItem(params).promise();
  }
}

async function deleteRecords(currentTableRecords) {
    const itemsToDelete = currentTableRecords.map(currentRecord => {
        return {
            DeleteRequest : {
                Key : {
                    'index' : currentRecord.index
                }
            }
        }
    });

    await batchDeleteItems(itemsToDelete);

}
