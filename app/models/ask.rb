class Ask < ActiveRecord::Base
	validates :subject,:message,:email, presence: true
	validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
    message: "must be valid" }
end
