# frozen_string_literal: true

module PostingDetails
  class Component < ApplicationComponent
    attr_reader :time, :name

    def initialize(name:, time:)
      @name = name
      @time = time
    end

    delegate :post_time, to: :helpers
  end
end
