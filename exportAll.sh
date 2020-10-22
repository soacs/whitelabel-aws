
#!/usr/bin/env bash

/bin/bash ./cleanAll.sh

/bin/bash ./exportApis.sh
/bin/bash ./exportTables.sh
/bin/bash ./exportLambdaZips.sh

/bin/bash ./updateTablesForDAP.sh

/bin/bash ./uploadApisToS3.sh
/bin/bash ./uploadLambdaZipsToS3.sh
/bin/bash ./uploadTablesToS3.sh



