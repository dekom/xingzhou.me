require "rubygems"
require "sinatra"

configure :production, :development do
  set :public_folder, File.join(File.dirname(__FILE__), '_site/')
  set :server, :thin
  set :static, true
  set :static_cache_control, [:public, :max_age => 300]
end

get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end

get '/*' do
  file = File.join(settings.public_folder, params[:splat])
  if File.exists?(file)
    send_file file
  else
    not_found
  end
end

not_found do
  send_file File.join(settings.public_folder, '404.html')
end
