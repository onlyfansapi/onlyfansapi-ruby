# typed: strong

module Onlyfans
  module Models
    class SmartLinkPostbackUpdateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::SmartLinkPostbackUpdateParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :postback_id

      # One or more Smart Link conversion types that should trigger this postback.
      sig { returns(T::Array[String]) }
      attr_accessor :conversion_types

      # `global` or `campaign_specific`.
      sig do
        returns(
          Onlyfans::SmartLinkPostbackUpdateParams::SmartLinkScope::OrSymbol
        )
      end
      attr_accessor :smart_link_scope

      # The destination URL.
      sig { returns(String) }
      attr_accessor :url

      # Smart Link ULIDs. Required when `smart_link_scope` is `campaign_specific`.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :smart_link_ids

      sig { params(smart_link_ids: T::Array[String]).void }
      attr_writer :smart_link_ids

      sig do
        params(
          postback_id: Integer,
          conversion_types: T::Array[String],
          smart_link_scope:
            Onlyfans::SmartLinkPostbackUpdateParams::SmartLinkScope::OrSymbol,
          url: String,
          smart_link_ids: T::Array[String],
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        postback_id:,
        # One or more Smart Link conversion types that should trigger this postback.
        conversion_types:,
        # `global` or `campaign_specific`.
        smart_link_scope:,
        # The destination URL.
        url:,
        # Smart Link ULIDs. Required when `smart_link_scope` is `campaign_specific`.
        smart_link_ids: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            postback_id: Integer,
            conversion_types: T::Array[String],
            smart_link_scope:
              Onlyfans::SmartLinkPostbackUpdateParams::SmartLinkScope::OrSymbol,
            url: String,
            smart_link_ids: T::Array[String],
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # `global` or `campaign_specific`.
      module SmartLinkScope
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Onlyfans::SmartLinkPostbackUpdateParams::SmartLinkScope
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GLOBAL =
          T.let(
            :global,
            Onlyfans::SmartLinkPostbackUpdateParams::SmartLinkScope::TaggedSymbol
          )
        CAMPAIGN_SPECIFIC =
          T.let(
            :campaign_specific,
            Onlyfans::SmartLinkPostbackUpdateParams::SmartLinkScope::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfans::SmartLinkPostbackUpdateParams::SmartLinkScope::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
