#!/bin/sh
#ビデオ作成
#1日に一回
ffmpeg -r 15 -i `date +%Y%m%d`_%d.jpg output.mp4