NowPlayingTweet
================
  
  
What is this?
----------------
iTunesで再生中の曲情報を取得し、Twitterに#NowPlayingとして投稿するRuby製スクリプトです  
Windows専用となっています(win32ole使用のため)  
  
  
How to use
----------------
Rubyの動作環境が必須です  
###初期設定  
1.ConsumerKey & ConsumerSecretを取得します(権限は適宜調整してください)  
2.同梱されているget_token.rbを起動し、ConsumerKeyとConsumerSecretを入力して下さい  
3.ブラウザが起動するので承認する　を押してPINコードを入力しましょう その結果、AccessTokenとSecretが表示されます  
4.それを、nowplaying.rbの11~14行目に設定しましょう  
  
一度設定すれば、以後はnowplaying.rbを起動した状態でiTunesで音楽を再生すればTweetしてくれます  
Tweetのフォーマットが変更したい方は、27行目をいじりましょう  
  
  
LICENSE
----------------
GPL v3 LICENSE  
Copyleft (C) alphaKAI 2013 http://alpha-kai-net.info  
  
  
動作環境及び開発環境
--------------------
Windows8 Pro x64  
ruby 1.9.3p327 (2012-11-10) [i386-mingw32]  
  
  
作者 WEB SITE
-------------------
個人ブログ <http://blog.alpha-kai-net.info>  
HP <http://alpha-kai-net.info>  
Twitter <http://twitter.com/alpha_kai_NET>  
Github <https://github.com/alphaKAI>  
Mail to <alpha.kai.net@alpha-kai-net.info>  