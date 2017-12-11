class Quiz < ActiveRecord::Base
  belongs_to :user
  has_many :questions
  validates :title, :user_id, presence: true, on: %i[create update]
end
