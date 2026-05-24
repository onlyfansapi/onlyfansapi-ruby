# typed: strong

module Onlyfansapi
  module Models
    class MediaDownloadParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::MediaDownloadParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(String) }
      attr_accessor :cdn_url

      sig do
        params(
          account: String,
          cdn_url: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(account:, cdn_url:, request_options: {})
      end

      sig do
        override.returns(
          {
            account: String,
            cdn_url: String,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
