class Category < ActiveRecord::Base
	
	has_many :articles
	
	validates_length_of :name, :within => 1..20
    validates_uniqueness_of :name, :message => "already exist"
    validates :name, :presence => true
end
