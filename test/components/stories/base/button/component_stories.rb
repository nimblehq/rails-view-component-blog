# frozen_string_literal: true

module Base
  module Button
    class ComponentStories < ViewComponent::Storybook::Stories
      story(:default) do
        controls do
          select(:type, %w[primary secondary danger link], 'primary')
        end
      end

      story(:primary) {}
      story(:secondary) {}
      story(:danger) {}
      story(:link) {}
    end
  end
end
