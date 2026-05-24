# typed: strong

module Onlyfansapi
  module Models
    class PayoutListTransactionsParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::PayoutListTransactionsParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # Number of transactions to return
      sig { returns(T.nilable(String)) }
      attr_reader :limit

      sig { params(limit: String).void }
      attr_writer :limit

      # The marker used for pagination. Default: `null`
      sig { returns(T.nilable(String)) }
      attr_reader :marker

      sig { params(marker: String).void }
      attr_writer :marker

      sig do
        params(
          account: String,
          limit: String,
          marker: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # Number of transactions to return
        limit: nil,
        # The marker used for pagination. Default: `null`
        marker: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            limit: String,
            marker: String,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
