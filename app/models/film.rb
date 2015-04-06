class Film < ActiveRecord::Base
    belongs_to :genre
    validates :title, length: { minimum: 1, maximum: 50 }
    validates :director, length: { minimum: 1, maximum: 100 }
    validates :description, length: { minimum: 1, maximum: 2000 }
end
