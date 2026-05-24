# typed: strong

module Onlyfansapi
  module Models
    class LinkTagListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfansapi::LinkTagListParams, Onlyfansapi::Internal::AnyHash)
        end

      # Filter by link type. If not provided, returns tags for both types.
      sig { returns(T.nilable(Onlyfansapi::LinkTagListParams::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: Onlyfansapi::LinkTagListParams::Type::OrSymbol).void }
      attr_writer :type

      sig do
        params(
          type: Onlyfansapi::LinkTagListParams::Type::OrSymbol,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by link type. If not provided, returns tags for both types.
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            type: Onlyfansapi::LinkTagListParams::Type::OrSymbol,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by link type. If not provided, returns tags for both types.
      module Type
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfansapi::LinkTagListParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRIAL_LINKS =
          T.let(
            :trial_links,
            Onlyfansapi::LinkTagListParams::Type::TaggedSymbol
          )
        TRACKING_LINKS =
          T.let(
            :tracking_links,
            Onlyfansapi::LinkTagListParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfansapi::LinkTagListParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
