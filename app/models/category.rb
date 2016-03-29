# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ActiveRecord::Base
    has_many :products
def category_name=(name)
    self.category = Category.find_or_create_by_name(name) if name.present?
  end
end
