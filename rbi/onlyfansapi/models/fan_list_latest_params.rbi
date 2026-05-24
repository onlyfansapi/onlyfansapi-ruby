# typed: strong

module Onlyfansapi
  module Models
    class FanListLatestParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::FanListLatestParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # End date for filtering (required with start_date)
      sig { returns(T.nilable(String)) }
      attr_accessor :end_date

      # Number of fans to return (1-50)
      sig { returns(T.nilable(String)) }
      attr_accessor :limit

      # Number of fans to skip
      sig { returns(T.nilable(String)) }
      attr_accessor :offset

      # Start date for filtering (required with end_date)
      sig { returns(T.nilable(String)) }
      attr_accessor :start_date

      # Filter by type: total, renew, or new
      sig { returns(T.nilable(String)) }
      attr_accessor :type

      sig do
        params(
          account: String,
          end_date: T.nilable(String),
          limit: T.nilable(String),
          offset: T.nilable(String),
          start_date: T.nilable(String),
          type: T.nilable(String),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # End date for filtering (required with start_date)
        end_date: nil,
        # Number of fans to return (1-50)
        limit: nil,
        # Number of fans to skip
        offset: nil,
        # Start date for filtering (required with end_date)
        start_date: nil,
        # Filter by type: total, renew, or new
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            end_date: T.nilable(String),
            limit: T.nilable(String),
            offset: T.nilable(String),
            start_date: T.nilable(String),
            type: T.nilable(String),
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
