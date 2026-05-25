# typed: strong

module Onlyfans
  module Models
    class TrialLinkRetrieveCohortArpsParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::TrialLinkRetrieveCohortArpsParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(String) }
      attr_accessor :trial_link_id

      # Optional acquisition range end date
      sig { returns(T.nilable(String)) }
      attr_reader :acquisition_end

      sig { params(acquisition_end: String).void }
      attr_writer :acquisition_end

      # Optional acquisition range start date
      sig { returns(T.nilable(String)) }
      attr_reader :acquisition_start

      sig { params(acquisition_start: String).void }
      attr_writer :acquisition_start

      # Revenue basis. Defaults to `net`.
      sig do
        returns(
          T.nilable(
            Onlyfans::TrialLinkRetrieveCohortArpsParams::RevenueBasis::OrSymbol
          )
        )
      end
      attr_reader :revenue_basis

      sig do
        params(
          revenue_basis:
            Onlyfans::TrialLinkRetrieveCohortArpsParams::RevenueBasis::OrSymbol
        ).void
      end
      attr_writer :revenue_basis

      sig do
        params(
          account: String,
          trial_link_id: String,
          acquisition_end: String,
          acquisition_start: String,
          revenue_basis:
            Onlyfans::TrialLinkRetrieveCohortArpsParams::RevenueBasis::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        trial_link_id:,
        # Optional acquisition range end date
        acquisition_end: nil,
        # Optional acquisition range start date
        acquisition_start: nil,
        # Revenue basis. Defaults to `net`.
        revenue_basis: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            trial_link_id: String,
            acquisition_end: String,
            acquisition_start: String,
            revenue_basis:
              Onlyfans::TrialLinkRetrieveCohortArpsParams::RevenueBasis::OrSymbol,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Revenue basis. Defaults to `net`.
      module RevenueBasis
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Onlyfans::TrialLinkRetrieveCohortArpsParams::RevenueBasis
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NET =
          T.let(
            :net,
            Onlyfans::TrialLinkRetrieveCohortArpsParams::RevenueBasis::TaggedSymbol
          )
        GROSS =
          T.let(
            :gross,
            Onlyfans::TrialLinkRetrieveCohortArpsParams::RevenueBasis::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfans::TrialLinkRetrieveCohortArpsParams::RevenueBasis::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
