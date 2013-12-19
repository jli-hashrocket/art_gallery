class Purchase < ActiveRecord::Base
  validates_presence_of :artwork_id
  validates_presence_of :customer_id
  validates_presence_of :sales_date

  belongs_to :artwork,
    inverse_of: :purchases
  belongs_to :customer,
    inverse_of: :purchases
end
