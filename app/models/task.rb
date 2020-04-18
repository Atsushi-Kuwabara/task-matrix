class Task < ApplicationRecord
  extend Active::Associations::ActiveRecordExtensions
  belongs_to_active_hash :urgency
  with_options presence: true do
    validates :name
    validates :content
    validates :importance
    validates :urgency
  end

  belongs_to :user
end
