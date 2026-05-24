# typed: strong

module Onlyfansapi
  module Models
    class PayoutRetrieveEarningStatisticsParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::PayoutRetrieveEarningStatisticsParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The end date for earning statistics. Keep empty to get all earnings.
      sig { returns(T.nilable(String)) }
      attr_accessor :end_date

      # The start date for earning statistics. Keep empty to get all earnings.
      sig { returns(T.nilable(String)) }
      attr_accessor :start_date

      sig do
        params(
          account: String,
          end_date: T.nilable(String),
          start_date: T.nilable(String),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The end date for earning statistics. Keep empty to get all earnings.
        end_date: nil,
        # The start date for earning statistics. Keep empty to get all earnings.
        start_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            end_date: T.nilable(String),
            start_date: T.nilable(String),
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
