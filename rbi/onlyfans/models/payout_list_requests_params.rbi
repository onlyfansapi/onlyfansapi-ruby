# typed: strong

module Onlyfans
  module Models
    class PayoutListRequestsParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::PayoutListRequestsParams, Onlyfans::Internal::AnyHash)
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
          request_options: Onlyfans::RequestOptions::OrHash
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
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
