class Tag < ApplicationRecord
  has_many :gissip_tags
  has_many :gossips, through: :gossip_tags
end
