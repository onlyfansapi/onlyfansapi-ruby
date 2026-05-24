# typed: strong

module Onlyfansapi
  module Resources
    class Media
      sig { returns(Onlyfansapi::Resources::Media::Vault) }
      attr_reader :vault

      # Scrapes a `https://cdn*.onlyfans.com/*` URL and uploads it to the OnlyFans API
      # CDN, so that you can view or download the file. **Max file size is 500MB**
      sig do
        params(
          account: String,
          url: String,
          expiration_date: T.nilable(String),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::MediaScrapeResponse)
      end
      def scrape(
        # The Account ID
        account,
        # The CDN URL to scrape. **Keep in mind that these URLs expire fast.**
        url:,
        # The expiration date of our returned `temporary_url`. Default of 5 minutes.
        expiration_date: nil,
        request_options: {}
      )
      end

      # The response can be used **only once** to manually include media in a post or
      # message. This endpoint does not upload media to the Vault.
      sig do
        params(
          account: String,
          file: String,
          type: Onlyfansapi::MediaUploadParams::Type::OrSymbol,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::MediaUploadResponse)
      end
      def upload(
        # The Account ID
        account,
        # The file to upload.
        file:,
        # Set to `avatar` if this file will be used as a profile picture, `header` for a
        # profile banner, or keep empty if this file will be for anything else.
        type: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
