class Genre < ActiveRecord::Base
    has_many :films
    validates :name, length: { minimum: 1, maximum: 30 }
end
