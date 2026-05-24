# typed: strong

module Onlyfansapi
  module Models
    class StatisticCalculateTotalTransactionsParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::StatisticCalculateTotalTransactionsParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The end date for the period. Keep empty to calculate everything.
      sig { returns(String) }
      attr_accessor :end_date

      # The start date for the period. Keep empty to calculate everything.
      sig { returns(String) }
      attr_accessor :start_date

      sig do
        params(
          account: String,
          end_date: String,
          start_date: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The end date for the period. Keep empty to calculate everything.
        end_date:,
        # The start date for the period. Keep empty to calculate everything.
        start_date:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            end_date: String,
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
