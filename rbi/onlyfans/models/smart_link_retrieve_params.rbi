# typed: strong

module Onlyfans
  module Models
    class SmartLinkRetrieveParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::SmartLinkRetrieveParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :smart_link_id

      sig do
        params(
          smart_link_id: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(smart_link_id:, request_options: {})
      end

      sig do
        override.returns(
          { smart_link_id: String, request_options: Onlyfans::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
