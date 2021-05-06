# frozen_string_literal: true

class Product < ApplicationRecord
  scope :visible, -> { where(is_visible: true) }
  scope :visible_and_availible, -> { where(is_visible: true, amount: 1..Float::INFINITY) }
end
