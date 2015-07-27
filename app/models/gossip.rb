class Gossip < ActiveRecord::Base
	validates :celebrity_name, :title, :author, :date_published, :story, presence: true
	validates :gossip_scale, numericality: {in: [1,2,3,4,5,6,7,8,9,10]}

	has_many :comments
end
