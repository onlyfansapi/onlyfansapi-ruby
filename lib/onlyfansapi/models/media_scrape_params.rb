# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Media#scrape
    class MediaScrapeParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute url
      #   The CDN URL to scrape. **Keep in mind that these URLs expire fast.**
      #
      #   @return [String]
      required :url, String

      # @!attribute expiration_date
      #   The expiration date of our returned `temporary_url`. Default of 5 minutes.
      #
      #   @return [String, nil]
      optional :expiration_date, String, nil?: true

      # @!method initialize(account:, url:, expiration_date: nil, request_options: {})
      #   @param account [String]
      #
      #   @param url [String] The CDN URL to scrape. **Keep in mind that these URLs expire fast.**
      #
      #   @param expiration_date [String, nil] The expiration date of our returned `temporary_url`. Default of 5 minutes.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
