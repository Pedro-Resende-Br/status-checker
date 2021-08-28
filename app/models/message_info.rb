class MessageInfo < ApplicationRecord
  validate :status, uniqueness: true
end
