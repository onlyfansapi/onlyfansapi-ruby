# typed: strong

module Onlyfansapi
  module Models
    class TransactionListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::TransactionListParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The number of transactions to return. Recommended: `10`
      sig { returns(T.nilable(String)) }
      attr_reader :limit

      sig { params(limit: String).void }
      attr_writer :limit

      # The marker used for pagination. Default: `null`
      sig { returns(T.nilable(String)) }
      attr_reader :marker

      sig { params(marker: String).void }
      attr_writer :marker

      # The start date for transactions list. Default: `-30days`
      sig { returns(T.nilable(String)) }
      attr_reader :start_date

      sig { params(start_date: String).void }
      attr_writer :start_date

      sig do
        params(
          account: String,
          limit: String,
          marker: String,
          start_date: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The number of transactions to return. Recommended: `10`
        limit: nil,
        # The marker used for pagination. Default: `null`
        marker: nil,
        # The start date for transactions list. Default: `-30days`
        start_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            limit: String,
            marker: String,
            start_date: String,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
