# frozen_string_literal: true

module Onlyfans
  module Resources
    class Media
      # @return [Onlyfans::Resources::Media::Uploads]
      attr_reader :uploads

      # @return [Onlyfans::Resources::Media::Vault]
      attr_reader :vault

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::MediaDownloadParams} for more details.
      #
      # Downloads a file directly from a `https://cdn*.onlyfans.com/*` URL. When the
      # file is already cached on our CDN, this endpoint returns a `302` redirect to a
      # `https://cdn.fansapi.com/*` URL. Most HTTP clients follow redirects
      # automatically (`curl` requires `-L`). Otherwise, the file is streamed through
      # our proxies and queued for caching.
      #
      # @overload download(cdn_url, account:, request_options: {})
      #
      # @param cdn_url [String] Optional parameter. The CDN URL to scrape. \*\*Keep in mind that these URLs
      # expire
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [String]
      #
      # @see Onlyfans::Models::MediaDownloadParams
      def download(cdn_url, params)
        parsed, options = Onlyfans::MediaDownloadParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/media/download/%2$s", account, cdn_url],
          headers: {"accept" => "text/plain"},
          model: String,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::MediaScrapeParams} for more details.
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
      # @param file_type [Symbol, Onlyfans::Models::MediaScrapeParams::FileType, nil] The file type to scrape. Only allowed when using `media_id`.
      #
      # @param media_id [Integer, nil] The OnlyFans Vault Media ID. **Can be used instead of the `url`.**
      #
      # @param public [Boolean, nil] Set to true if you want to have the file uploaded to our public CDN (no signed U
      #
      # @param url [String, nil] The CDN URL to scrape. **Keep in mind that these URLs expire fast.**
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::MediaScrapeResponse]
      #
      # @see Onlyfans::Models::MediaScrapeParams
      def scrape(account, params = {})
        parsed, options = Onlyfans::MediaScrapeParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/media/scrape", account],
          body: parsed,
          model: Onlyfans::Models::MediaScrapeResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::MediaUploadParams} for more details.
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
      # @param file [Pathname, StringIO, IO, String, Onlyfans::FilePart] The file to upload. Required if `file_url` is not provided. Maximum file size: 1
      #
      # @param file_url [String] A URL to download the file from. Required if `file` is not provided. Maximum fil
      #
      # @param type [Symbol, Onlyfans::Models::MediaUploadParams::Type] Set to `avatar` if this file will be used as a profile picture, `header` for a p
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::MediaUploadResponse]
      #
      # @see Onlyfans::Models::MediaUploadParams
      def upload(account, params = {})
        parsed, options = Onlyfans::MediaUploadParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/media/upload", account],
          headers: {"content-type" => "multipart/form-data"},
          body: parsed,
          model: Onlyfans::Models::MediaUploadResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
        @uploads = Onlyfans::Resources::Media::Uploads.new(client: client)
        @vault = Onlyfans::Resources::Media::Vault.new(client: client)
      end
    end
  end
end
