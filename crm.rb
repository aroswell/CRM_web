# Customer Relationship Management
require "sinatra"
require_relative 'contact'
require_relative "rolodex"

$rolodex = Rolodex.new

get '/' do
  @crm_app_name = "My CRM"
  erb :index
end

get '/contacts' do
  # @contacts = []
  # @contacts << Contact.new("Avery","Roswell","aroswell@groceryhustler.com","Founder & Owner")
  # @contacts << Contact.new("Yehuda", "Katz", "yehuda@example.com", "Developer")
  # @contacts << Contact.new("Mark", "Zuckerberg", "mark@facebook.com", "CEO")
  # @contacts << Contact.new("Sergey", "Brin", "sergey@google.com", "Co-Founder")

  erb :contacts
end

get '/contacts/new' do
  erb :new_contact
end

post '/contacts' do
  puts params
end