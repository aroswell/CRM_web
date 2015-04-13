# Customer Relationship Management
require "sinatra"
require 'data_mapper'
# require_relative 'contact'
require_relative "rolodex"


DataMapper.setup(:default, "sqlite3:database.sqlite3")

class Contact
  include DataMapper::Resource

  property :id, Serial
  property :first_name, String
  property :last_name, String
  property :email, String
  property :note, String
end

DataMapper.finalize
DataMapper.auto_upgrade!

Contact.create(
  first_name: "Avery",
  last_name: "Roswell",
  email: "aroswell@groceryhustler.com",
  note: "Founder & Owner")
Contact.create(
  first_name: "Yehuda",
  last_name: "Katz",
  email: "yehuda@example.com",
  note: "Developer")

# @contacts << Contact.new("Mark", "Zuckerberg", "mark@facebook.com", "CEO")
# @contacts << Contact.new("Sergey", "Brin", "sergey@google.com", "Co-Founder")


get '/home' do
  erb :index
end

get '/' do
  erb :index
end

get '/contacts' do
  @contacts = Contact.all
  erb :contacts
end

get '/contacts/new' do
  erb :new_contact
end

get '/contacts/:id' do
  @requested_contact = Contact.get(params[:id])
  if @requested_contact
    erb :show_contact
  else
    raise Sinatra::NotFound
  end
end

get '/contacts/:id/edit' do
  @requested_contact = Contact.get(params[:id])
  if @requested_contact
    erb :edit_contact
  else
    raise Sinatra::NotFound
  end
end

put '/contacts/:id' do
  # Check/Verify users input and then proceed with:

  if true #using true for the moment
    requested_contact = Contact.get(params[:id])

    requested_contact.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      note: params[:note]
      )

    redirect to('/contacts')
  else
    raise Sinatra::NotFound
  end
end

post '/contacts' do
  # Should verify data before calling create class method

  Contact.create(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    note: params[:note])

  redirect to('/contacts')
end

delete '/contacts/:id' do

  if true
    delete_contact = Contact.get(params[:id])
    delete_contact.destroy
    redirect to ('/contacts')
  else
    raise Sinatra::NotFound
  end
end


