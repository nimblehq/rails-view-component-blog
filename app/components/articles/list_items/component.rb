# frozen_string_literal: true

module Articles
  module ListItems
    class Component < ApplicationComponent
      attr_reader :article

      with_collection_parameter :article

      def initialize(article:)
        @article = article
      end
    end
  end
end
