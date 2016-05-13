class Reservation < ActiveRecord::Base
  belongs_to :book
  belongs_to :users

  def overdue?
    Date.today > return_date
  end
end
