# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ::Base::Button::Component, type: :component do
  context 'given no params but content' do
    it 'renders a link that includes the content' do
      content = 'Click me'

      button = render_inline(described_class.new) { content }

      expect(button).to have_text(content)
    end

    it 'renders a link with the primary button class' do
      content = 'Click me'

      button = render_inline(described_class.new) { content }

      expect(button).to have_selector('a.btn-primary')
    end

    it 'renders a link with "#" as href' do
      content = 'Click me'

      button = render_inline(described_class.new) { content }

      expect(button).to have_selector(:css, 'a[href="#"]')
    end
  end
end
