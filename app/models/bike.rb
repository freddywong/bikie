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
#

class Bike < ActiveRecord::Base
end
