class Book < ActiveRecord::Base
  has_many :reservations
  belongs_to :author
end
