class ApplicationController < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }
  set :public_folder, 'public'

  get '/' do
    erb :'index.html', :layout => :'layouts/layout.html'
  end

  post '/email/new' do
    email = Email.new
    email.subject = params[:subject]
    email.body = params[:content]
    
    email.deliver and redirect back
  end
end