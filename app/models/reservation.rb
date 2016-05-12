class Reservation < ActiveRecord::Base
  belongs_to :book

  def overdue?
    Date.today > return_date
  end
end
