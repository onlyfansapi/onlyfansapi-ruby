# typed: strong

module Onlyfans
  module Models
    module Statistics
      class StatementGetEarningsParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Statistics::StatementGetEarningsParams,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        # The end date for the period.
        sig { returns(String) }
        attr_accessor :end_date

        # The start date for the period.
        sig { returns(String) }
        attr_accessor :start_date

        # Filter by All / Subscriptions / Tips / Posts / Messages / Streams
        sig do
          returns(
            T.nilable(
              Onlyfans::Statistics::StatementGetEarningsParams::Type::OrSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type:
              Onlyfans::Statistics::StatementGetEarningsParams::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig do
          params(
            account: String,
            end_date: String,
            start_date: String,
            type:
              Onlyfans::Statistics::StatementGetEarningsParams::Type::OrSymbol,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          # The end date for the period.
          end_date:,
          # The start date for the period.
          start_date:,
          # Filter by All / Subscriptions / Tips / Posts / Messages / Streams
          type: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              end_date: String,
              start_date: String,
              type:
                Onlyfans::Statistics::StatementGetEarningsParams::Type::OrSymbol,
              request_options: Onlyfans::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Filter by All / Subscriptions / Tips / Posts / Messages / Streams
        module Type
          extend Onlyfans::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Onlyfans::Statistics::StatementGetEarningsParams::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TOTAL =
            T.let(
              :total,
              Onlyfans::Statistics::StatementGetEarningsParams::Type::TaggedSymbol
            )
          SUBSCRIBES =
            T.let(
              :subscribes,
              Onlyfans::Statistics::StatementGetEarningsParams::Type::TaggedSymbol
            )
          TIPS =
            T.let(
              :tips,
              Onlyfans::Statistics::StatementGetEarningsParams::Type::TaggedSymbol
            )
          POST =
            T.let(
              :post,
              Onlyfans::Statistics::StatementGetEarningsParams::Type::TaggedSymbol
            )
          MESSAGES =
            T.let(
              :messages,
              Onlyfans::Statistics::StatementGetEarningsParams::Type::TaggedSymbol
            )
          STREAM =
            T.let(
              :stream,
              Onlyfans::Statistics::StatementGetEarningsParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Onlyfans::Statistics::StatementGetEarningsParams::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
