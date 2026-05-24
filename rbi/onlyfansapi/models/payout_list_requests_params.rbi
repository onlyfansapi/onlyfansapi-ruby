# typed: strong

module Onlyfansapi
  module Models
    class PayoutListRequestsParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::PayoutListRequestsParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # Number of payout requests to return
      sig { returns(T.nilable(String)) }
      attr_reader :limit

      sig { params(limit: String).void }
      attr_writer :limit

      # Number of payout requests to skip for pagination
      sig { returns(T.nilable(String)) }
      attr_reader :offset

      sig { params(offset: String).void }
      attr_writer :offset

      sig do
        params(
          account: String,
          limit: String,
          offset: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # Number of payout requests to return
        limit: nil,
        # Number of payout requests to skip for pagination
        offset: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            limit: String,
            offset: String,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
