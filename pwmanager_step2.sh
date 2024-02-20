#!/usr/bin/bash

echo "パスワードマネージャーへようこそ！"

while :
do
read -p "次の選択肢から入力してください(Add Password/Get Password/Exit)：" answer

if [ "$answer" = "Add Password" ]; then
    read -p "サービス名を入力してください：" service_nameA
    read -p "ユーザー名を入力してください：" user_name
    read -p "パスワードを入力してください：" password
    echo "$service_nameA:$user_name:$password" >> "pwdata_step2.txt"
    echo "パスワードの追加は成功しました。"
elif [ "$answer" = "Get Password" ]; then
    read -p "サービス名を入力してください：" service_nameG
    if [ -z $(grep "^$service_nameG:" pwdata_step2.txt) ]; then
   	 echo "登録なし"
    elif [ -n $(grep "^$service_nameG:" pwdata_step2.txt) ]; then
   	 echo "サービス名：$service_nameG"
   	 echo "ユーザー名：$(grep "^$service_nameG:" pwdata_step2.txt | cut -d ":" -f 2)"
   	 echo "パスワード：$(grep "^$service_nameG:" pwdata_step2.txt | cut -d ":" -f 3)"
    fi
elif [ "$answer" = "Exit" ]; then
    echo "Thank you!"
    break
else
    echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"
fi
done
