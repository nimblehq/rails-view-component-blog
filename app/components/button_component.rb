# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  attr_accessor :type, :link

  PRIMARY_CLASSES = %w[
    btn-primary
  ].freeze
  SECONDARY_CLASSES = %w[
    btn-secondary
  ].freeze
  SUCCESS_CLASSES = %w[
    btn-success
  ].freeze
  DANGER_CLASSES = %w[
    btn-danger
  ].freeze
  LINK_CLASSES = %w[
    btn-link
  ].freeze

  BASE_CLASSES = %w[
    btn
  ].freeze

  BUTTON_TYPE_MAPPING = {
    primary: PRIMARY_CLASSES,
    secondary: SECONDARY_CLASSES,
    success: SUCCESS_CLASSES,
    danger: DANGER_CLASSES,
    link: LINK_CLASSES
  }.freeze

  def initialize(type: :primary, link:)
    @type = type
    @link = link
    super
  end

  def classes
    (BUTTON_TYPE_MAPPING[@type] + BASE_CLASSES).join(' ')
  end
end
