class Reservation < ActiveRecord::Base
  belongs_to :books
end
