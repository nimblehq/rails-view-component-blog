# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Header::Component, type: :component do
  context 'given heading, subheading and image url' do
    it 'renders the header component' do
      heading = 'ViewComponent'
      sub_heading = 'ViewComponent'
      image = 'header-image.jpeg'

      header = render_inline(described_class.new(heading: heading, subheading: sub_heading, image: image))

      expect(header).to have_selector('.site-heading', text: heading)
      expect(header).to have_selector('.subheading', text: sub_heading)
    end
  end
end
