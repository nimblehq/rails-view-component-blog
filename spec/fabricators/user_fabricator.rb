# frozen_string_literal: true

Fabricator(:user) do
  first_name { FFaker::Name.last_name }
  first_name { FFaker::Name.first_name }
  nickname { "#{first_name}.#{last_name}" }
  email { FFaker::Internet.email }
  password 'password123'
  password_confirmation 'password123'
end
