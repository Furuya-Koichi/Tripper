# SNS型旅行共有アプリ（Tripper）について
<img width="1279" alt="スクリーンショット 2020-04-14 18 13 33" src="https://user-images.githubusercontent.com/57896659/79207502-bae70180-7e7b-11ea-94e2-1c4c6f8db72f.png">

<img width="1279" alt="スクリーンショット 2020-04-22 21 48 54" src="https://user-images.githubusercontent.com/57896659/79983776-2ddb2280-84e3-11ea-9ee6-485f4fe1b2a9.png"> 

URL:https://newtripper.herokuapp.com/


### ①はじめに 
　FacebookやInstagramなどのSNSが流行している中で、個人のオリジナルな経験や体験が価値を持つ時代になってきています。そうした中でもっと個人のオリジナルな経験や体験が他の人にとってより良い経験や体験を生み出すきっかけになればいいなという想いがあり、この度SNS型旅行共有アプリ（Tripper）作成しています。  
 また、このアプリはまだまだ進化していきます。
### ②なぜ旅行に特化したSNS型共有アプリを作成したのか
　旅行は私たちにとって、様々な体験や価値を生み出してくれます。そして、旅行はその土地の文化や人に触れることで私たちを成長させてくれる。そんな利点もあリます。そんな旅行がもっと有意義なものになればいいなという願いを込めて旅行に特化したアプリを作成したいと思いました。  
　また、この世の中には旅上手な人がいます。一口に旅上手と言っても、色々な旅上手がいますよね。例えば、「旅をリーズナブルにするのが上手い人」、「旅のプランニングが上手い人」、「まだパンフレットに載っていない絶景を探すのが上手い人」などなど・・・。このような旅上手の人たちの情報は価値があります。  
　旅上手な人たちの情報はニーズがあります。Tripperがたくさんの人達の情報で溢れることで、色々な人達の情報がいっぱい詰まった旅行雑誌のようなアプリになるのです。
# 実装済み機能（現在も更新中）
○ 新規登録・ログイン機能  
○（新規登録・ログイン機能時におけるGoogleでのSNS認証（FacebookでのSNS認証も実装済みですが、API側のビジネス認証がまだできていないため、使用はもう少々お待ちください。）  
○ テキストの投稿機能  
○ 画像複数投稿機能  
○ slick  
○ 投稿の削除機能  
○ 投稿検索機能  
○ マイページ閲覧機能  
○ いいね機能  
○ コメント機能  
# 開発環境
○ Ruby on Rails  
○ haml/sass  
○ javascript    
○ MySQL  
○ Github  
○ Heroku
# 使用したgem
○ 新規登録、ログイン時のSNS認証:　 'omniauth-google-oauth2',  "omniauth-rails_csrf_protection"  
○ 認証機能: 'devise'  
○ 画像投稿: 'carrierwave', 'mini_magick'  
○ haml導入: 'haml-rails'  
○ フォントデザイン： 'font-awesome-sass'  
○ jQuery: jquery-rails, jquery-ui-rails  
# DB構造
<img width="932" alt="スクリーンショット 2020-04-22 21 45 09" src="https://user-images.githubusercontent.com/57896659/79983849-4d724b00-84e3-11ea-8c6c-bbb271cd063c.png">
