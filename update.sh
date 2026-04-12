#!/bin/bash


 DATE=20260410-01
 cp -r ../lec/$DATE/html ./$DATE
 
 codex exec \
    -C /Users/ikegaya/programs/LLMWorkSpace/git/lecMaterial.dev/MaS/site \
    --sandbox workspace-write \
    --ask-for-approval never \
    "このディレクトリ以下の"$DATE"の中のhtmlファイルへのリンクをindex.htmlに追加．日本語と英語それぞれに対応するリンクと目次を入れる"

 git add .
 git commit -m $DATE
 git push
