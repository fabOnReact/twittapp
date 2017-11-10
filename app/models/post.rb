class Post < ApplicationRecord
	def self.search(search)
  		where("name ILIKE ? OR message LIKE ?", "%#{search}%", "%#{search}%") 
	end
end
