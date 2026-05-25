# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Media#scrape
    class MediaScrapeResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute expiration_date
      #
      #   @return [String, nil]
      optional :expiration_date, String

      # @!attribute temporary_url
      #
      #   @return [String, nil]
      optional :temporary_url, String

      # @!method initialize(expiration_date: nil, temporary_url: nil)
      #   @param expiration_date [String]
      #   @param temporary_url [String]
    end
  end
end
