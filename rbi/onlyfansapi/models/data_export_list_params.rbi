# typed: strong

module Onlyfansapi
  module Models
    class DataExportListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::DataExportListParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      # Number of minutes until download URLs expire. Min `1`, max `60`, default `5`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :download_url_expires_in

      sig { params(download_url_expires_in: Integer).void }
      attr_writer :download_url_expires_in

      # Page number for pagination. Default `1`
      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      # Number of results per page. Default `15`, max `100`
      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # Filter by status
      sig do
        returns(T.nilable(Onlyfansapi::DataExportListParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: Onlyfansapi::DataExportListParams::Status::OrSymbol).void
      end
      attr_writer :status

      # Filter by export type
      sig do
        returns(T.nilable(Onlyfansapi::DataExportListParams::Type::OrSymbol))
      end
      attr_reader :type

      sig do
        params(type: Onlyfansapi::DataExportListParams::Type::OrSymbol).void
      end
      attr_writer :type

      sig do
        params(
          download_url_expires_in: Integer,
          page: Integer,
          per_page: Integer,
          status: Onlyfansapi::DataExportListParams::Status::OrSymbol,
          type: Onlyfansapi::DataExportListParams::Type::OrSymbol,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Number of minutes until download URLs expire. Min `1`, max `60`, default `5`.
        download_url_expires_in: nil,
        # Page number for pagination. Default `1`
        page: nil,
        # Number of results per page. Default `15`, max `100`
        per_page: nil,
        # Filter by status
        status: nil,
        # Filter by export type
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            download_url_expires_in: Integer,
            page: Integer,
            per_page: Integer,
            status: Onlyfansapi::DataExportListParams::Status::OrSymbol,
            type: Onlyfansapi::DataExportListParams::Type::OrSymbol,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by status
      module Status
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfansapi::DataExportListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CALCULATING_CREDITS =
          T.let(
            :calculating_credits,
            Onlyfansapi::DataExportListParams::Status::TaggedSymbol
          )
        CALCULATING_CREDITS_FAILED =
          T.let(
            :calculating_credits_failed,
            Onlyfansapi::DataExportListParams::Status::TaggedSymbol
          )
        CALCULATING_CREDITS_COMPLETED =
          T.let(
            :calculating_credits_completed,
            Onlyfansapi::DataExportListParams::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            Onlyfansapi::DataExportListParams::Status::TaggedSymbol
          )
        IN_PROGRESS =
          T.let(
            :in_progress,
            Onlyfansapi::DataExportListParams::Status::TaggedSymbol
          )
        COMPLETED =
          T.let(
            :completed,
            Onlyfansapi::DataExportListParams::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            Onlyfansapi::DataExportListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfansapi::DataExportListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Filter by export type
      module Type
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfansapi::DataExportListParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSACTIONS =
          T.let(
            :transactions,
            Onlyfansapi::DataExportListParams::Type::TaggedSymbol
          )
        CHAT_MESSAGES =
          T.let(
            :chat_messages,
            Onlyfansapi::DataExportListParams::Type::TaggedSymbol
          )
        MEDIA_VAULT =
          T.let(
            :media_vault,
            Onlyfansapi::DataExportListParams::Type::TaggedSymbol
          )
        TRIAL_LINKS =
          T.let(
            :trial_links,
            Onlyfansapi::DataExportListParams::Type::TaggedSymbol
          )
        TRACKING_LINKS =
          T.let(
            :tracking_links,
            Onlyfansapi::DataExportListParams::Type::TaggedSymbol
          )
        PAYOUTS =
          T.let(:payouts, Onlyfansapi::DataExportListParams::Type::TaggedSymbol)
        CHARGEBACKS =
          T.let(
            :chargebacks,
            Onlyfansapi::DataExportListParams::Type::TaggedSymbol
          )
        PUBLIC_PROFILES =
          T.let(
            :public_profiles,
            Onlyfansapi::DataExportListParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfansapi::DataExportListParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
