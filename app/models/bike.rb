# == Schema Information
#
# Table name: bikes
#
#  id          :integer          not null, primary key
#  brand       :string(255)
#  category    :string(255)
#  description :text
#  year_made   :integer
#  created_at  :datetime
#  updated_at  :datetime
#  latitude    :float
#  longitude   :float
#  address     :string(255)
#

class Bike < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode
end
