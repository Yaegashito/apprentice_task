#!/usr/bin/bash

echo "パスワードマネージャーへようこそ！"

while :
do
read -p "次の選択肢から入力してください(Add Password/Get Password/Exit)：" answer

if [ "$answer" = "Add Password" ]; then
    	read -p "サービス名を入力してください：" service_name
    	read -p "ユーザー名を入力してください：" user_name
    	read -p "パスワードを入力してください：" password
    	echo "$service_name:$user_name:$password" >> "pwdata_step2.txt"
    	echo "パスワードの追加は成功しました。"
elif [ "$answer" = "Get Password" ]; then
    	read -p "サービス名を入力してください：" service_name2
    	if [ -n "$service_name2" ]; then
            	echo "なにかのサービスは登録されています"
    	elif [ -z "$service_name2" ]; then
            	echo "登録なし"
    	fi
elif [ "$answer" = "Exit" ]; then
    	echo "Thank you!"
    	break
else
    	echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"
fi
done