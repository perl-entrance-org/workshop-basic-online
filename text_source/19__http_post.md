# Web API を使う（POST）

---

## Web API を使う（POST）

### POST

GET メソッドは主にインターネットを介してサーバから情報を受信するために利用されます。

それに対し、POST メソッドはインターネットを介して情報を送信するために利用します。Web上のフォームを利用して送信したり、画像のアップロードなどに利用されます。

今回は Perl 入学式で利用している Discord にプログラムから書き込んでみます。

---

## Web API を使う（POST）

### Discord から ウェブフックURL を入手する

Discord に POST するためには URL が必要です。Discord ではこの URL を「ウェブフックURL」と呼んでいます。

1. Discord の #webhook実習室 をクリックし、すぐ右にある歯車マーク ⚙ をクリックする

1. 左側のメニューから「連携サービス」をクリックし、右側の「ウェブフック」をクリックする

1. 「新しいウェブフック」ボタンをクリックする

1. 名前を `Spidey Bot` から `（受講生名） Bot` に変更する

1. 「ウェブフックURL」ボタンを押してURLをコピーし、画面最下部にある「変更を保存する」ボタンを押す。

---

## Web API を使う（POST）

### POST で投稿する

現在、手元のパソコンのクリップボードには Discord のウェブフックURL が保存されています。

この ウェブフックURL に投稿したいデータを付与して送信します。

POSTで投稿する時は、投稿先の要求に備えた設定を行う必要があります。Discord の場合には以下のドキュメントが参考になります。

- [タイトル: Webhooksへの序章](https://support.discord.com/hc/ja/articles/228383668-%E3%82%BF%E3%82%A4%E3%83%88%E3%83%AB-Webhooks%E3%81%B8%E3%81%AE%E5%BA%8F%E7%AB%A0)

- [Execute Webhook](https://discord.com/developers/docs/resources/webhook#execute-webhook)


---

## Web API を使う（POST）

### POST で投稿する

以下のコードが Discord に送信するためのプログラムです。`discord_webhook.pl` という名前で保存し、先に発行したウェブフックURL をスカラー変数 $webhook_url に代入するよう右辺に貼り付けて実行してみましょう。[GitHub Gist](https://gist.github.com/sironekotoro/af7cad7dfe0165727bf46364e6fce541/72095ad5914cecb8d9fceb17592b693c5471e4fe)

```perl
use HTTP::Tiny;
use JSON::PP;

my $webhook_url = 'ここに貼り付ける';

my $options = {
    headers => { 'Content-Type' => 'application/json'},
    content => JSON::PP->new()->encode({ content => 'Hello, Discord!' }),
};

my $response = HTTP::Tiny->new()->post( $webhook_url, $options );
```

Discord の `#webhook実習室` に書き込みされれば成功です。

---

## Web API を使う（POST）

### POST で投稿する

では、コードの解説です。

POSTで投稿する時は、投稿先の要求に備えた設定を行う必要があります。それが以下の部分です。

HTTP で通信する際のヘッダ情報 `headers` に `'Content-Type' => 'application/json'` を指定しています。

投稿する本文 `content` はハッシュリファレンスを `JSON::PP->new()->encode` で JSON 形式にしています。

```perl
my $options = {
    headers => { 'Content-Type' => 'application/json'},
    content => JSON::PP->new()->encode( 'Hello, Discord!' ),
};
```

---

## Web API を使う（POST）

### POST で投稿する

先の投稿先の要求に備えた設定ですが、最初は公式ドキュメントなどから読み取るのは難しいかもしれません。

そういった時は、他の言語での実装やブログ、Qiita などの記事も参考になります。Perl入学式の Discord チャンネルで聞いてみるのも良いでしょう。

---

## Web API を使う（POST）

### POST で投稿する

最後の行で、投稿先の要求に備えた設定であるハッシュリファレンス `$option` を添えて `HTTP::Tiny` で通信します。

```perl
my $response = HTTP::Tiny->new()->post( $webhook_url, $options );
```

この `$response` の中身は HTTP ステータスコードや通信日時などの情報が入っています。`Data::Dumper` などで中身を表示してみましょう。


---

## Web API を使う（POST）

### POST で日本語を投稿する

さて、投稿メッセージに日本語を使いたくなるのは当然のことだと思います。早速やってみましょう。[GitHub Gist](https://gist.github.com/sironekotoro/af7cad7dfe0165727bf46364e6fce541/5e7d24cd5d78295b7a54c3cbe157e3cdc631f07f)

```perl
use HTTP::Tiny;
use JSON::PP;

my $webhook_url = 'ここに貼り付ける';

my $options = {
    headers => { 'Content-Type' => 'application/json'},
    content => JSON::PP->new()->encode({ content => 'こんにちは！' }), #　日本語で挨拶
};

my $res = HTTP::Tiny->new()->post( $webhook_url, $options );
```

---

## 練習問題 `webhook.pl`

先に作成した気象庁 Web API のコードを利用して、明日の天気予報などを Discord の `#webhook実験室` に投稿してみましょう。

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（5 〜 10 分）
