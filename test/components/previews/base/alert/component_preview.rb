# frozen_string_literal: true

module Base
  module Alert
    class ComponentPreview < ViewComponent::Preview
      def default(type: :info, message: 'This is a default message')
        type = type.to_sym if type

        render(::Base::Alert::Component.new(type: type, message: message))
      end

      def info
        render(::Base::Alert::Component.new(type: :info, message: 'This is an info message'))
      end

      def success
        render(::Base::Alert::Component.new(type: :success, message: 'This is a success message'))
      end

      def secondary
        render(::Base::Alert::Component.new(type: :secondary, message: 'This is a secondary message'))
      end

      def warning
        render(::Base::Alert::Component.new(type: :warning, message: 'This is a warning message'))
      end

      def danger
        render(::Base::Alert::Component.new(type: :danger, message: 'This is a danger message'))
      end

      def light
        render(::Base::Alert::Component.new(type: :light, message: 'This is a light message'))
      end

      def dark
        render(::Base::Alert::Component.new(type: :dark, message: 'This is a dark message'))
      end
    end
  end
end
