# frozen_string_literal: true

class ButtonComponentPreview < ViewComponent::Preview
  def default(type: :primary, content: 'Button')
    type = type.to_sym if type

    render(ButtonComponent.new(type: type)) { content }
  end

  def primary
    render(ButtonComponent.new(type: :primary)) { 'Submit' }
  end

  def secondary
    render(ButtonComponent.new(type: :secondary)) { 'Cancel' }
  end

  def danger
    render(ButtonComponent.new(type: :danger)) { 'Delete' }
  end

  def link
    render(ButtonComponent.new(type: :link)) { 'Terms and conditions' }
  end
end
