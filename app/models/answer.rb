# == Schema Information
#
# Table name: answers
#
#  id          :bigint           not null, primary key
#  content     :string
#  question_id :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint
#
class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
end
