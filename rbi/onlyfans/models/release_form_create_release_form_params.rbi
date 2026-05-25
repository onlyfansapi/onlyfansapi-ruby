# typed: strong

module Onlyfans
  module Models
    class ReleaseFormCreateReleaseFormParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::ReleaseFormCreateReleaseFormParams,
            Onlyfans::Internal::AnyHash
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
          request_options: Onlyfans::RequestOptions::OrHash
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
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
