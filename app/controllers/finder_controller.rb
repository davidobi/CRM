class FinderController < ApplicationController
	def index
		@page_title = "All Customers"
		@customers = Customer.all
	end

	def alphabetized
		@page_title = "Customers in Alphebetical Order"
		@customers = Customer.order(:full_name)
		render :index
	end

	def missing_email
		@page_title = "Customers without Email Addresses"
		@customers = Customer.where(email_address: '')
		render :index

	end

end
