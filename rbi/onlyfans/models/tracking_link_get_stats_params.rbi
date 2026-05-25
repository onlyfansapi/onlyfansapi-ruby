# typed: strong

module Onlyfans
  module Models
    class TrackingLinkGetStatsParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::TrackingLinkGetStatsParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(String) }
      attr_accessor :tracking_link_id

      # Optional stats range end date
      sig { returns(T.nilable(String)) }
      attr_reader :date_end

      sig { params(date_end: String).void }
      attr_writer :date_end

      # Optional stats range start date
      sig { returns(T.nilable(String)) }
      attr_reader :date_start

      sig { params(date_start: String).void }
      attr_writer :date_start

      sig do
        params(
          account: String,
          tracking_link_id: String,
          date_end: String,
          date_start: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        tracking_link_id:,
        # Optional stats range end date
        date_end: nil,
        # Optional stats range start date
        date_start: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            tracking_link_id: String,
            date_end: String,
            date_start: String,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
