# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ::Base::Alert::Component, type: :component do
  context 'given no params' do
    it 'renders an empty alert' do
      default_alert = render_inline(described_class.new)

      expect(default_alert).to have_text("\n")
    end

    it 'renders an info alert' do
      default_alert = render_inline(described_class.new)

      expect(default_alert).to have_selector('.alert.alert-info')
    end
  end

  context 'given a type and a message' do
    it 'renders an alert with the right type' do
      danger_alert = render_inline(described_class.new(type: :danger, message: 'Are you sure?'))

      expect(danger_alert).to have_selector('.alert-danger')
    end

    it 'renders the message within the alert' do
      message = 'Are you sure?'
      danger_alert = render_inline(described_class.new(type: :danger, message: message))

      expect(danger_alert).to have_text(message)
    end
  end
end
