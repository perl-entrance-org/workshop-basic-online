# Web API を使う（GET）

---

## Web API を使う（GET）

### API とは

<ruby>API<rt>エーピーアイ</rt></ruby> とは Application Programming Interface の略です。

>APIの重要な役割は、システム／サービス提供者が公式に仕様（外部仕様）を定義し、管理している各種機能を利用するための操作方法（インタフェース）を提供することである（Wikipedia より）

---

## Web API を使う（GET）

### Web API と GET / POST

API をホームページの閲覧などで利用する HTTP / HTTPS で利用できるようにしたものが Web API です。

Web API を利用することで、Web サービスが提供している情報をプログラムで利用することができます。

HTTP / HTTP には 様々な種類の通信リクエスト方法（メソッド）がありますが、今回はよく利用される <ruby>GET<rt>ゲット</rt></ruby> メソッド 、 <ruby>POST<rt>ポスト</rt></ruby> メソッド を体験していきます。

まずは GET メソッド です。GET メソッド は主にインターネットから情報を入手する、表示するために利用されます。

---

## Web API を使う（GET）

### HTTP::Tiny

では、早速 Web API を利用してみましょう。

今回は Perl の標準モジュールである <ruby>HTTP::Tiny<rt>エイチティティピー タイニー</rt></ruby> を利用します。

[HTTP::Tiny - 小さく、シンプルで、正しい HTTP/1.1 クライアント - perldoc.jp](https://perldoc.jp/docs/modules/HTTP-Tiny-0.017/Tiny.pod)

HTTP::Tiny は Web API に限らず、HTTPで提供されているデータを Perl で利用する時に用います。

同様のモジュールとして `LWP（libwww-perl）`, `LWP::Simple`, `Furl` 等があります。

---

## Web API を使う（GET）

### モジュール

HTTP::Tiny をはじめ、Perl にはモジュールという機能追加の仕組みがあります。

同様の仕組みは他のプログラム言語にもあり、Ruby であれば <ruby>Gem<rt>ジェム</rt></ruby>、Python ではライブラリ、JavaScript ではモジュール、という名前で提供されています。

Perl のモジュールには Perl インストール時に一緒にインストールされる標準モジュールと、インストールが必要な外部モジュールがあります。

Perl のモジュールは metacpan や GitHub で探すことができます。
[Search the CPAN - metacpan.org](https://metacpan.org/)

---

## Web API を使う（GET）

### 気象庁非公式 Web API

今回は気象庁の非公式 Web API を利用してみます。`weather_report.pl` というファイルを作成し、以下のコードをコピーして実行してみてください。[GitHub Gist](https://gist.github.com/sironekotoro/03923f8676ad1c8c6890b894a8b936ab/b22a8eaf2489dfa316dfeaa6aacd5ced47262177)

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

データ表示用にハッシュの回で解説した `Data::Dumper` 、そして先に紹介した `HTTP::Tiny` です。

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

### Web API の共通言語 JSON

さて、ここから更に `targetArea` の情報を抜き出します。

この `content` の中身を抜粋すると、以下のようになっています。

```json
"publishingOffice":"気象庁","targetArea":"東京都", ...
```

Perl のハッシュに似た、"キー名"<ruby>:<rt>コロン</rt></ruby>"値", "キー名":"値", というデータ構造になっています。

これは Web API でよく利用される <ruby>JSON<rt>ジェイソン</rt></ruby> 形式のデータです。

---

## Web API を使う（GET）

### Web API の共通言語 JSON

JSON 形式のデータは JavaScript のオブジェクト表記法の一部です。
軽易で軽量かつ人間にも理解しやすい形式として Web API でよく利用されるようになりました。

Perl が JSON 形式のデータを読み、ハッシュリファレンスなどの Perl のデータ形式に変換するためには、`JSON::PP` モジュールを利用します。

先のプログラムを一部改修します。

---

## Web API を使う（GET）

### JSON からデータを取り出す

お約束の3行を省略したコードです。コピペして実行してみてください。[GitHub Gist](https://gist.github.com/sironekotoro/03923f8676ad1c8c6890b894a8b936ab/7d7328b69b3106bc9e65c551dc0a64af88c1e53a)

```perl
use Data::Dumper;
use HTTP::Tiny;
use JSON::PP;   # 追加

my $url
    = "https://www.jma.go.jp/bosai/forecast/data/overview_forecast/130000.json";
my $response = HTTP::Tiny->new()->get($url);
my $content = $response->{content};

my $decoded_content = decode_json($content); #追加
print $decoded_content->{targetArea};   #追加

# Wide character in print at temp.pl line 20.
# 東京都
```

---

## Web API を使う（GET）

### JSON からデータを取り出す

追加したコードを解説していきます。

`JSON::PP` は、Perl で JSON 形式のデータを扱うモジュールです。
なお、モジュールはプログラムの先頭にまとめて書いておくことが多いです。

```perl
use Data::Dumper;
use HTTP::Tiny;
use JSON::PP;   # 追加
```

---

## Web API を使う（GET）

### JSON からデータを取り出す

decode_json 関数は引数の JSON 形式のデータを Perl のハッシュリファレンスに変換します。

この時に Perl が内部で文字を扱う「テキスト文字列」に変換していますが、Perl 入学式では後ほど簡単に説明します。

コード中では `$content` をハッシュリファレンスに変換してスカラー変数 `$decoded_content` に代入しています。

```perl
my $decoded_content = decode_json($content); #追加
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
Wide character in print at temp.pl line 22.
東京都
```

この時、実行結果に `Wide character in print at temp.pl line 22.` という警告がつきます。

---

## Web API を使う（GET）

### Wide character in print at 〜

この警告は、`decode_json` で JSON 形式のデータを Perl のハッシュリファレンスに変更した際の「テキスト文字列」をターミナルにそのまま表示しようとした際に表示されるものです。

この警告は、プログラムから見て「外部」であるインターネット（今回の Web API 含む）やデータベース、ファイルなどから入手・入力したデータをターミナルに表示しようとした時に発せられることが多いものです。

この警告が出た時は、`Encode` モジュールを利用して、ターミナルの環境の文字コードでエンコードして表示します。

---

## Web API を使う（GET）

### 警告なしにデータを表示する

お約束の3行を省略したコードです。コピペして実行してみてください。警告なしで「東京都」と出たら成功です。[GitHub Gist](https://gist.github.com/sironekotoro/03923f8676ad1c8c6890b894a8b936ab/40a21a34705e8840de62dd373fafb605dd633144)

```perl
use Data::Dumper;
use HTTP::Tiny;
use JSON::PP;
use Encode; #追加

my $url
    = "https://www.jma.go.jp/bosai/forecast/data/overview_forecast/130000.json";

my $response = HTTP::Tiny->new()->get($url);
my $content = $response->{content};
my $decoded_content = decode_json($content);

my $target_area = $decoded_content->{targetArea}; # スカラー変数に格納

print encode( 'utf8', $target_area );   # 追加
```

---

## 練習問題 `weather_report_all.pl`

では、先のコードを改造して、`decoded_content` の全ての情報を表示してみましょう。

ヒント1：`decoded_content` はハッシュリファレンスである。

ヒント2：ハッシュの全てのキー名を返す関数は `keys` である。

余裕のある人は、URLの `130000` を他の地域の番号に変えて試してみたり、標準入力から番号を入れられるよう改造してみましょう。（例：大阪は `270000`）

http://www.jma.go.jp/bosai/common/const/area.json

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（5 〜 10 分）
