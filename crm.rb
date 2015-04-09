# Customer Relationship Management
require "sinatra"
require_relative 'contact'
require_relative "rolodex"

$rolodex = Rolodex.new
@contacts = []
@contacts << Contact.new("Avery","Roswell","aroswell@groceryhustler.com","Founder & Owner")
@contacts << Contact.new("Yehuda", "Katz", "yehuda@example.com", "Developer")
@contacts << Contact.new("Mark", "Zuckerberg", "mark@facebook.com", "CEO")
@contacts << Contact.new("Sergey", "Brin", "sergey@google.com", "Co-Founder")
@contacts.each do |each_contact|
  $rolodex.add_contact(each_contact)
end

get '/home' do
  @crm_app_name = "My CRM"
  erb :index
end

get '/contacts' do

  erb :contacts
end

get '/contacts/new' do
  erb :new_contact
end

get '/contact/1001' do
  @requested_contact = $rolodex.contacts.find{|each_contact| each_contact.id == 1000}
  erb :show_contact
end

post '/contacts' do
  new_contact = Contact.new(params[:first_name],params[:last_name],params[:email],params[:note])
  $rolodex.add_contact(new_contact)
  redirect to('/contacts')
end