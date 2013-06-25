require 'sinatra/base'
require_relative 'student.rb'


Student.create_table

# Why is it a good idea to wrap our App class in a module?
module StudentSite
  class App < Sinatra::Base
    
   get '/' do
      @students = Student.all
      erb :classloop, :classlayout => true
    end

    get '/students' do
      @students = Student.all
      erb :classloop, :classlayout => true
    end

    get '/students/:id' do
      @students = Student.find(params[:id])
      puts 
      erb :studentloop, :studentlayout => true
    end
  end
end
