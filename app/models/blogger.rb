class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    validates_presence_of :name, :age
    validates :age, numericality: { greater_than: 0} 

end
