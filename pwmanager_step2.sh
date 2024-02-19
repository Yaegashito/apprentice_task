#!/usr/bin/bash

echo "パスワードマネージャーへようこそ！"
read -p "次の選択肢から入力してください(Add Password/Get Password/Exit)：" a

if [ "$a" = "Add Password" ]; then
    read -p "サービス名を入力してください："
    read -p "ユーザー名を入力してください："
    read -p "パスワードを入力してください："

    echo "パスワードの追加は成功しました。"
elif [ "$a" = "Get Password" ]; then
    echo "coming soon"
elif [ "$a" = "Exit" ]; then
    echo "Thank you!"
else
    echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"
fi