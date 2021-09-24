# frozen_string_literal: true

Fabricator(:article) do
  title { FFaker::Lorem.sentences(2) }
  content { FFaker::Lorem.paragraphs(4) }
end
