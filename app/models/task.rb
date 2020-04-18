class Task < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :urgency
  belongs_to_active_hash :importance
  belongs_to_active_hash :status

  with_options presence: true do
    validates :name
    validates :content
    validates :importance
    validates :urgency
  end

  belongs_to :user
end
