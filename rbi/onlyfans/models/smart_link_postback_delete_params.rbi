# typed: strong

module Onlyfans
  module Models
    class SmartLinkPostbackDeleteParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::SmartLinkPostbackDeleteParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :postback_id

      sig do
        params(
          postback_id: Integer,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(postback_id:, request_options: {})
      end

      sig do
        override.returns(
          { postback_id: Integer, request_options: Onlyfans::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
