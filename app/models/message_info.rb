class MessageInfo < ApplicationRecord
  validates :status, uniqueness: true
end
