# typed: strong

module Onlyfansapi
  module Models
    class SmartLinkListSpendersParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::SmartLinkListSpendersParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :smart_link_id

      # The number of spenders to return per page. Default `50`
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Minimal spend of a fan. Default `1`
      sig { returns(T.nilable(Float)) }
      attr_reader :min_spend

      sig { params(min_spend: Float).void }
      attr_writer :min_spend

      # The offset used for pagination. Default `0`
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig do
        params(
          smart_link_id: String,
          limit: Integer,
          min_spend: Float,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        smart_link_id:,
        # The number of spenders to return per page. Default `50`
        limit: nil,
        # Minimal spend of a fan. Default `1`
        min_spend: nil,
        # The offset used for pagination. Default `0`
        offset: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            smart_link_id: String,
            limit: Integer,
            min_spend: Float,
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
