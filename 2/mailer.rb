require 'mail'

file = '' #ファイル名
from_addr = '' #送信元
mail_passward = '' #gmailのアプリパスワード


Mail.defaults do
  delivery_method :smtp, {
    :address => 'smtp.gmail.com',
    :port => 587,
    :domain => 'example.com',
    :user_name => "#{from_addr}",
    :password => "#{mail_passward}",
    :authentication => :login,
    :enable_starttls_auto => true
  }
end

open(file) do |f|
  f.each_line{ |line|
    line.delete!("\"")
    array = line.split(",")
    mail = Mail.new do
      from from_addr
      to      array[0]  # ファイルのメールに変更する
      body    "#{array[0]}宛に\n貴方のユーザ名は#{array[0]}\n初期パスワードは#{array[1]}"
    end
    mail.deliver
  }

end
  

