# == Schema Information
#
# Table name: subs
#
#  id           :bigint           not null, primary key
#  title        :string           not null
#  description  :text             not null
#  moderator_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Sub < ApplicationRecord
  validates :title, :description, presence: true
  
  belongs_to :moderator,
    primary_key: :id,
    foreign_key: :moderator_id,
    class_name: :User
  has_many :posts,
    primary_key: :id,
    foreign_key: :sub_id,
    class_name: :Post

  has_many :subposts,
    foreign_key: :sub_id,
    class_name: :JoinForPostSub,
    inverse_of: :sub

  has_many :posts,
    through: :subposts,
    source: :post
    
end
