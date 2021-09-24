# frozen_string_literal: true

module Header
  class Component < ApplicationComponent
    attr_reader :image, :heading, :subheading

    def initialize(image:, heading:, subheading:)
      @image = image
      @heading = heading
      @subheading = subheading
    end
  end
end
