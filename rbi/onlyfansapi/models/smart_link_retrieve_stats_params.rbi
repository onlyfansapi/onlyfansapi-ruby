# typed: strong

module Onlyfansapi
  module Models
    class SmartLinkRetrieveStatsParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::SmartLinkRetrieveStatsParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :smart_link_id

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
          smart_link_id: String,
          date_end: String,
          date_start: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        smart_link_id:,
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
            smart_link_id: String,
            date_end: String,
            date_start: String,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
