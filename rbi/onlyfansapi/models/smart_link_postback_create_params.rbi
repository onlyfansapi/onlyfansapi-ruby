# typed: strong

module Onlyfansapi
  module Models
    class SmartLinkPostbackCreateParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::SmartLinkPostbackCreateParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      # One or more Smart Link conversion types that should trigger this postback.
      sig { returns(T::Array[String]) }
      attr_accessor :conversion_types

      # `global` fires for all Smart Links. `campaign_specific` fires only for selected
      # Smart Links.
      sig do
        returns(
          Onlyfansapi::SmartLinkPostbackCreateParams::SmartLinkScope::OrSymbol
        )
      end
      attr_accessor :smart_link_scope

      # The destination URL. Variables such as `{click_id}`, `{fbclid}`, `{gclid}`, and
      # `{ttclid}` are replaced when the postback is dispatched.
      sig { returns(String) }
      attr_accessor :url

      # Smart Link ULIDs. Required when `smart_link_scope` is `campaign_specific`.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :smart_link_ids

      sig { params(smart_link_ids: T::Array[String]).void }
      attr_writer :smart_link_ids

      sig do
        params(
          conversion_types: T::Array[String],
          smart_link_scope:
            Onlyfansapi::SmartLinkPostbackCreateParams::SmartLinkScope::OrSymbol,
          url: String,
          smart_link_ids: T::Array[String],
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # One or more Smart Link conversion types that should trigger this postback.
        conversion_types:,
        # `global` fires for all Smart Links. `campaign_specific` fires only for selected
        # Smart Links.
        smart_link_scope:,
        # The destination URL. Variables such as `{click_id}`, `{fbclid}`, `{gclid}`, and
        # `{ttclid}` are replaced when the postback is dispatched.
        url:,
        # Smart Link ULIDs. Required when `smart_link_scope` is `campaign_specific`.
        smart_link_ids: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            conversion_types: T::Array[String],
            smart_link_scope:
              Onlyfansapi::SmartLinkPostbackCreateParams::SmartLinkScope::OrSymbol,
            url: String,
            smart_link_ids: T::Array[String],
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # `global` fires for all Smart Links. `campaign_specific` fires only for selected
      # Smart Links.
      module SmartLinkScope
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Onlyfansapi::SmartLinkPostbackCreateParams::SmartLinkScope
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GLOBAL =
          T.let(
            :global,
            Onlyfansapi::SmartLinkPostbackCreateParams::SmartLinkScope::TaggedSymbol
          )
        CAMPAIGN_SPECIFIC =
          T.let(
            :campaign_specific,
            Onlyfansapi::SmartLinkPostbackCreateParams::SmartLinkScope::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfansapi::SmartLinkPostbackCreateParams::SmartLinkScope::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
