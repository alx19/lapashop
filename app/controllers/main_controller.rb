# frozen_string_literal: true

class MainController < ApplicationController
  def index
    @products = Product.visible_and_availible.first(10)
  end
end
