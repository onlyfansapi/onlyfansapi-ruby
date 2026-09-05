# typed: strong

module Onlyfans
  module Resources
    class Media
      sig { returns(Onlyfans::Resources::Media::Uploads) }
      attr_reader :uploads

      sig { returns(Onlyfans::Resources::Media::Vault) }
      attr_reader :vault

      # Downloads a file directly from a `https://cdn*.onlyfans.com/*` URL. When the
      # file is already cached on our CDN, this endpoint returns a `302` redirect to a
      # `https://cdn.fansapi.com/*` URL. Most HTTP clients follow redirects
      # automatically (`curl` requires `-L`). Otherwise, the file is redirected to
      # `dl.fansapi.com`, which streams it through the account proxy and reports billing
      # back to the API.
      sig do
        params(
          cdn_url: String,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).void
      end
      def download(
        # Optional parameter. The CDN URL to scrape. **Keep in mind that these URLs expire
        # in approx. 20 minutes.** So for example, if you fetched Media Vault Items at
        # 01:00pm, the URLs will expire at around 01:20pm
        cdn_url,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # **⚠️ This is a deprecated endpoint. Please use the new "Download media from the
      # OnlyFans CDN" endpoint!** Scrapes a `https://cdn*.onlyfans.com/*` URL _or_ Vault
      # Media ID, and uploads it to the OnlyFans API CDN, where you can view or download
      # the file. **Max file size is 500MB**
      sig do
        params(
          account: String,
          expiration_date: T.nilable(String),
          file_type: T.nilable(Onlyfans::MediaScrapeParams::FileType::OrSymbol),
          media_id: T.nilable(Integer),
          public: T.nilable(T::Boolean),
          url: T.nilable(String),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::MediaScrapeResponse)
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
          file: Onlyfans::Internal::FileInput,
          file_url: String,
          type: Onlyfans::MediaUploadParams::Type::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::MediaUploadResponse)
      end
      def upload(
        # The Account ID
        account,
        # Set to `true` to process uploads in the background. Returns a `polling_url` to
        # check status. Recommended for large files. Instead of polling, you can subscribe
        # to the `media_uploads.completed` and `media_uploads.failed` webhook events —
        # they only fire for async uploads.
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
      sig { params(client: Onlyfans::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
