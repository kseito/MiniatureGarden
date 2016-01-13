require 'sinatra'
require 'rss'

get '/' do
	@title = 'トップ'
	erb :index
end

get '/news' do

    @rss = RSS::Parser.parse("http://rss.sapporobeer.jp/rss/sapporo_1.xml")
    erb :news
end