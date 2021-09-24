# frozen_string_literal: true

module Base
  module Alert
    class ComponentStories < ViewComponent::Storybook::Stories
      story(:default) do
        controls do
          select(:type, %w[info success secondary warning danger light dark], 'info')
        end
      end

      story(:info) {}
      story(:success) {}
      story(:secondary) {}
      story(:warning) {}
      story(:danger) {}
      story(:light) {}
      story(:dark) {}
    end
  end
end
