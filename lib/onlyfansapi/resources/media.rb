# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Media
      # @return [Onlyfansapi::Resources::Media::Vault]
      attr_reader :vault

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::MediaScrapeParams} for more details.
      #
      # **⚠️ This is a deprecated endpoint. Please use the new "Download media from the
      # OnlyFans CDN" endpoint!** Scrapes a `https://cdn*.onlyfans.com/*` URL _or_ Vault
      # Media ID, and uploads it to the OnlyFans API CDN, where you can view or download
      # the file. **Max file size is 500MB**
      #
      # @overload scrape(account, expiration_date: nil, file_type: nil, media_id: nil, public: nil, url: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param expiration_date [String, nil] The expiration date of our returned `temporary_url`. Default of 5 minutes. Must
      #
      # @param file_type [Symbol, Onlyfansapi::Models::MediaScrapeParams::FileType, nil] The file type to scrape. Only allowed when using `media_id`.
      #
      # @param media_id [Integer, nil] The OnlyFans Vault Media ID. **Can be used instead of the `url`.**
      #
      # @param public [Boolean, nil] Set to true if you want to have the file uploaded to our public CDN (no signed U
      #
      # @param url [String, nil] The CDN URL to scrape. **Keep in mind that these URLs expire fast.**
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::MediaScrapeResponse]
      #
      # @see Onlyfansapi::Models::MediaScrapeParams
      def scrape(account, params = {})
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
      # message. This endpoint does not upload media to the Vault. You must provide
      # either `file` or `file_url`.
      #
      # @overload upload(account, async: nil, file: nil, file_url: nil, type: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param async [Boolean] Set to `true` to process uploads in the background. Returns a `polling_url` to c
      #
      # @param file [Pathname, StringIO, IO, String, Onlyfansapi::FilePart] The file to upload. Required if `file_url` is not provided. Maximum file size: 1
      #
      # @param file_url [String] A URL to download the file from. Required if `file` is not provided. Maximum fil
      #
      # @param type [Symbol, Onlyfansapi::Models::MediaUploadParams::Type] Set to `avatar` if this file will be used as a profile picture, `header` for a p
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::MediaUploadResponse]
      #
      # @see Onlyfansapi::Models::MediaUploadParams
      def upload(account, params = {})
        parsed, options = Onlyfansapi::MediaUploadParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/media/upload", account],
          headers: {"content-type" => "multipart/form-data"},
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
