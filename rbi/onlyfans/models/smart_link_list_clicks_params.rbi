# typed: strong

module Onlyfans
  module Models
    class SmartLinkListClicksParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::SmartLinkListClicksParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :smart_link_id

      # Optional report range end date
      sig { returns(T.nilable(String)) }
      attr_reader :date_end

      sig { params(date_end: String).void }
      attr_writer :date_end

      # Optional report range start date
      sig { returns(T.nilable(String)) }
      attr_reader :date_start

      sig { params(date_start: String).void }
      attr_writer :date_start

      # Include clicks marked as bots. Default `true`
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_bots

      sig { params(include_bots: T::Boolean).void }
      attr_writer :include_bots

      # Include duplicate clicks. Default `true`
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_duplicates

      sig { params(include_duplicates: T::Boolean).void }
      attr_writer :include_duplicates

      # Rows per page. Default `100`
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Offset for pagination. Default `0`
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig do
        params(
          smart_link_id: String,
          date_end: String,
          date_start: String,
          include_bots: T::Boolean,
          include_duplicates: T::Boolean,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        smart_link_id:,
        # Optional report range end date
        date_end: nil,
        # Optional report range start date
        date_start: nil,
        # Include clicks marked as bots. Default `true`
        include_bots: nil,
        # Include duplicate clicks. Default `true`
        include_duplicates: nil,
        # Rows per page. Default `100`
        limit: nil,
        # Offset for pagination. Default `0`
        offset: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            smart_link_id: String,
            date_end: String,
            date_start: String,
            include_bots: T::Boolean,
            include_duplicates: T::Boolean,
            limit: Integer,
            offset: Integer,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
