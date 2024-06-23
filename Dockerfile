# ベースイメージとしてPython 3.11を使用
FROM python:3.11-slim

# 作業ディレクトリを設定
WORKDIR /app

# 依存関係のファイルをコピー
COPY app/requirements.txt /app/

# 依存関係をインストール
RUN pip install --no-cache-dir -r requirements.txt

# アプリケーションのソースコードをコピー
COPY app/ /app/

# ポート5000を公開
EXPOSE 5000

# Flaskアプリケーションを実行
CMD ["python", "main.py"]