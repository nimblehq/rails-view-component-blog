# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PostingDetails::Component, type: :component do
  context 'given name and time' do
    it 'renders posting details component' do
      name = 'Author'
      time = Time.new(2021, 9, 21)

      details = render_inline(described_class.new(name: name, time: time))

      expect(details).to have_link(name)
      expect(details).to have_text('Sep 21, 2021')
    end
  end
end
