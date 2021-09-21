# frozen_string_literal: true

module ApplicationHelper
  def post_time(create_time)
    create_time.strftime('%b %d, %Y')
  end
end
