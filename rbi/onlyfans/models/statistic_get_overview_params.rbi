# typed: strong

module Onlyfans
  module Models
    class StatisticGetOverviewParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::StatisticGetOverviewParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The end date for the statistics. Keep empty to retrieve until now.
      sig { returns(T.nilable(String)) }
      attr_reader :end_date

      sig { params(end_date: String).void }
      attr_writer :end_date

      # The start date for the statistics. Keep empty to retrieve from the model's start
      # date.
      sig { returns(T.nilable(String)) }
      attr_reader :start_date

      sig { params(start_date: String).void }
      attr_writer :start_date

      # The type of statistics to retrieve (default = empty)
      sig do
        returns(T.nilable(Onlyfans::StatisticGetOverviewParams::Type::OrSymbol))
      end
      attr_accessor :type

      sig do
        params(
          account: String,
          end_date: String,
          start_date: String,
          type: T.nilable(Onlyfans::StatisticGetOverviewParams::Type::OrSymbol),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The end date for the statistics. Keep empty to retrieve until now.
        end_date: nil,
        # The start date for the statistics. Keep empty to retrieve from the model's start
        # date.
        start_date: nil,
        # The type of statistics to retrieve (default = empty)
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
              T.nilable(Onlyfans::StatisticGetOverviewParams::Type::OrSymbol),
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of statistics to retrieve (default = empty)
      module Type
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfans::StatisticGetOverviewParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FANS =
          T.let(:fans, Onlyfans::StatisticGetOverviewParams::Type::TaggedSymbol)
        VISITORS =
          T.let(
            :visitors,
            Onlyfans::StatisticGetOverviewParams::Type::TaggedSymbol
          )
        POSTS =
          T.let(
            :posts,
            Onlyfans::StatisticGetOverviewParams::Type::TaggedSymbol
          )
        MESSAGES =
          T.let(
            :messages,
            Onlyfans::StatisticGetOverviewParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfans::StatisticGetOverviewParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
