# == Schema Information
#
# Table name: searches
#
#  id          :integer          not null, primary key
#  keywords    :string
#  category_id :integer
#  min_price   :decimal(, )
#  max_price   :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Search < ActiveRecord::Base
  def products
    @products ||= find_products
  end
  
private

  def find_products
    products = Product.order(:name)
    products = products.where("name like ?", "%#{keywords}%") if keywords.present?
    products = products.where(category_id: category_id) if category_id.present?
    products = products.where("price >= ?", min_price) if min_price.present?
    products = products.where("price <= ?", max_price) if max_price.present?
    products
  end
end
