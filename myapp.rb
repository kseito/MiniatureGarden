require 'sinatra'

get '/' do
	@title = 'トップ'
	erb :index
end