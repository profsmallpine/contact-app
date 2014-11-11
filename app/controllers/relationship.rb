get '/contacts/:id/relationships/new' do
	@contact = Contact.find_by_id(params[:id])
	@contacts = Contact.all

	erb :'relationships/new'
end

get '/contacts/:contact_id/relationships/:id/edit' do
	@contact = Contact.find_by_id(params[:contact_id])
	@relationship = Relationship.find_by_id(params[:id])
	@contacts = Contact.all

	erb :'relationships/edit'
end

get '/contacts/:contact_id/relationships/:id/destroy' do
	Relationship.find_by_id(params[:id]).destroy!

	redirect "contacts/#{params[:contact_id]}/edit"
end

post '/contacts/:id/relationships/new' do
	Relationship.create!(params[:relationship])

	redirect "contacts/#{params[:id]}/edit"
end

post '/contacts/:contact_id/relationships/:id/edit' do
	@relationship = Relationship.find_by_id(params[:id])
	@relationship.update(params[:relationship])

	redirect "contacts/#{params[:contact_id]}/edit"
end