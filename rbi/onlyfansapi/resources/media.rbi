# typed: strong

module Onlyfansapi
  module Resources
    class Media
      sig { returns(Onlyfansapi::Resources::Media::Vault) }
      attr_reader :vault

      # **⚠️ This is a deprecated endpoint. Please use the new "Download media from the
      # OnlyFans CDN" endpoint!** Scrapes a `https://cdn*.onlyfans.com/*` URL _or_ Vault
      # Media ID, and uploads it to the OnlyFans API CDN, where you can view or download
      # the file. **Max file size is 500MB**
      sig do
        params(
          account: String,
          expiration_date: T.nilable(String),
          file_type:
            T.nilable(Onlyfansapi::MediaScrapeParams::FileType::OrSymbol),
          media_id: T.nilable(Integer),
          public: T.nilable(T::Boolean),
          url: T.nilable(String),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::MediaScrapeResponse)
      end
      def scrape(
        # The Account ID
        account,
        # The expiration date of our returned `temporary_url`. Default of 5 minutes. Must
        # be null if `public` is true.
        expiration_date: nil,
        # The file type to scrape. Only allowed when using `media_id`.
        file_type: nil,
        # The OnlyFans Vault Media ID. **Can be used instead of the `url`.**
        media_id: nil,
        # Set to true if you want to have the file uploaded to our public CDN (no signed
        # URL needed to access). Default is false. Must be null if `expiration_date` is
        # set.
        public: nil,
        # The CDN URL to scrape. **Keep in mind that these URLs expire fast.**
        url: nil,
        request_options: {}
      )
      end

      # The response can be used **only once** to manually include media in a post or
      # message. This endpoint does not upload media to the Vault. You must provide
      # either `file` or `file_url`.
      sig do
        params(
          account: String,
          async: T::Boolean,
          file: Onlyfansapi::Internal::FileInput,
          file_url: String,
          type: Onlyfansapi::MediaUploadParams::Type::OrSymbol,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::MediaUploadResponse)
      end
      def upload(
        # The Account ID
        account,
        # Set to `true` to process uploads in the background. Returns a `polling_url` to
        # check status. Recommended for large files.
        async: nil,
        # The file to upload. Required if `file_url` is not provided. Maximum file size:
        # 100 MB (limited by Cloudflare).
        file: nil,
        # A URL to download the file from. Required if `file` is not provided. Maximum
        # file size depends on the subscription configuration.
        file_url: nil,
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
