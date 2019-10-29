require "rubygems"
require "bundler"

Bundler.require

set :datebase,  {adapter: "sqlite3", datebase: "contacts.sqlite3"}

get "/" do
    # 'Hello World'
    @now = Time.now
    erb :index
end

get "/contact_new" do
    erb :contact_form
end

post "/contacts" do
    puts "送信されたデータ"
    p params
    redirect "/"
end