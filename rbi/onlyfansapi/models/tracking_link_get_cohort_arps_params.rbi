# typed: strong

module Onlyfansapi
  module Models
    class TrackingLinkGetCohortArpsParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::TrackingLinkGetCohortArpsParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(String) }
      attr_accessor :tracking_link_id

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
            Onlyfansapi::TrackingLinkGetCohortArpsParams::RevenueBasis::OrSymbol
          )
        )
      end
      attr_reader :revenue_basis

      sig do
        params(
          revenue_basis:
            Onlyfansapi::TrackingLinkGetCohortArpsParams::RevenueBasis::OrSymbol
        ).void
      end
      attr_writer :revenue_basis

      sig do
        params(
          account: String,
          tracking_link_id: String,
          acquisition_end: String,
          acquisition_start: String,
          revenue_basis:
            Onlyfansapi::TrackingLinkGetCohortArpsParams::RevenueBasis::OrSymbol,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        tracking_link_id:,
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
            tracking_link_id: String,
            acquisition_end: String,
            acquisition_start: String,
            revenue_basis:
              Onlyfansapi::TrackingLinkGetCohortArpsParams::RevenueBasis::OrSymbol,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Revenue basis. Defaults to `net`.
      module RevenueBasis
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Onlyfansapi::TrackingLinkGetCohortArpsParams::RevenueBasis
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NET =
          T.let(
            :net,
            Onlyfansapi::TrackingLinkGetCohortArpsParams::RevenueBasis::TaggedSymbol
          )
        GROSS =
          T.let(
            :gross,
            Onlyfansapi::TrackingLinkGetCohortArpsParams::RevenueBasis::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfansapi::TrackingLinkGetCohortArpsParams::RevenueBasis::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
