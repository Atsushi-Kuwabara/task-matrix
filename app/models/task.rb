class Task < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :content
    validates :importance
    validates :urgency
  end

  belongs_to :user
end
