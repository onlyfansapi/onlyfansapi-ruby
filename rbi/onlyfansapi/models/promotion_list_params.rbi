# typed: strong

module Onlyfansapi
  module Models
    class PromotionListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::PromotionListParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The number of promotions to return. Default `10`
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # The offset used for pagination. Default `0`
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig do
        params(
          account: String,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The number of promotions to return. Default `10`
        limit: nil,
        # The offset used for pagination. Default `0`
        offset: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            limit: Integer,
            offset: Integer,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
