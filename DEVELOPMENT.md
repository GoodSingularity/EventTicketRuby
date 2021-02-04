DueInvest
App to invest

Defaullt 
Features:
	Register/Login user
	Stocks Info
	Payment Handler
	Charts
	Wallet

	

Dependencies:
	Ruby
	Rails
	Stripe
	iex-ruby-client
	ransack
	newsapi

User has wallet
User has many investors
Wallet has many transfers
Wallet has many investments
investment has payment handler inside info, charts, latest articles


User
id, email,password, name, surname, birthdate, sex
Wallet
owner, money
Investment


https://rapidapi.com
https://newsapi.org/docs/client-libraries/ruby
