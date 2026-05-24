# typed: strong

module Onlyfansapi
  module Models
    class ProfileRetrieveParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::ProfileRetrieveParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :username

      sig do
        params(
          username: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(username:, request_options: {})
      end

      sig do
        override.returns(
          { username: String, request_options: Onlyfansapi::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
