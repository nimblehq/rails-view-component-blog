class ButtonComponentStories < ViewComponent::Storybook::Stories
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
