# typed: strong

module Onlyfans
  module Models
    class MassMessagingRetrieveOverviewParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::MassMessagingRetrieveOverviewParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The latest mass message to retrieve. Keep empty to get all. MUST BE DATE AFTER
      # `startDate`. This is also used for pagination.
      sig { returns(T.nilable(String)) }
      attr_reader :end_date

      sig { params(end_date: String).void }
      attr_writer :end_date

      # Number of mass messages to return (default = 10)
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Optionally, find a mass message by the message text.
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      # The earliest mass message to retrieve. Keep empty to get all.
      sig { returns(T.nilable(String)) }
      attr_reader :start_date

      sig { params(start_date: String).void }
      attr_writer :start_date

      sig do
        params(
          account: String,
          end_date: String,
          limit: Integer,
          query: String,
          start_date: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The latest mass message to retrieve. Keep empty to get all. MUST BE DATE AFTER
        # `startDate`. This is also used for pagination.
        end_date: nil,
        # Number of mass messages to return (default = 10)
        limit: nil,
        # Optionally, find a mass message by the message text.
        query: nil,
        # The earliest mass message to retrieve. Keep empty to get all.
        start_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            end_date: String,
            limit: Integer,
            query: String,
            start_date: String,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
