#!/bin/sh
#毎分実行内容
wget -O "`date +%Y%m%d`_`expr $(date +%H) \* 60 + $(date +%M)`.jpg" http://room601.ise.osaka-sandai.ac.jp/loginfree.jpg
