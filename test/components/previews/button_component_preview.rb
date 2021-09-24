# frozen_string_literal: true

class ButtonComponentPreview < ViewComponent::Preview
  def default(type: :primary, content: 'Button')
    type = type.to_sym if type

    render(::Base::Button::Component.new(type: type)) { content }
  end

  def primary
    render(::Base::Button::Component.new(type: :primary)) { 'Submit' }
  end

  def secondary
    render(::Base::Button::Component.new(type: :secondary)) { 'Cancel' }
  end

  def danger
    render(::Base::Button::Component.new(type: :danger)) { 'Delete' }
  end

  def link
    render(::Base::Button::Component.new(type: :link)) { 'Terms and conditions' }
  end
end
