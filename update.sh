#!/bin/bash

 cp index.html _bk

 DATE=20260410-01
 cp -r ../lec/$DATE/html ./$DATE

 codex exec \
    -C /Users/ikegaya/programs/LLMWorkSpace/git/lecMaterial.dev/MaS/site \
    --sandbox workspace-write \
    "このディレクトリ以下の ${DATE} の中の html/index_en.html へのリンクを index.html のLecture Recordsに追加．日本語も同様に更新"

 git add .
 git commit -m $DATE
 git push
