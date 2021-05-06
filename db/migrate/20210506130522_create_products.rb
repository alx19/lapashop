# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, required: true
      t.text :description, default: ''
      t.string :image, default: nil
      t.integer :amount, default: 0
      t.integer :price_ruble
      t.boolean :is_visible, default: false

      t.timestamps
    end
  end
end
