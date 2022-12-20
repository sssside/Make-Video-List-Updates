#! /bin/bash


set -x
set -e

if [ $5 -eq 1 ];then
    options="$options --translate "
fi

if [ $6 -eq 1 ];then
    options="$options --add-subtitles "
fi


syncYB --bilibili-accession-token $INPUT_BILIBILI_ACCESSION_TOKEN \
        --bilibili-refresh-token $INPUT_BILIBILI_REFRESH_TOKEN \
        --baidu-translation-appid $INPUT_BAIDU_TRANSLATION_APPID \
        --baidu-translation-appkey $INPUT_BAIDU_TRANSLATION_APPKEY $options \
        --outdir $INPUT_OUTDIR \
        --youtube-config $INPUT_CONFIG --update-number $INPUT_UPDATE_NUMBER


ls -R ./

