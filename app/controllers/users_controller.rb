class UsersController < ApplicationController

	def home
	end

	def create
		user = User.new
		user.email = params["email"]
		user.firstname = params["firstname"]
		user.lastname = params["lastname"]
		user.password = params["password"]
		user.password_confirmation = params["password_confirmation"]
		if user.save
			flash[:notice] = "User created!"
		else
			flash[:notice] = user.errors.full_messages
		end
		redirect_back(fallback_location: "/home")
	end

	def signin
		user = User.find_by(email: params["signin_email"])
		if user.nil? == false && user.authenticate(params["signin_password"])
			session[:user_id] = user.id
			session[:user_email] = user.email
			session[:user_complete_name] = "#{user.firstname} #{user.lastname}"
			flash[:notice] = "You are authenticated! #{session[:user_complete_name]}"
		else
			flash[:notice] = "Bad email/password combination"
		end
		redirect_back(fallback_location: "/home")
	end

	def new
  		@user = User.new
	end
end
