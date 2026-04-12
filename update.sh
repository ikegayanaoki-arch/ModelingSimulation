#!/bin/bash


 DATE=20260410-01
 cp ../lec/$DATE/html ./$DATE
 
 codex exec $DATE"の中のhtmlファイルへのリンクをindex.htmlに追加．日本語と英語それぞれに対応するリンクと目次を入れる"

 git add .
 git commit -m $DATE
 git push
