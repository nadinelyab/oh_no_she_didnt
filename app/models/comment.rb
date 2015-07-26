class Comment < ActiveRecord::Base
  validates :commenter, :text, presence: true

  belongs_to :gossip
end
