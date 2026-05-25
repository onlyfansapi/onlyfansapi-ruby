# typed: strong

module Onlyfans
  module Models
    class FanListTopParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::FanListTopParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # Sort by: total (default), subscribes, tips, messages, post, streams.
      sig { returns(T.nilable(Onlyfans::FanListTopParams::By::OrSymbol)) }
      attr_accessor :by

      # End date for filtering (required with start_date). This field is required when
      # <code>start_date</code> is present.
      sig { returns(T.nilable(String)) }
      attr_accessor :end_date

      # Start date for filtering (required with end_date). This field is required when
      # <code>end_date</code> is present.
      sig { returns(T.nilable(String)) }
      attr_accessor :start_date

      sig do
        params(
          account: String,
          by: T.nilable(Onlyfans::FanListTopParams::By::OrSymbol),
          end_date: T.nilable(String),
          start_date: T.nilable(String),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # Sort by: total (default), subscribes, tips, messages, post, streams.
        by: nil,
        # End date for filtering (required with start_date). This field is required when
        # <code>start_date</code> is present.
        end_date: nil,
        # Start date for filtering (required with end_date). This field is required when
        # <code>end_date</code> is present.
        start_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            by: T.nilable(Onlyfans::FanListTopParams::By::OrSymbol),
            end_date: T.nilable(String),
            start_date: T.nilable(String),
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Sort by: total (default), subscribes, tips, messages, post, streams.
      module By
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::FanListTopParams::By) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TOTAL = T.let(:total, Onlyfans::FanListTopParams::By::TaggedSymbol)
        SUBSCRIBES =
          T.let(:subscribes, Onlyfans::FanListTopParams::By::TaggedSymbol)
        TIPS = T.let(:tips, Onlyfans::FanListTopParams::By::TaggedSymbol)
        MESSAGES =
          T.let(:messages, Onlyfans::FanListTopParams::By::TaggedSymbol)
        POST = T.let(:post, Onlyfans::FanListTopParams::By::TaggedSymbol)
        STREAMS = T.let(:streams, Onlyfans::FanListTopParams::By::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfans::FanListTopParams::By::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
