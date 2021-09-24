# frozen_string_literal: true

module Base
  module Button
    class Component < ApplicationComponent

      attr_reader :type, :link

      BASE_CLASSES = %w[btn].freeze

      PRIMARY_CLASSES = %w[btn-primary].freeze
      SECONDARY_CLASSES = %w[btn-secondary].freeze
      SUCCESS_CLASSES = %w[btn-success].freeze
      DANGER_CLASSES = %w[btn-danger].freeze
      LINK_CLASSES = %w[btn-link].freeze

      BUTTON_TYPE_MAPPING = {
        primary: PRIMARY_CLASSES,
        secondary: SECONDARY_CLASSES,
        success: SUCCESS_CLASSES,
        danger: DANGER_CLASSES,
        link: LINK_CLASSES
      }.freeze

      def initialize(type: :primary, **options)
        @options = options

        @options[:tag] ||= :a
        @options[:classes] = classes(type)
      end

      def call
        render ApplicationComponent.new(**@options).with_content(content)
      end

      private

      def classes(type)
        (BASE_CLASSES + BUTTON_TYPE_MAPPING[type]).join(' ')
      end
    end
  end
end
