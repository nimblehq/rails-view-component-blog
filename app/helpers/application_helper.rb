# frozen_string_literal: true

module ApplicationHelper
  include Pagy::Frontend

  def post_time(create_time)
    create_time.strftime('%b %d, %Y')
  end
end
