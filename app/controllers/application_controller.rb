class ApplicationController < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }
  set :public, 'public'

  get '/' do
    erb :'index.html', :layout => :'layouts/layout.html'
  end
end