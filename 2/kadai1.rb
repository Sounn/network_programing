#urlのcファイルを実行する
require 'open-uri'
require 'mkmf'
url = "http://www0.ise.osaka-sandai.ac.jp/%7Eandrew/NP/S/dc1.c"
create_makefile(url)