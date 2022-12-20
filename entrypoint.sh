#! /bin/bash


options=""

if [[ $5==1 ]];then
    options = "$options --translate "
fi

if [[ $6==1 ]];then
    options = "$options --add-subtitles "
fi





bash -c "syncYB --bilibili-accession-token $1 --bilibili-refresh-token $2 --baidu-translation-appid $3 --baidu-translation-appkey $4 $options --outdir $6 --youtube-config $7 --update-number $8"


