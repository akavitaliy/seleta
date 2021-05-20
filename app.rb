#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sqlite3'
require 'sinatra/contrib'
require 'sinatra/activerecord'
require 'rake'


set :database, {adapter: "sqlite3", database: "seleta.db"}

class Product < ActiveRecord::Base 
end


get '/' do

    @last_products = Product.last(6) 

    erb :index
end

get '/details/:id' do	
	#@product_id = params[:id]

	# @comments = Comment.where(post_id: "#{post_id}")

	@product = Product.find(params[:id])
	
	erb :details
end

get '/admin' do
  erb :admin
end

post '/admin' do

  @filename = params[:files][:filename]
  files = params[:files][:tempfile]

  File.open("./public/vendor/img/products/litle/#{@filename}", 'wb') do |f|
       f.write(files.read)
  end

  @filename2 = params[:files2][:filename]
  files2 = params[:files2][:tempfile]

  File.open("./public/vendor/img/products/big/#{@filename2}", 'wb') do |f|
       f.write(files2.read)
  end
  
  @c = Product.new params[:product]
  @path = params[:files][:filename]
  @path2 = params[:files2][:filename]
  @c.path_to_litle_image = "/vendor/img/products/litle/#{@path}"
  @c.path_to_image = "/vendor/img/products/big/#{@path2}"
  @c.save

  erb :admin
end

get '/shop' do
  @all_product = Product.all 

  erb :shop
end

# post '/save_image' do
  
#   @filename = params[:file][:filename]
#   file = params[:file][:tempfile]
#   @path = "./public/vendor/img/products/big/#{@filename}"

#   File.open("./public/vendor/img/products/big/#{@filename}", 'wb') do |f|
#     f.write(file.read)
#   end
  
#   erb :show
# end


