# typed: strong

module Onlyfansapi
  module Models
    class ChargebackListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::ChargebackListParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The end date for the chargebacks. Keep empty to get all.
      sig { returns(T.nilable(String)) }
      attr_reader :end_date

      sig { params(end_date: String).void }
      attr_writer :end_date

      # Number of chargebacks to return (1-100). Default = 10
      sig { returns(T.nilable(String)) }
      attr_accessor :limit

      # Number of chargebacks to skip, used for pagination.
      sig { returns(T.nilable(String)) }
      attr_accessor :offset

      # The start date for the chargebacks. Keep empty to get all.
      sig { returns(T.nilable(String)) }
      attr_reader :start_date

      sig { params(start_date: String).void }
      attr_writer :start_date

      sig do
        params(
          account: String,
          end_date: String,
          limit: T.nilable(String),
          offset: T.nilable(String),
          start_date: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The end date for the chargebacks. Keep empty to get all.
        end_date: nil,
        # Number of chargebacks to return (1-100). Default = 10
        limit: nil,
        # Number of chargebacks to skip, used for pagination.
        offset: nil,
        # The start date for the chargebacks. Keep empty to get all.
        start_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            end_date: String,
            limit: T.nilable(String),
            offset: T.nilable(String),
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
