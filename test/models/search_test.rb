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

require 'test_helper'

class SearchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
