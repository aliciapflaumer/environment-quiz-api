class QuizSerializer < ActiveModel::Serializer
  attributes :id, :title, :user
  has_one :user
end
