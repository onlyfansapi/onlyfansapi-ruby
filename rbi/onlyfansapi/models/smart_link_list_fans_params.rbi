# typed: strong

module Onlyfansapi
  module Models
    class SmartLinkListFansParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::SmartLinkListFansParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :smart_link_id

      # Optional - Filter to fans with or without fan-sent messages
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :has_messages

      sig { params(has_messages: T::Boolean).void }
      attr_writer :has_messages

      # Rows per page. Default `100`
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Optional minimum number of messages sent by fan
      sig { returns(T.nilable(Integer)) }
      attr_reader :min_messages_sent_by_fan

      sig { params(min_messages_sent_by_fan: Integer).void }
      attr_writer :min_messages_sent_by_fan

      # Optional minimum net revenue
      sig { returns(T.nilable(Float)) }
      attr_reader :min_revenue_net

      sig { params(min_revenue_net: Float).void }
      attr_writer :min_revenue_net

      # Optional minimum net tips
      sig { returns(T.nilable(Float)) }
      attr_reader :min_tips_net

      sig { params(min_tips_net: Float).void }
      attr_writer :min_tips_net

      # Offset for pagination. Default `0`
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      # Optional sort field. Default `-revenue_net`
      sig do
        returns(T.nilable(Onlyfansapi::SmartLinkListFansParams::Sort::OrSymbol))
      end
      attr_reader :sort

      sig do
        params(sort: Onlyfansapi::SmartLinkListFansParams::Sort::OrSymbol).void
      end
      attr_writer :sort

      sig do
        params(
          smart_link_id: String,
          has_messages: T::Boolean,
          limit: Integer,
          min_messages_sent_by_fan: Integer,
          min_revenue_net: Float,
          min_tips_net: Float,
          offset: Integer,
          sort: Onlyfansapi::SmartLinkListFansParams::Sort::OrSymbol,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        smart_link_id:,
        # Optional - Filter to fans with or without fan-sent messages
        has_messages: nil,
        # Rows per page. Default `100`
        limit: nil,
        # Optional minimum number of messages sent by fan
        min_messages_sent_by_fan: nil,
        # Optional minimum net revenue
        min_revenue_net: nil,
        # Optional minimum net tips
        min_tips_net: nil,
        # Offset for pagination. Default `0`
        offset: nil,
        # Optional sort field. Default `-revenue_net`
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            smart_link_id: String,
            has_messages: T::Boolean,
            limit: Integer,
            min_messages_sent_by_fan: Integer,
            min_revenue_net: Float,
            min_tips_net: Float,
            offset: Integer,
            sort: Onlyfansapi::SmartLinkListFansParams::Sort::OrSymbol,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Optional sort field. Default `-revenue_net`
      module Sort
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfansapi::SmartLinkListFansParams::Sort)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REVENUE_NET =
          T.let(
            :revenue_net,
            Onlyfansapi::SmartLinkListFansParams::Sort::TaggedSymbol
          )
        MINUS_REVENUE_NET =
          T.let(
            :"-revenue_net",
            Onlyfansapi::SmartLinkListFansParams::Sort::TaggedSymbol
          )
        TIPS_NET =
          T.let(
            :tips_net,
            Onlyfansapi::SmartLinkListFansParams::Sort::TaggedSymbol
          )
        MINUS_TIPS_NET =
          T.let(
            :"-tips_net",
            Onlyfansapi::SmartLinkListFansParams::Sort::TaggedSymbol
          )
        MESSAGES_SENT_BY_FAN =
          T.let(
            :messages_sent_by_fan,
            Onlyfansapi::SmartLinkListFansParams::Sort::TaggedSymbol
          )
        MINUS_MESSAGES_SENT_BY_FAN =
          T.let(
            :"-messages_sent_by_fan",
            Onlyfansapi::SmartLinkListFansParams::Sort::TaggedSymbol
          )
        CONVERTED_AT =
          T.let(
            :converted_at,
            Onlyfansapi::SmartLinkListFansParams::Sort::TaggedSymbol
          )
        MINUS_CONVERTED_AT =
          T.let(
            :"-converted_at",
            Onlyfansapi::SmartLinkListFansParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfansapi::SmartLinkListFansParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
