class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :question
end
