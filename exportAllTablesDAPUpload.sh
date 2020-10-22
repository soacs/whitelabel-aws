
#!/usr/bin/env bash

/bin/bash ./cleanAll.sh
/bin/bash ./exportTables.sh
/bin/bash ./updateTablesForDAP.sh
/bin/bash ./uploadTablesToS3.sh
