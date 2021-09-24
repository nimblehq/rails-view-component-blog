# frozen_string_literal: true

module Base
  module Alert
    class Component < ApplicationComponent
      attr_accessor :type, :message

      BASE_CLASS = 'alert'

      ALERT_CLASS_MAPPING = {
        info: 'alert-info',
        success: 'alert-success',
        secondary: 'alert-secondary',
        warning: 'alert-warning',
        danger: 'alert-danger',
        light: 'alert-light',
        dark: 'alert-dark'
      }.freeze

      def initialize(type: :info, message: '')
        @type = type
        @message = message
      end

      def classes
        "#{ALERT_CLASS_MAPPING[@type]} #{BASE_CLASS}"
      end
    end
  end
end
