# typed: strong

module Onlyfans
  module Models
    class LinkTagListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::LinkTagListParams, Onlyfans::Internal::AnyHash)
        end

      # Filter by link type. If not provided, returns tags for both types.
      sig { returns(T.nilable(Onlyfans::LinkTagListParams::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: Onlyfans::LinkTagListParams::Type::OrSymbol).void }
      attr_writer :type

      sig do
        params(
          type: Onlyfans::LinkTagListParams::Type::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
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
            type: Onlyfans::LinkTagListParams::Type::OrSymbol,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by link type. If not provided, returns tags for both types.
      module Type
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::LinkTagListParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRIAL_LINKS =
          T.let(:trial_links, Onlyfans::LinkTagListParams::Type::TaggedSymbol)
        TRACKING_LINKS =
          T.let(
            :tracking_links,
            Onlyfans::LinkTagListParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfans::LinkTagListParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
