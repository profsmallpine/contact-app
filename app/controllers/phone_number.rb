get '/contacts/:id/phone_numbers/new' do
	@contact = Contact.find_by_id(params[:id])

	erb :'phone_numbers/new'
end

get '/contacts/:contact_id/phone_numbers/:id/edit' do
	@contact = Contact.find_by_id(params[:contact_id])
	@phone_number = PhoneNumber.find_by_id(params[:id])

	erb :'phone_numbers/edit'
end

get '/contacts/:contact_id/phone_numbers/:id/destroy' do
	PhoneNumber.find_by_id(params[:id]).destroy!

	redirect "contacts/#{params[:contact_id]}/edit"
end

post '/contacts/:id/phone_numbers/new' do
	@contact = Contact.find_by_id(params[:id])
	phone_number = PhoneNumber.find_or_create_by(params[:phone_number])

	if !phone_number.valid?
		@errors = phone_number.errors
		erb :'phone_numbers/new'
	else
		@contact.phone_numbers << phone_number
		redirect "contacts/#{params[:id]}/edit"
	end
end

post '/contacts/:contact_id/phone_numbers/:id/edit' do
	@contact = Contact.find_by_id(params[:contact_id])
	@phone_number = PhoneNumber.find_by_id(params[:id])
	@phone_number.update(params[:phone_number])

	if !@phone_number.valid?
		@errors = @phone_number.errors
		erb :'phone_numbers/edit'
	else
		redirect "contacts/#{params[:contact_id]}/edit"
	end
end