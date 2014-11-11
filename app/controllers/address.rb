get '/contacts/:id/addresses/new' do
	@contact = Contact.find_by_id(params[:id])

	erb :'addresses/new'
end

get '/contacts/:contact_id/addresses/:id/edit' do
	@contact = Contact.find_by_id(params[:contact_id])
	@address = Address.find_by_id(params[:id])

	erb :'addresses/edit'
end

delete '/contacts/:contact_id/addresses/:id/destroy' do
	Address.find_by_id(params[:id]).destroy!

	redirect "contacts/#{params[:contact_id]}/edit"
end

post '/contacts/:id/addresses/new' do
	@contact = Contact.find_by_id(params[:id])
	@contact.addresses << Address.find_or_create_by(params[:address])

	redirect "contacts/#{params[:id]}/edit"
end

post '/contacts/:contact_id/addresses/:id/edit' do
	@phone_number = Address.find_by_id(params[:id])
	@phone_number.update(params[:address])

	redirect "contacts/#{params[:contact_id]}/edit"
end