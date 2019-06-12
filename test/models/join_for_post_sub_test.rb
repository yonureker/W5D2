# == Schema Information
#
# Table name: join_for_post_subs
#
#  id         :bigint           not null, primary key
#  sub_id     :integer          not null
#  post_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class JoinForPostSubTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
