
#!/usr/bin/env bash

    aws dynamodb put-item --item '{
      "index":{"N": "0"},
      "errorCode": {"S":"1001"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
    }' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "1"},
      "errorCode": {"S":"1002"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "2"},
      "errorCode": {"S":"1003"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "3"},
      "errorCode": {"S":"1004"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "4"},
      "errorCode": {"S":"banklink.creation.error.due.to.banklink.governor"},
      "userFacingErrorMessage":  {"S": "Bank Links cannot be created due to account restrictions. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "5"},
      "errorCode": {"S":"transfer.money.invalid.routing.number"},
      "userFacingErrorMessage":  {"S": "The ABA Routing number is invalid. Please re-enter details."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "6"},
      "errorCode": {"S":"transfer.money.invalid.bankaccount.number"},
      "userFacingErrorMessage":  {"S": "The bank account number is invalid. Please re-enter details."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "7"},
      "errorCode": {"S":"banklink.has.transaction.waiting.for.confirmation"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "8"},
      "errorCode": {"S":"valid.banklink.verification.status"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "9"},
      "errorCode": {"S":"external.bank.account.in.use.for.microdeposit.verification"},
      "userFacingErrorMessage":  {"S": "This Bank Link is already linked to another account and must be verified prior to creating the same Bank Link for this account. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "10"},
      "errorCode": {"S":"banklink.missing.or.wrong.state"},
      "userFacingErrorMessage":  {"S": "User attempted to use a deleted Bank Link. Please choose another Bank Link or contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "11"},
      "errorCode": {"S":"banklink.invalid.route"},
      "userFacingErrorMessage":  {"S": "Invalid ABA Routing number. Please re-enter details."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "12"},
      "errorCode": {"S":"banklink.type.c.or.s"},
      "userFacingErrorMessage":  {"S": "Bank Link type should be Checking or Savings. Please re-enter details."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "13"},
      "errorCode": {"S":"banklink.not.owned.by.account"},
      "userFacingErrorMessage":  {"S": "The selected Bank Link does not belong to the selected account. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "14"},
      "errorCode": {"S":"duplicated.banklink"},
      "userFacingErrorMessage":  {"S": "A Bank Link already exists for this account. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "15"},
      "errorCode": {"S":"banklink.no.member.found.for.loginid"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "16"},
      "errorCode": {"S":"banklink.no.items.for.attention.found.for.banklink.internal.error"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "17"},
      "errorCode": {"S":"banklink.no.matching.items.for.attention.found.for.banklink.internal.error"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "18"},
      "errorCode": {"S":"banklink.verification.failed.microdeposits.due.to.incorrect.microdeposit.amounts"},
      "userFacingErrorMessage":  {"S": "The micro deposit verification amounts are incorrect. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "19"},
      "errorCode": {"S":"banklink.final.verification.failure.no.more.attempts"},
      "userFacingErrorMessage":  {"S": "You have exceeded the maximum amount of Bank Link verifications. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "20"},
      "errorCode": {"S":"banklink.is.not.a.micro.deposit"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "21"},
      "errorCode": {"S":"user.does.not.have.permission.to.use.override.permission"},
      "userFacingErrorMessage":  {"S": "You do not have the permission rights to use the override features. Please contact support for assistance.(This will be used when CSR functionality is introduced.)"}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "22"},
      "errorCode": {"S":"must.supply.owner.login.id.with.md.override.flag"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "23"},
      "errorCode": {"S":"banklink.over_max_num_of_banklinks"},
      "userFacingErrorMessage":  {"S": "The Firm has reached the limit to create the number of Bank Links for this account. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "24"},
      "errorCode": {"S":"banklink.wrong.status.for.cancel"},
      "userFacingErrorMessage":  {"S": "The system is attempting to delete an already deleted Bank Link. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "25"},
      "errorCode": {"S":"pending.efts.found"},
      "userFacingErrorMessage":  {"S": "The system cannot delete the Bank link. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "26"},
      "errorCode": {"S":"banklink.invalid.operation.should.be.delete"},
      "userFacingErrorMessage":  {"S": "The system does not support Bank Link updates. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "27"},
      "errorCode": {"S":"default"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "28"},
      "errorCode": {"S":"9004"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "29"},
      "errorCode": {"S":"9005"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "30"},
      "errorCode": {"S":"9013"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "31"},
      "errorCode": {"S":"9023"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "32"},
      "errorCode": {"S":"9026"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "33"},
      "errorCode": {"S":"9034"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "34"},
      "errorCode": {"S":"9035"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "35"},
      "errorCode": {"S":"9036"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "36"},
      "errorCode": {"S":"9043"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "37"},
      "errorCode": {"S":"9037"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "38"},
      "errorCode": {"S":"1001"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "39"},
      "errorCode": {"S":"1002"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "40"},
      "errorCode": {"S":"1003"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "41"},
      "errorCode": {"S":"1004"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "42"},
      "errorCode": {"S":"9000"},
      "userFacingErrorMessage":  {"S": "Process date for the transaction cannot be a prior date. Please re-enter details."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "43"},
      "errorCode": {"S":"9001"},
      "userFacingErrorMessage":  {"S": "Process date for the transaction cannot be a non-settlement date. Please re-enter details."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "44"},
      "errorCode": {"S":"9002"},
      "userFacingErrorMessage":  {"S": "Current Day transactions must be created prior to 12:00 pm EST. Please re-enter details."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "45"},
      "errorCode": {"S":"9003"},
      "userFacingErrorMessage":  {"S": "The transaction amount cannot exceed the maximum transaction limit. Please re-enter details."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "46"},
      "errorCode": {"S":"9006"},
      "userFacingErrorMessage":  {"S": "AHW, WIW - The system cannot locate the bank information. Please contact support for assistance. COW, CRW – The system cannot locate the mailing address. Please contact support for assistance. AHD – The system cannot locate the account information. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "47"},
      "errorCode": {"S":"9007"},
      "userFacingErrorMessage":  {"S": "AHW, WIW, COW, CRW - The system cannot locate the account information. Please contact support for assistance. AHD – The system cannot locate the bank information. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
    "index":{"N": "48"},
      "errorCode": {"S":"9008"},
      "userFacingErrorMessage":  {"S": "Unknown transaction type. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "49"},
      "errorCode": {"S":"9009"},
      "userFacingErrorMessage":  {"S": "Please enter a contribution year."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "50"},
      "errorCode": {"S":"9010"},
      "userFacingErrorMessage":  {"S": "After April 15 (current year), contribution year must be the current year. Please re-enter details."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "51"},
      "errorCode": {"S":"9011"},
      "userFacingErrorMessage":  {"S": "This account does not allow deposits. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "52"},
      "errorCode": {"S":"9012"},
      "userFacingErrorMessage":  {"S": "ACH deposits have been disabled for this account. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "53"},
      "errorCode": {"S":"9016"},
      "userFacingErrorMessage":  {"S": "The deposit amount exceeds the account transaction limit. Please enter another amount."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "54"},
      "errorCode": {"S":"9017"},
      "userFacingErrorMessage":  {"S": "The withdrawal amount exceeds the account transaction limit. Please enter another amount."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "55"},
      "errorCode": {"S":"9018"},
      "userFacingErrorMessage":  {"S": "This account is not linked to the Bank Link. Please choose another Bank Link. "}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "56"},
      "errorCode": {"S":"9019"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "57"},
      "errorCode": {"S":"9020"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "58"},
      "errorCode": {"S":"9021"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "59"},
      "errorCode": {"S":"9022"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "60"},
      "errorCode": {"S":"9024"},
      "userFacingErrorMessage":  {"S": "The system has limits on the amount of deposits allowed per month. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "61"},
      "errorCode": {"S":"9025"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "62"},
      "errorCode": {"S":"9028"},
      "userFacingErrorMessage":  {"S": "The Federal withholding type can only be ‘None,’ ‘Fixed Dollar,’ or ‘Percentage’. Please re-enter details."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "63"},
      "errorCode": {"S":"9029"},
      "userFacingErrorMessage":  {"S": "The State withholding type can only be ‘None,’ ‘Fixed Dollar,’ or ‘Percentage’. Please re-enter details."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "64"},
      "errorCode": {"S":"9030"},
      "userFacingErrorMessage":  {"S": "The Federal withholding amount is not correct. Please re-enter details."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "65"},
      "errorCode": {"S":"9031"},
      "userFacingErrorMessage":  {"S": "The State withholding amount is not correct. Please re-enter details."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "66"},
      "errorCode": {"S":"9032"},
      "userFacingErrorMessage":  {"S": "The distribution reason code is invalid. Please re-enter details."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "67"},
      "errorCode": {"S":"9038"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "68"},
      "errorCode": {"S":"9039"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "69"},
      "errorCode": {"S":"9040"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "70"},
      "errorCode": {"S":"9041"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "71"},
      "errorCode": {"S":"9042"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "72"},
      "errorCode": {"S":"9044"},
      "userFacingErrorMessage":  {"S": "The frequency can only be ‘One-Time’, ‘Weekly’, ‘Monthly’, or ‘Yearly’. Please re-enter details."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "73"},
      "errorCode": {"S":"9045"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "74"},
      "errorCode": {"S":"9046"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "75"},
      "errorCode": {"S":"9047"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "76"},
      "errorCode": {"S":"9048"},
      "userFacingErrorMessage":  {"S": "Please specify “Cancel next transaction’ or ‘Cancel series’ to cancel transaction. Please re-enter details."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "77"},
      "errorCode": {"S":"9049"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "78"},
      "errorCode": {"S":"9050"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "79"},
      "errorCode": {"S":"9051"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "80"},
      "errorCode": {"S":"9052"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "81"},
      "errorCode": {"S":"9053"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "82"},
      "errorCode": {"S":"9054"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "83"},
      "errorCode": {"S":"9055"},
      "userFacingErrorMessage":  {"S": "Tax withholding amount cannot exceed withdrawal amount. Please re-enter details."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "84"},
      "errorCode": {"S":"9056"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "85"},
      "errorCode": {"S":"9057"},
      "userFacingErrorMessage":  {"S": "Internal System Error. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "86"},
      "errorCode": {"S":"9058"},
      "userFacingErrorMessage":  {"S": "Withdrawals are blocked for this account. Please contact support for assistance."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "87"},
      "errorCode": {"S":"9060"},
      "userFacingErrorMessage":  {"S": "Transaction amount exceeds annual IRA contribution limits. Please re-enter details."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "88"},
      "errorCode": {"S":"transfer.money.duplicate.banklink"},
      "userFacingErrorMessage":  {"S": "Bank link duplicated."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
     "index":{"N": "89"},
      "errorCode": {"S":"9117"},
      "userFacingErrorMessage":  {"S": "One or more of the values entered is incorrect. Please try again."}
}' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
    "index":{"N": "90"},
    "errorCode": {"S":"1001"},
    "userFacingErrorMessage":  {"S": "Field cannot be null."}
    }' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
    "index":{"N": "91"},
    "errorCode": {"S":"1003"},
    "userFacingErrorMessage":  {"S": "Invalid field value."}
    }' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
    "index":{"N": "92"},
    "errorCode": {"S":"9101"},
    "userFacingErrorMessage":  {"S": "Invalid signature method."}
    }' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
    "index":{"N": "93"},
    "errorCode": {"S":"9102"},
    "userFacingErrorMessage":  {"S": "Missing signature data."}
    }' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
    "index":{"N": "94"},
    "errorCode": {"S":"9103"},
    "userFacingErrorMessage":  {"S": "Missing document data."}
    }' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
    "index":{"N": "95"},
    "errorCode": {"S":"9104"},
    "userFacingErrorMessage":  {"S": "Missing signature image encode."}
    }' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
    "index":{"N": "96"},
    "errorCode": {"S":"9105"},
    "userFacingErrorMessage":  {"S": "Invalid address field value."}
    }' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
    "index":{"N": "97"},
    "errorCode": {"S":"9106"},
    "userFacingErrorMessage":  {"S": "Invalid email address."}
    }' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
    "index":{"N": "98"},
    "errorCode": {"S":"9107"},
    "userFacingErrorMessage":  {"S": "Invalid phone number."}
    }' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
    "index":{"N": "99"},
    "errorCode": {"S":"9108"},
    "userFacingErrorMessage":  {"S": "Invalid uploaded document."}
    }' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
    "index":{"N": "100"},
    "errorCode": {"S":"9109"},
    "userFacingErrorMessage":  {"S": "Invalid status value."}
    }' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
    "index":{"N": "101"},
    "errorCode": {"S":"9110"},
    "userFacingErrorMessage":  {"S": "Invalid member Id."}
    }' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
    "index":{"N": "103"},
    "errorCode": {"S":"9111"},
    "userFacingErrorMessage":  {"S": "Invalid signature data."}
    }' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
    "index":{"N": "103"},
    "errorCode": {"S":"9112"},
    "userFacingErrorMessage":  {"S": "Invalid uploaded document file name."}
    }' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
    "index":{"N": "104"},
    "errorCode": {"S":"9113"},
    "userFacingErrorMessage":  {"S": "Invalid action value."}
    }' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
    "index":{"N": "105"},
    "errorCode": {"S":"9114"},
    "userFacingErrorMessage":  {"S": "Invalid IFA state transition."}
    }' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
    "index":{"N": "106"},
    "errorCode": {"S":"9115"},
    "userFacingErrorMessage":  {"S": "Missing uploaded document file name."}
    }' --table-name ErrorMessageMap  --region us-east-1
    aws dynamodb put-item --item '{
    "index":{"N": "107"},
    "errorCode": {"S":"9116"},
    "userFacingErrorMessage":  {"S": "Invalid signature image encode."}
    }' --table-name ErrorMessageMap  --region us-east-1


# Robo Coordinator BE errorCodes and default messages

   aws dynamodb put-item --item '{
      "index":{"N": "108"},
      "errorCode": {"S":"850000"},
      "userFacingErrorMessage":  {"S": "Something went wrong. Please retry or contact support team for failure details."}
      }' --table-name ErrorMessageMap  --region us-east-1
      aws dynamodb put-item --item '{
      "index":{"N": "109"},
      "errorCode": {"S":"850001"},
      "userFacingErrorMessage":  {"S": "Monte Carlo response not generated."}
      }' --table-name ErrorMessageMap  --region us-east-1
      aws dynamodb put-item --item '{
      "index":{"N": "110"},
      "errorCode": {"S":"850002"},
      "userFacingErrorMessage":  {"S": "Creating a folio for the account failed."}
      }' --table-name ErrorMessageMap  --region us-east-1
      aws dynamodb put-item --item '{
      "index":{"N": "111"},
      "errorCode": {"S":"850003"},
      "userFacingErrorMessage":  {"S": "Error fetching goal details or goal does not exist"}
      }' --table-name ErrorMessageMap  --region us-east-1
      aws dynamodb put-item --item '{
      "index":{"N": "112"},
      "errorCode": {"S":"850004"},
      "userFacingErrorMessage":  {"S": "The Goal already has one folio in the account"}
      }' --table-name ErrorMessageMap  --region us-east-1
      aws dynamodb put-item --item '{
      "index":{"N": "113"},
      "errorCode": {"S":"850005"},
      "userFacingErrorMessage":  {"S": "Error fetching account details or account does not exist"}
      }' --table-name ErrorMessageMap  --region us-east-1
      aws dynamodb put-item --item '{
      "index":{"N": "114"},
      "errorCode": {"S":"850006"},
      "userFacingErrorMessage":  {"S": "Error fetching member details or member does not exist"}
      }' --table-name ErrorMessageMap  --region us-east-1

      aws dynamodb put-item --item '{
      "index":{"N": "115"},
      "errorCode": {"S":"850007"},
      "userFacingErrorMessage":  {"S": "Updating account as robo account failed"}
      }' --table-name ErrorMessageMap  --region us-east-1

      aws dynamodb put-item --item '{
      "index":{"N": "116"},
      "errorCode": {"S":"850008"},
      "userFacingErrorMessage":  {"S": "The goal id you entered does not exist"}
      }' --table-name ErrorMessageMap  --region us-east-1
      aws dynamodb put-item --item '{
      "index":{"N": "117"},
      "errorCode": {"S":"850009"},
      "userFacingErrorMessage":  {"S": "The goal id you entered does not exist for your clients or prospects"}
      }' --table-name ErrorMessageMap  --region us-east-1
      aws dynamodb put-item --item '{
      "index":{"N": "118"},
      "errorCode": {"S":"850010"},
      "userFacingErrorMessage":  {"S": "The goal id you entered has already been added to an account"}
      }' --table-name ErrorMessageMap  --region us-east-1
      aws dynamodb put-item --item '{
      "index":{"N": "119"},
      "errorCode": {"S":"850015"},
      "userFacingErrorMessage":  {"S": "No goals are fetched for the provided account(s)"}
      }' --table-name ErrorMessageMap  --region us-east-1

   # Errors forwarded by DRS
      aws dynamodb put-item --item '{
      "index":{"N": "120"},
      "errorCode": {"S":"830000"},
      "userFacingErrorMessage":  {"S": "Something went wrong"}
      }' --table-name ErrorMessageMap
      aws dynamodb put-item --item '{
      "index":{"N": "121"},
      "errorCode": {"S":"830001"},
      "userFacingErrorMessage":  {"S": "[Unable to Generate an Optimal Portfolio] Based on your customization criteria, we are unable to generate an optimal portfolio at your specified risk level. Please consider modifying your risk profile, goal length and/or personal preferences."}
      }' --table-name ErrorMessageMap  --region us-east-1
      aws dynamodb put-item --item '{
      "index":{"N": "122"},
      "errorCode": {"S":"830002"},
      "userFacingErrorMessage":  {"S": "Goal portfolio creation failed"}
      }' --table-name ErrorMessageMap  --region us-east-1

       aws dynamodb put-item --item '{
      "index":{"N": "123"},
      "errorCode": {"S":"830003"},
      "userFacingErrorMessage":  {"S": "Program portfolio creation failed"}
      }' --table-name ErrorMessageMap  --region us-east-1
   # Errors forwarded by MC
      aws dynamodb put-item --item '{
      "index":{"N": "124"},
      "errorCode": {"S":"840000"},
      "userFacingErrorMessage":  {"S": "Something went wrong"}
      }' --table-name ErrorMessageMap  --region us-east-1
      aws dynamodb put-item --item '{
      "index":{"N": "125"},
      "errorCode": {"S":"840001"},
      "userFacingErrorMessage":  {"S": "Monte Carlo response not generated"}
      }' --table-name ErrorMessageMap  --region us-east-1
   # Errors forwarded by IQ
      aws dynamodb put-item --item '{
      "index":{"N": "126"},
      "errorCode": {"S":"810000"},
      "userFacingErrorMessage":  {"S": "Something went wrong"}
      }' --table-name ErrorMessageMap  --region us-east-1
      aws dynamodb put-item --item '{
      "index":{"N": "127"},
      "errorCode": {"S":"810001"},
      "userFacingErrorMessage":  {"S": "The goal id you entered does not belong to you"}
      }' --table-name ErrorMessageMap  --region us-east-1
      aws dynamodb put-item --item '{
      "index":{"N": "128"},
      "errorCode": {"S":"810002"},
      "userFacingErrorMessage":  {"S": "The goal id you entered does not belong to you"}
      }' --table-name ErrorMessageMap  --region us-east-1
      aws dynamodb put-item --item '{
      "index":{"N": "129"},
      "errorCode": {"S":"810003"},
      "userFacingErrorMessage":  {"S": "Current entity does not own this questionnaire"}
      }' --table-name ErrorMessageMap  --region us-east-1
      aws dynamodb put-item --item '{
      "index":{"N": "130"},
      "errorCode": {"S":"810004"},
      "userFacingErrorMessage":  {"S": "Email address already in use, please use other email address"}
      }' --table-name ErrorMessageMap  --region us-east-1
   # Errors forwarded by Cache
      aws dynamodb put-item --item '{
      "index":{"N": "131"},
      "errorCode": {"S":"922000"},
      "userFacingErrorMessage":  {"S": "Generic Runtime exception in Robo Cache"}
      }' --table-name ErrorMessageMap  --region us-east-1
      aws dynamodb put-item --item '{
      "index":{"N": "132"},
      "errorCode": {"S":"922001"},
      "userFacingErrorMessage":  {"S": "Runtime exception in Robo Cache"}
      }' --table-name ErrorMessageMap  --region us-east-1
      aws dynamodb put-item --item '{
      "index":{"N": "133"},
      "errorCode": {"S":"922002"},
      "userFacingErrorMessage":  {"S": "Validation Error in Robo Cache."}
       }' --table-name ErrorMessageMap  --region us-east-1
      aws dynamodb put-item --item '{
      "index":{"N": "134"},
      "errorCode": {"S":"922003"},
      "userFacingErrorMessage":  {"S": "Exception while calling External / Internal APIs in Robo Cache."}
      }' --table-name ErrorMessageMap  --region us-east-1
      aws dynamodb put-item --item '{
      "index":{"N": "135"},
      "errorCode": {"S":"922004"},
      "userFacingErrorMessage":  {"S": "Exception while Managing Cache."}
       }' --table-name ErrorMessageMap  --region us-east-1

   # Other generic exception
      aws dynamodb put-item --item '{
      "index":{"N": "136"},
      "errorCode": {"S":"5000"},
      "userFacingErrorMessage":  {"S": "The goal id you entered does not exist"}
      }' --table-name ErrorMessageMap  --region us-east-1
      aws dynamodb put-item --item '{
      "index":{"N": "137"},
      "errorCode": {"S":"5001"},
      "userFacingErrorMessage":  {"S": "The goal id you entered does not belong to the current program"}
      }' --table-name ErrorMessageMap  --region us-east-1


       aws dynamodb put-item --item '{
       "index":{"N": "138"},
       "errorCode": {"S":"0000"},
       "userFacingErrorMessage":  {"S": "No error found."}
       }' --table-name ErrorMessageMap  --region us-east-1

# Validation Errors

      aws dynamodb put-item --item '{
      "index":{"N": "139"},
      "errorCode": {"S":"1000"},
      "userFacingErrorMessage":  {"S": "Generic validation error."}
      }' --table-name ErrorMessageMap  --region us-east-1

       aws dynamodb put-item --item '{
      "index":{"N": "140"},
      "errorCode": {"S":"1000"},
      "userFacingErrorMessage":  {"S": "Generic validation error."}
      }' --table-name ErrorMessageMap  --region us-east-1

      aws dynamodb put-item --item '{
      "index":{"N": "141"},
      "errorCode": {"S":"1002"},
      "userFacingErrorMessage":  {"S": "Field should be null."}
      }' --table-name ErrorMessageMap  --region us-east-1

      aws dynamodb put-item --item '{
      "index":{"N": "142"},
      "errorCode": {"S":"1004"},
      "userFacingErrorMessage":  {"S": "Invalid field value."}
      }' --table-name ErrorMessageMap  --region us-east-1

      aws dynamodb put-item --item '{
      "index":{"N": "143"},
      "errorCode": {"S":"1005"},
      "userFacingErrorMessage":  {"S": "Invalid field value length."}
      }' --table-name ErrorMessageMap  --region us-east-1

       aws dynamodb put-item --item '{
      "index":{"N": "144"},
      "errorCode": {"S":"1006"},
      "userFacingErrorMessage":  {"S": "Invalid regex pattern."}
      }' --table-name ErrorMessageMap  --region us-east-1

      aws dynamodb put-item --item '{
      "index":{"N": "145"},
      "errorCode": {"S":"2000"},
      "userFacingErrorMessage":  {"S": "Generic validation rule error."}
      }' --table-name ErrorMessageMap  --region us-east-1

       aws dynamodb put-item --item '{
       "index":{"N": "146"},
       "errorCode": {"S":"3000"},
       "userFacingErrorMessage":  {"S": "Generic unsupported error."}
       }' --table-name ErrorMessageMap  --region us-east-1

       aws dynamodb put-item --item '{
       "index":{"N": "147"},
       "errorCode": {"S":"3001"},
       "userFacingErrorMessage":  {"S": "Unsupported version."}
       }' --table-name ErrorMessageMap  --region us-east-1

       aws dynamodb put-item --item '{
       "index":{"N": "148"},
       "errorCode": {"S":"4000"},
       "userFacingErrorMessage":  {"S": "Generic message Queue error."}
       }' --table-name ErrorMessageMap  --region us-east-1

       aws dynamodb put-item --item '{
       "index":{"N": "149"},
       "errorCode": {"S":"4001"},
       "userFacingErrorMessage":  {"S": "Invalid data in queue message."}
       }' --table-name ErrorMessageMap  --region us-east-1

       aws dynamodb put-item --item '{
       "index":{"N": "150"},
       "errorCode": {"S":"2000"},
       "userFacingErrorMessage":  {"S": "Generic validation rule error."}
       }' --table-name ErrorMessageMap  --region us-east-1

       aws dynamodb put-item --item '{
       "index":{"N": "151"},
       "errorCode": {"S":"2001"},
       "userFacingErrorMessage":  {"S": "Validation rule error - goal has unresolved goal restriction."}
       }' --table-name ErrorMessageMap  --region us-east-1

       aws dynamodb put-item --item '{
        "index":{"N": "152"},
         "errorCode": {"S":"member.unique.ssn.rule"},
         "userFacingErrorMessage":  {"S": "Unique SSN is needed"}
       }' --table-name ErrorMessageMap  --region us-east-1

       aws dynamodb put-item --item '{
        "index":{"N": "153"},
         "errorCode": {"S":"members.unique.account.rule"},
         "userFacingErrorMessage":  {"S": "Unique Account Rule is needed"}
        }' --table-name ErrorMessageMap  --region us-east-1

      aws dynamodb put-item --item '{       
       "index":{"N": "154"},
        "errorCode": {"S":"4002"},
        "userFacingErrorMessage":  {"S": "Failed to cast data in queue message."}
       }' --table-name ErrorMessageMap  --region us-east-1
