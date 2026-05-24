# typed: strong

module Onlyfansapi
  module Models
    class ReleaseFormCreateReleaseFormParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::ReleaseFormCreateReleaseFormParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The name of the release form.
      sig { returns(String) }
      attr_accessor :name

      sig do
        params(
          account: String,
          name: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The name of the release form.
        name:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            name: String,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
