require 'sinatra'  
require 'json'  
  
post "/trace" do  
  content_type :text  
  File.open('/tmp/trace.txt','w') do |w|  
    w.puts JSON.pretty_generate( JSON.load(request.body.read))  
  end  
end  