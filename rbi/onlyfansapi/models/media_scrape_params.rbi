# typed: strong

module Onlyfansapi
  module Models
    class MediaScrapeParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfansapi::MediaScrapeParams, Onlyfansapi::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # The CDN URL to scrape. **Keep in mind that these URLs expire fast.**
      sig { returns(String) }
      attr_accessor :url

      # The expiration date of our returned `temporary_url`. Default of 5 minutes.
      sig { returns(T.nilable(String)) }
      attr_accessor :expiration_date

      sig do
        params(
          account: String,
          url: String,
          expiration_date: T.nilable(String),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The CDN URL to scrape. **Keep in mind that these URLs expire fast.**
        url:,
        # The expiration date of our returned `temporary_url`. Default of 5 minutes.
        expiration_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            url: String,
            expiration_date: T.nilable(String),
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
