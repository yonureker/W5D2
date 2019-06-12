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

class JoinForPostSub < ApplicationRecord

  belongs_to :sub,
    foreign_key: :sub_id,
    class_name: :Sub,
    inverse_of: :subposts

  belongs_to :post,
    foreign_key: :post_id,
    class_name: :Post,
    inverse_of: :postsubs
    
    
end
