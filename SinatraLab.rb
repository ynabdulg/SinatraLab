require 'sinatra'
get '/' do
    erb :application do 
        erb :index 
    end 
end


post '/' do
    @fname = params[:firstname] 
    @lname = params[:lastname] 
    @class_love = params[:class_love] 
    @feedback = params[:feedback]
    @happy = (@class_love == "More than I care to say") ? "That's Great!" : "Well, hopefully you'll REALLY love it by the end"
    erb :application do 
        erb :response 
    end
end