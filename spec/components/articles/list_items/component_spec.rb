# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Articles::ListItems::Component, type: :component do
  context 'given a collection of articles' do
    it 'renders the article list' do
      article_1 = Fabricate(:article)
      article_2 = Fabricate(:article)

      article_lists = render_inline(described_class.with_collection(Article.all))

      expect(article_lists).to have_link(article_1.title, href: article_path(article_1))
      expect(article_lists).to have_link(article_2.title, href: article_path(article_2))
    end
  end
end
