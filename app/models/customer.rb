class Customer < ApplicationRecord
	validates :full_name, :email_address, presence: true
end
