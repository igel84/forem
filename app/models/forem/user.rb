module Forem
  class User < ActiveRecord::Base
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  	# Setup accessible (or protected) attributes for your model
  	attr_accessible :email, :password, :password_confirmation, :forem_admin, :name

  	def to_s
  		self.name
  	end
  end
end
