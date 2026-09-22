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

      # Optional request body template for POST postbacks. Variables are replaced when
      # the postback is dispatched.
      sig { returns(T.nilable(String)) }
      attr_reader :body

      sig { params(body: String).void }
      attr_writer :body

      # Optional request headers. Header values may include postback variables.
      sig do
        returns(
          T.nilable(T::Array[Onlyfans::SmartLinkPostbackUpdateParams::Header])
        )
      end
      attr_reader :headers

      sig do
        params(
          headers:
            T::Array[Onlyfans::SmartLinkPostbackUpdateParams::Header::OrHash]
        ).void
      end
      attr_writer :headers

      # HTTP method used for the postback request. Existing value is kept when omitted.
      sig do
        returns(
          T.nilable(
            Onlyfans::SmartLinkPostbackUpdateParams::HTTPMethod::OrSymbol
          )
        )
      end
      attr_reader :http_method

      sig do
        params(
          http_method:
            Onlyfans::SmartLinkPostbackUpdateParams::HTTPMethod::OrSymbol
        ).void
      end
      attr_writer :http_method

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
          body: String,
          headers:
            T::Array[Onlyfans::SmartLinkPostbackUpdateParams::Header::OrHash],
          http_method:
            Onlyfans::SmartLinkPostbackUpdateParams::HTTPMethod::OrSymbol,
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
        # Optional request body template for POST postbacks. Variables are replaced when
        # the postback is dispatched.
        body: nil,
        # Optional request headers. Header values may include postback variables.
        headers: nil,
        # HTTP method used for the postback request. Existing value is kept when omitted.
        http_method: nil,
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
            body: String,
            headers: T::Array[Onlyfans::SmartLinkPostbackUpdateParams::Header],
            http_method:
              Onlyfans::SmartLinkPostbackUpdateParams::HTTPMethod::OrSymbol,
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

      class Header < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::SmartLinkPostbackUpdateParams::Header,
              Onlyfans::Internal::AnyHash
            )
          end

        # This field is required when <code>headers._.value</code> is present. Must match
        # the regex /\A[A-Za-z0-9!#$%&'_+.^\_`|~-]+\z/. Must not be greater than 100
        # characters.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Must not be greater than 2000 characters.
        sig { returns(T.nilable(String)) }
        attr_accessor :value

        sig do
          params(name: T.nilable(String), value: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(
          # This field is required when <code>headers._.value</code> is present. Must match
          # the regex /\A[A-Za-z0-9!#$%&'_+.^\_`|~-]+\z/. Must not be greater than 100
          # characters.
          name: nil,
          # Must not be greater than 2000 characters.
          value: nil
        )
        end

        sig do
          override.returns(
            { name: T.nilable(String), value: T.nilable(String) }
          )
        end
        def to_hash
        end
      end

      # HTTP method used for the postback request. Existing value is kept when omitted.
      module HTTPMethod
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfans::SmartLinkPostbackUpdateParams::HTTPMethod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GET =
          T.let(
            :GET,
            Onlyfans::SmartLinkPostbackUpdateParams::HTTPMethod::TaggedSymbol
          )
        POST =
          T.let(
            :POST,
            Onlyfans::SmartLinkPostbackUpdateParams::HTTPMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfans::SmartLinkPostbackUpdateParams::HTTPMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
