# typed: strong

module Onlyfans
  module Models
    class TrialLinkListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::TrialLinkListParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # The number of trial links to return. Default `10`
      sig { returns(Integer) }
      attr_accessor :limit

      # The offset used for pagination. Default `0`
      sig { returns(Integer) }
      attr_accessor :offset

      # Sort the results by a field. Default `create_date`
      sig { returns(T.nilable(Onlyfans::TrialLinkListParams::Field::OrSymbol)) }
      attr_accessor :field

      # Sort the results. Default `desc`
      sig { returns(T.nilable(Onlyfans::TrialLinkListParams::Sort::OrSymbol)) }
      attr_accessor :sort

      # Wait for the revenue data to finish processing, instead of processing in the
      # background. **Will result in longer response times, use with caution**. Default
      # `false`
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :synchronous

      sig do
        params(
          account: String,
          limit: Integer,
          offset: Integer,
          field: T.nilable(Onlyfans::TrialLinkListParams::Field::OrSymbol),
          sort: T.nilable(Onlyfans::TrialLinkListParams::Sort::OrSymbol),
          synchronous: T.nilable(T::Boolean),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The number of trial links to return. Default `10`
        limit:,
        # The offset used for pagination. Default `0`
        offset:,
        # Sort the results by a field. Default `create_date`
        field: nil,
        # Sort the results. Default `desc`
        sort: nil,
        # Wait for the revenue data to finish processing, instead of processing in the
        # background. **Will result in longer response times, use with caution**. Default
        # `false`
        synchronous: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            limit: Integer,
            offset: Integer,
            field: T.nilable(Onlyfans::TrialLinkListParams::Field::OrSymbol),
            sort: T.nilable(Onlyfans::TrialLinkListParams::Sort::OrSymbol),
            synchronous: T.nilable(T::Boolean),
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Sort the results by a field. Default `create_date`
      module Field
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::TrialLinkListParams::Field) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATE_DATE =
          T.let(
            :create_date,
            Onlyfans::TrialLinkListParams::Field::TaggedSymbol
          )
        EXPIRE_DATE =
          T.let(
            :expire_date,
            Onlyfans::TrialLinkListParams::Field::TaggedSymbol
          )
        SUBSCRIBE_COUNTS =
          T.let(
            :subscribe_counts,
            Onlyfans::TrialLinkListParams::Field::TaggedSymbol
          )
        SUBSCRIBE_DAYS =
          T.let(
            :subscribe_days,
            Onlyfans::TrialLinkListParams::Field::TaggedSymbol
          )
        CLAIMS_COUNT =
          T.let(
            :claims_count,
            Onlyfans::TrialLinkListParams::Field::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfans::TrialLinkListParams::Field::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sort the results. Default `desc`
      module Sort
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::TrialLinkListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DESC = T.let(:desc, Onlyfans::TrialLinkListParams::Sort::TaggedSymbol)
        ASC = T.let(:asc, Onlyfans::TrialLinkListParams::Sort::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfans::TrialLinkListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
