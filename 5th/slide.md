# Perl 入学式 第 5 回

## 〜アプリ作成実践編〜



---

## 諸注意

### 会場について

- 飲食の可否

- 手洗いの場所

- 喫煙場所

---

## 諸注意

### 講義の進行について

- 講義中の疑問点

- うまくプログラムが動かない

- 分からない

上記についてはサポーターが適宜回答やアドバイスを Discord でおこないます。

テキストまたは音声チャットにて個別にサポートしますので、気軽に質問してください。

- <a href="https://discord.gg/2QNqVyk" target="_blank">Discord | 会話や交流が楽しめるプラットフォーム</a>

---

## 諸注意

### 講義環境について

- Youtube

- スライド共有ツール

- Discord

---

## 諸注意

### 本日のサポーター紹介



---

# Web API を使う（GET）

---

## Web API を使う（GET）

### API とは

<ruby>API<rt>エーピーアイ</rt></ruby> とは Application Programming Interface の略です。

>APIの重要な役割は、システム／サービス提供者が公式に仕様（外部仕様）を定義し、管理している各種機能を利用するための操作方法（インタフェース）を提供することである（Wikipedia より）

---

## Web API を使う（GET）

### Web API と GET / POST

API をホームページの閲覧などで利用する HTTP / HTTPS 上で利用できるようにしたものが Web API です。

Web API を利用することで、Web サービスが提供している情報をプログラムで利用することができます。

HTTP / HTTPS には 様々な種類の通信リクエスト方法（メソッド）がありますが、今回はよく利用される <ruby>GET<rt>ゲット</rt></ruby> メソッド 、 <ruby>POST<rt>ポスト</rt></ruby> メソッド を体験していきます。

まずは GET メソッド です。GET メソッドは主にインターネットを介してサーバから情報を受信するために利用されます。

---

## Web API を使う（GET）

### HTTP::Tiny

では、早速 Web API を利用してみましょう。

今回は <ruby>`HTTP::Tiny`<rt>エイチティティピー タイニー</rt></ruby> を利用します。

[HTTP::Tiny - 小さく、シンプルで、正しい HTTP/1.1 クライアント - perldoc.jp](https://perldoc.jp/HTTP::Tiny)

HTTP::Tiny は Web API に限らず、HTTPで提供されているデータを Perl で利用する時に用います。

同様のモジュールとして `LWP（libwww-perl）`, `LWP::Simple`, `Furl` 等があります。

---

## Web API を使う（GET）

### モジュール

`HTTP::Tiny` をはじめ、Perl にはモジュールという機能追加の仕組みがあります。

同様の仕組みは他のプログラム言語にもあり、Ruby であれば <ruby>Gem<rt>ジェム</rt></ruby>、Python ではライブラリ、JavaScript ではモジュール、という名前で提供されています。

---

## Web API を使う（GET）

### 標準モジュールと外部モジュール

Perl のモジュールには大きく分けて 2 種類あります。

- 標準モジュール：Perl インストール時に一緒にインストールされる。

- 外部モジュール：インストールが必要。

`HTTP::Tiny` は Perl 5.14 以降に含まれている標準モジュールです。ハッシュのところで学習した `Data::Dumper`
 も標準モジュールです。

Perl のモジュールは metacpan や GitHub で探すことができます。
[Search the CPAN - metacpan.org](https://metacpan.org/)

---

## Web API を使う（GET）

### 気象庁非公式 Web API

今回は気象庁の非公式 Web API を利用してみます。`weather_report.pl` というファイルを作成し、以下のコードをコピーして実行してみてください。[GitHub Gist](https://gist.github.com/sironekotoro/09954632ea3c79f899139e808bbda2ca/3a6bcbb097adfbf9958d8591a58d10c122cf1827)

```perl
#!/usr/bin/env perl
use strict;
use warnings;

use Data::Dumper;
use HTTP::Tiny;

my $url
    = 'https://www.jma.go.jp/bosai/forecast/data/overview_forecast/130000.json';

my $response = HTTP::Tiny->new()->get($url);

print Dumper $response;
```

---

## Web API を使う（GET）

### 気象庁非公式 Web API

アクセスに成功すると、ターミナルに東京地方の天気予報といくつかの情報が表示されます。

アクセスがうまくいかなかった方は、エラーメッセージを Discord に貼り付けるなどして、サポーターへ報告をお願いします。

---

## Web API を使う（GET）

### 気象庁非公式 Web API

では、コードを解説します。1 〜 3 行目までは毎回のお約束です。

```perl
#!/usr/bin/env perl
use strict;
use warnings;
```

次に、今回利用するモジュールを `use` します。

```perl
use Data::Dumper;
use HTTP::Tiny;
```

`use` することで、そのモジュールをプログラムの中で利用できるようになります。

データ表示用に `Data::Dumper` 、そして先に紹介した `HTTP::Tiny` です。

---

## Web API を使う（GET）

### 気象庁非公式 Web API

スカラー変数 `$url` にはアクセス先の URL を代入します。

```perl
my $url
    = 'https://www.jma.go.jp/bosai/forecast/data/overview_forecast/130000.json';
```

この URL に対し、HTTP::Tiny が GET でアクセスして応答をスカラー変数 `$response` に格納します。

```perl
my $response = HTTP::Tiny->new()->get($url);
```

最後に、 `$response` を Data::Dumper の Dumper 関数で表示しています。

```perl
print Dumper $response;
```

---

## Web API を使う（GET）

### 気象庁非公式 Web API の応答を取り出す

`Dumper` しただけでも、人間であれば必要な情報を取り出すことが可能です。

しかし、プログラムの場合には Web API の応答から必要な部分だけを取り出すための工程が必要です。

今回は Web API からの応答のうち、地域名を取り出してみます。地域名は `content` 内の `targetArea` になります。

---

## Web API を使う（GET）

### 気象庁非公式 Web API の応答を取り出す

ところで、先の Web API にアクセスするコードの最後で `Dumper` を利用して中身を見ていました。

この `Dumper` を削除し、 `$response` をそのまま `print` してみると以下のように表示されます。

```bash
$ perl weather_report.pl
HASH(0x7fb4102d11c0)
```

この `$response` はハッシュリファレンスであることがわかります。

そのうち、`Dumper` を見ただけでわかったり、あるいはモジュールのドキュメントをみてわかるようになります。

---

## Web API を使う（GET）

### 気象庁非公式 Web API の応答を取り出す

さて、改めて `Dumper` 時の応答を見ると、ハッシュリファレンス `$response` の キー名 `content` に今回ほしいデータがあります。

まず、`content` の部分だけを表示してみましょう。

ハッシュリファレンスからキー名を指定して表示するには、アロー記法を使って<ruby>{ }<rt>波かっこ</rt></ruby>でアクセスするのでした。

```perl
print $response->{content};
```

これで、 `content` だけが表示されるようになりました。

---

## Web API を使う（GET）

### Web API の共通データ形式 JSON

さて、ここから更に `targetArea` の情報を抜き出します。

この `content` の中身を抜粋すると、以下のようになっています。

```json
"publishingOffice":"気象庁","targetArea":"東京都", ...
```

Perl のハッシュに似た、"キー名"<ruby>:<rt>コロン</rt></ruby>"値", "キー名":"値", というデータ構造になっています。

これは Web API でよく利用される <ruby>JSON<rt>ジェイソン</rt></ruby> 形式のデータです。

---

## Web API を使う（GET）

### Web API の共通データ形式 JSON

JSON 形式のデータは JavaScript のオブジェクト表記法の一部です。
軽易で軽量かつ人間にも理解しやすい形式として Web API でよく利用されるようになりました。

Perl が JSON 形式のデータを読み、ハッシュリファレンスなどの Perl のデータ形式に変換するためには、標準モジュールの `JSON::PP` モジュールを利用します。

先のプログラムを一部改修します。

---

## Web API を使う（GET）

### JSON からデータを取り出す

お約束の3行を省略したコードです。コピペして実行してみてください。[GitHub Gist](https://gist.github.com/sironekotoro/09954632ea3c79f899139e808bbda2ca/69c6cfce2c3dc67ccce28ce7c6922892cb408955)

```perl
use HTTP::Tiny;
use JSON::PP;   # 追加

my $url
    = "https://www.jma.go.jp/bosai/forecast/data/overview_forecast/130000.json";
my $response = HTTP::Tiny->new()->get($url);
my $content = $response->{content};

my $decoded_content = JSON::PP->new->decode($content); #追加
print $decoded_content->{targetArea};   #追加
```

---

## Web API を使う（GET）

### JSON からデータを取り出す

追加したコードを解説していきます。

`JSON::PP` は、Perl で JSON 形式のデータを扱うモジュールです。

JSON 形式のデータを Perl のハッシュリファレンスにしたり（`decode`）、逆に Perl のハッシュリファレンスを JSON 形式のデータにしたり（`encode`）することができます。

なお、モジュールはプログラムの先頭にまとめて書いておくことが多いです。

```perl
use Data::Dumper;
use HTTP::Tiny;
use JSON::PP;   # 追加
```

---

## Web API を使う（GET）

### JSON からデータを取り出す

`JSON::PP->new->decode($content)` で、引数である JSON 形式のデータ `$content` を Perl のハッシュリファレンスに変換しています。

コード中では `$content` をハッシュリファレンスに変換してスカラー変数 `$decoded_content` に代入しています。

```perl
my $decoded_content = JSON::PP->new->decode($content); #追加
```

---

## Web API を使う（GET）

### JSON からデータを取り出す

次の行で、ハッシュリファレンスのキー名 `targetArea` を指定して `print` します。

```perl
print $decoded_content->{targetArea};   #追加
```

実行結果
```perl
東京都
```

---

## 練習問題 `weather_report_all.pl`

では、先のコードを改造して、`decoded_content` の全ての情報を表示してみましょう。

ヒント1：`decoded_content` はハッシュリファレンスである。

ヒント2：ハッシュの全てのキー名を返す関数は `keys` である。

余裕のある人は、URLの `130000` を他の地域の番号に変えて試してみたり、コマンドライン引数から番号を入れられるよう改造してみましょう。（例：大阪は `270000`）

[全拠点のJSON](http://www.jma.go.jp/bosai/common/const/area.json)

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（5 〜 10 分）


---

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

さて、投稿メッセージに日本語を使いたくなるのは当然のことだと思います。早速やってみましょう。

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


---

# コラム：YAPC::Japan::Online 2022年03月04日 〜 05 日開催！

---

## コラム：YAPC::Japan::Online 2022年03月04日 〜 05 日開催！

年に一度、Perl のお祭りが開かれます。それが YAPC::Japan です。

来年 3 月にオンラインでの開催が告知されました。

YAPC::Japan::Online 2022の開催が決定しました - YAPC::Japan 運営ブログ
https://blog.yapcjapan.org/entry/yapc-japan-online-2022-is-comming-soon

---

## コラム：YAPC::Japan::Online 2022年03月04日 〜 05 日開催！

このコロナ禍のなかで、Perl 使いである <ruby>Perl Monger<rt>パール モンガー</rt></ruby>達はどう過ごしていたのか？

また Perl が企業やサービスの中でどのように息づいているのか？を知る良い機会です。

ぜひ参加ください！

申し込み開始の際には、Perl 入学式公式 Twitter や Discord などでも告知します。



---

# Perl と日本語

---

## Perl と日本語

これまで、Perl でプログラムの基礎を学習してきました。

Perl を学習する上での最初の大きな壁はリファレンスですが、それと共に立ち塞がるのが日本語です。

ここからは Perl入学式 での学習環境（linux/mac/msys2）を前提に学習していきます。

---

## Perl と日本語

### プログラム中の日本語

早速試してみましょう。`length` 関数は引数の文字数を返します。

半角文字列 `hello` であれば、 5 と返します。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my $greet = 'hello';

print 'length: ' . length($greet) . "\n";   # 5
```

[Perlの組み込み関数 length の翻訳 - perldoc.jp](https://perldoc.jp/func/length)

---

## Perl と日本語

### プログラム中の日本語

しかし、日本語で試すと意図しない結果になります。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my $greet = 'こんにちは';

print 'length: ' . length($greet) . "\n";   # 15
```

---

## Perl と日本語

### バイト列（バイナリ文字列）

これは、Perl が 'こんにちは' という日本語の文字列を、人間が読むように「5 文字の平仮名」とは認識しないためです。

Perl は入力、プログラム中の文字列、出力を **バイト列（バイナリ文字列）** として扱います。

この 'こんにちは' という文字列は Perl からは以下のような16進数の連なりとして見えています。

`E3 81 93 E3 82 93 E3 81 AB E3 81 A1 E3 82 AF`

このため、`length` 関数は 15 文字と文字数を返したのです。

---

## Perl と日本語

### テキスト文字列

プログラム中にある「こんにちは」という文字列をひらがな 5 文字として認識するためには、`use utf8` を利用します。

この `use utf8` によって、Perl はバイト列（バイナリ文字列）を、 **テキスト文字列** として扱い、書いてあるままに解釈します。

```perl
#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

my $greet = 'こんにちは';

print 'length: ' . length($greet) . "\n";   # 5
```

---

## Perl と日本語

### `use utf8` がいらない場合

プログラムは半角英語と数字、記号の組み合わせで書かれています。

正規表現風に書くと、文字は `a-zA-Z` で 26 文字 * 2 で 52 文字。これに数字が `0-9` で 10 文字、`+-/%\?=$@% .,` などの記号が数十種類あります。

これらは 2 桁の 16 進数（ 1 バイト）で表される 256 個の範囲で割り当てられています。一例を挙げるとこのような感じです。

```perl
a => 61 # 16進数の61
z => 7a # 16進数の7a
```

このため、英数字と記号だけでプログラムを書いている場合は、`use utf8` をしなくても、問題はありません。

---

## Perl と日本語

### `use utf8` が必要な場合

しかし、1 バイトで表現できる 256 個の空間では、膨大な数の日本語（ひらがな、カタカナ、漢字）を表現するに足りません。

このため、日本語 1 文字に複数のバイトを割り当てることで日本語を処理することにしました。このルールが **エンコーディング** と呼ばれるものです。

```perl
こ => E3 81 93
ん => E3 82 93
に => E3 81 AB
ち => E3 81 A1
は => E3 82 AF
```

`use utf8` を使うことで、Perl はプログラムに書かれている文字が `utf8` エンコード であることを前提に文字を処理するようになります。

---


## Perl と日本語

### 入力された日本語を正しく扱う

コマンドライン引数から「こんにちは」と入力した時も同様の問題が発生します。

`use utf8` を使うことで、Perl はプログラムに書かれた文字をテキスト文字列として解釈します。しかし、今回はコマンドライン引数から入力されるバイト列（バイナリ文字列）なので効果がありません。

```perl
#!/usr/bin/env perl
use strict;
use warnings;
use utf8; # あってもなくても同じ

my $input = shift @ARGV;

print 'length: ' . length($input) . "\n"; # 引数に日本語を入れるとカウント失敗
```

---

## Perl と日本語

### 入力された日本語を正しく扱う

コマンドライン引数から入力されたバイト列（バイナリ文字列）をテキスト文字列にするには <ruby>`Encode`<rt>エンコード</rt></ruby> モジュールの <ruby>decode<rt>デコード</rt></ruby> を使います。

これで、正しく日本語入力を受け取ることができました。

```perl
#!/usr/bin/env perl
use strict;
use warnings;
use Encode;     # 追加

my $input = shift @ARGV;
my $decoded_input = decode('utf8', $input); # utf8 で デコードする

print 'length: ' . length($decoded_input) . "\n";
```

---

## Perl と日本語

### 出力する日本語を正しく扱う

これまで、「プログラム中に日本語が書いてある場合」「日本語の入力を受け付ける場合」の２つのパターンを学んできました。

最後は「プログラムで処理した日本語を出力する場合」です。

---

## Perl と日本語

### 出力する日本語を正しく扱う

`use utf8` を使った以下のプログラムで、日本語が代入されている `$greet` をそのまま `print` すると警告が出ます。

```perl
#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

my $greet = 'こんにちは';

print 'length: ' . length($greet) . "\n";   # 5
print $greet . "\n";   # Wide character in print at 〜
```

---

## Perl と日本語

### 出力する日本語を正しく扱う

これは `use utf8` することでテキスト文字列になった 'こんにちは' （を代入した `$greet`）を、テキスト文字列のまま表示しようとしたためです。

> Perl は入力、プログラム中の処理、出力をこの**バイト列（バイナリ文字列）**で扱います。


---

## Perl と日本語

### 出力する日本語を正しく扱う

入力を受け取った後にデコードをしたように、出力する前に Encode モジュールの <ruby>encode<rt>エンコード</rt></ruby> を行うことで、対象の文字列をバイト列（バイナリ文字列）に変換できます。

これで、警告がなくなりました。

```perl
#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use Encode; # 追加

my $greet = 'こんにちは';

print 'length: ' . length($greet) . "\n";   # 5
print encode('utf8', $greet) . "\n";        # utf8 でエンコード こんにちは
```

---

## Perl と日本語

### 日本語の入出力まとめ

今まで見てきた通り、Perl の日本語処理は以下のようになります。

1. プログラム中に日本語を書いたり、日本語を対象にした正規表現などを書くときは `use utf8` してバイト列（バイナリ文字列）をテキスト文字列にする。

2. コマンドライン引数などで日本語の入力を受け付けて、それを 1 のような加工や、`use utf8` した日本語との比較をする場合には、 `decode` してバイト列（バイナリ文字列）をテキスト文字列にする。

3. 上記 1, 2 のような処理をした文字列を出力するときは、 `encode` してテキスト文字列をバイト列（バイナリ文字列）にする。

---

## Perl と日本語

### 日本語の入出力まとめ

日本語を入出力したり、単純な比較のみであれば、`use utf8` は不要です。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my $input = shift @ARGV;    # バイト列（バイナリ文字列）で受け取る

if ($input eq 'こんにちは'){ #  バイト列（バイナリ文字列）のまま比較する
    print "同じ文字列です";    # バイト列（バイナリ文字列）を出力する。
}else{
    print "違う文字列です";    # バイト列（バイナリ文字列）を出力する。
}
```

---

## Perl と日本語

### 日本語の入出力まとめ

しかし、テキストで学習した `length` や、以下のような日本語を対象にした正規表現を利用する場合には、エンコードの処理が必要です。

```perl
my $input = shift @ARGV;    # バイト列（バイナリ文字列）で受け取る

if ($input =~ /^(.)/ ){ # バイト列（バイナリ文字列）のまま正規表現！
                        # 正規表現 ^(.) で先頭の 1 文字をキャプチャする
                        # でも、decode していないから・・・？

    print "先頭の文字は $1 です";    # バイト列（バイナリ文字列）を出力する。
}
```

---

## Perl と日本語

### 練習問題 `greet_and_length.pl`

以下のプログラムはコマンドライン引数に名前を入力すると、挨拶と文字数を表示するプログラムです。

これを改修して、コマンドライン引数に日本語を入力しても、正しく表示や文字数カウントができるようにしてください。`print` 文内の `$input` は各自で設定した変数に置き換えてください。

```perl
#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

my $input = shift @ARGV;

print 'こんにちは！' . $input . "さん。\n";
print 'あなたの名前は' . length($input) . "文字です。\n";
```

---

## Perl と日本語

### 練習問題 `first_and_last_letter.pl`

以下のプログラムはコマンドライン引数に文字列を入力すると、先頭の文字と末尾の文字を教えてくれるプログラムです。

これを改修して、コマンドライン引数に日本語を入力しても、正しく表示ができるようにしてください。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my $input = shift @ARGV;    # バイト列（バイナリ文字列）で受け取る

if ($input =~ /^(.).*(.)$/){   # バイト列のまま正規表現！
                               # 入力された文字の先頭 1 字と末端 1 字をキャプチャ
    print "$1 ではじまって $2 で終わります";
    # バイト列（バイナリ文字列）を出力する
}
```

---

## Perl と日本語

### 練習問題 `use_utf8.pl`

以下のプログラムはコマンドライン引数に `こんにちは` と入力しても、同じ文字列とは判定されません。また、`Wide character in print at 〜` の警告も表示されます。

これを `use utf8;` は残したまま改修して、正しく判定され、警告も出ないようにしてください。

```perl
#!/usr/bin/env perl
use strict;
use warnings;
use utf8;   # use utf8 しているので、プログラムに書かれているのはテキスト文字列

my $input = shift @ARGV;    # バイト列（バイナリ文字列）で受け取る

if ($input eq 'こんにちは'){ #  バイト列（バイナリ文字列）とテキスト文字列を比較？
    print "同じ文字列です";    # テキスト文字列を出力する。
}else{
    print "違う文字列です";    # テキスト文字列を出力する。
}
```

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（5 〜 10 分）


---

## お疲れ様でした!

サポーターや参加者の皆さんと交流しましょう。

不明点は Discord #雑談部屋 で是非質問してください。

「●●をやりたいが、何から手をつけていいかわからない」といった質問にも、何かしらアドバイスやヒントを提供できる場になればと考えています。

次回以降の参加もお待ちしております!


---

