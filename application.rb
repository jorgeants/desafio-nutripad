# -*- encoding : utf-8 -*-
require 'sinatra'
require './lib/number'

get '/convert/:number' do
  @number = Number.new
  "<h1 style='font-family: sans-serif; margin: 150px 50px 0px; text-align: center;'>
    #{@number.convert_to_word(params['number'].to_i)}
  </h1>"
end
