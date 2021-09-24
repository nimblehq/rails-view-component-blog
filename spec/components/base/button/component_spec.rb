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
  end

  context 'given all params and content' do
    it 'renders a link that includes the content' do
      content = 'Click me!'

      button = render_inline(described_class.new(type: :link)) { content }

      expect(button).to have_text(content)
    end

    it 'renders a link with the selected type btn class' do
      content = 'Click me!'

      button = render_inline(described_class.new(type: :link)) { content }

      expect(button).to have_selector('a.btn-link')
    end
  end
end
