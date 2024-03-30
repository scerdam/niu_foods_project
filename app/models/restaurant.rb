class Restaurant < ApplicationRecord
  has_many :devices

  enum status: { error: 0, ok: 1, warning: 2}
end
