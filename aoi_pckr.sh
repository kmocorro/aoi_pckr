#!bin/bash
# AOI Log Picker NTM_L17
# sample file

TOOLNAME=NTM_L17
SERVER=automailer@10.3.90.132
SERVER_CD=/C:/Production/aoi/public/$TOOLNAME

FILE=/c/bin/bash/Image.txt #assuming this will be "K://20.0.0.0.2/log/Image.txt"


sftp "${SERVER}" << EOF 
    cd "${SERVER_CD}"
    put "${FILE}"

    quit
EOF
