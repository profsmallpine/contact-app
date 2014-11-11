get '/contacts/:id/companies/new' do
	@contact = Contact.find_by_id(params[:id])
	@companies = Company.all

	erb :'companies/new'
end

get '/contacts/:contact_id/companies/:id/edit' do
	@contact = Contact.find_by_id(params[:contact_id])
	@company = Company.find_by_id(params[:id])
	@companies = Company.all

	erb :'companies/edit'
end

get '/contacts/:contact_id/companies/:id/destroy' do
	Company.find_by_id(params[:id]).destroy!

	redirect "contacts/#{params[:contact_id]}/edit"
end

post '/contacts/:id/companies/new' do
	@contact = Contact.find_by_id(params[:id])
	@contact.companies << Company.find_or_create_by(params[:company])

	redirect "contacts/#{params[:id]}/edit"
end

post '/contacts/:contact_id/companies/:id/edit' do
	@company = Company.find_by_id(params[:id])
	@company.update(params[:company])

	redirect "contacts/#{params[:contact_id]}/edit"
end