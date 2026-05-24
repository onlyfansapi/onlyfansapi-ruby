# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Media
      # @return [Onlyfansapi::Resources::Media::Vault]
      attr_reader :vault

      # Scrapes a `https://cdn*.onlyfans.com/*` URL and uploads it to the OnlyFans API
      # CDN, so that you can view or download the file. **Max file size is 500MB**
      #
      # @overload scrape(account, url:, expiration_date: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param url [String] The CDN URL to scrape. **Keep in mind that these URLs expire fast.**
      #
      # @param expiration_date [String, nil] The expiration date of our returned `temporary_url`. Default of 5 minutes.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::MediaScrapeResponse]
      #
      # @see Onlyfansapi::Models::MediaScrapeParams
      def scrape(account, params)
        parsed, options = Onlyfansapi::MediaScrapeParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/media/scrape", account],
          body: parsed,
          model: Onlyfansapi::Models::MediaScrapeResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::MediaUploadParams} for more details.
      #
      # The response can be used **only once** to manually include media in a post or
      # message. This endpoint does not upload media to the Vault.
      #
      # @overload upload(account, file:, type: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param file [String] The file to upload.
      #
      # @param type [Symbol, Onlyfansapi::Models::MediaUploadParams::Type] Set to `avatar` if this file will be used as a profile picture, `header` for a p
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::MediaUploadResponse]
      #
      # @see Onlyfansapi::Models::MediaUploadParams
      def upload(account, params)
        parsed, options = Onlyfansapi::MediaUploadParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/media/upload", account],
          body: parsed,
          model: Onlyfansapi::Models::MediaUploadResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
        @vault = Onlyfansapi::Resources::Media::Vault.new(client: client)
      end
    end
  end
end
