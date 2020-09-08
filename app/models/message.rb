class Message < ApplicationRecord
  validates_presence_of :body
  belongs_to :user

  scope :custom_scope, -> { order(:created_at).last(20) }
end
