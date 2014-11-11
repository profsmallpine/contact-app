get '/contacts' do
	@contacts = Contact.all.order(:first_name)

	erb :'contacts/show_all'
end

get '/contacts/:id/edit' do
	@contact = Contact.find_by_id(params[:id])

	erb :'contacts/edit'
end

delete '/contacts/:id/destroy' do
	contact = Contact.find_by_id(params[:id])
	Relationship.destroy_self_and_relationships(contact)

	redirect "/contacts"
end

get '/contacts/:id' do
	erb :'contacts/show'
end

get '/contacts/search/for' do
	@search = params[:search]
	@results = Contact.search(@search)

	erb :'contacts/search'
end
	

post '/contacts/create' do
	contact = Contact.create!(params[:contact])

	redirect "contacts/#{contact.id}/edit"
end