# typed: strong

module Onlyfans
  module Models
    class DataExportListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::DataExportListParams, Onlyfans::Internal::AnyHash)
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
        returns(T.nilable(Onlyfans::DataExportListParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: Onlyfans::DataExportListParams::Status::OrSymbol).void
      end
      attr_writer :status

      # Filter by export type
      sig { returns(T.nilable(Onlyfans::DataExportListParams::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: Onlyfans::DataExportListParams::Type::OrSymbol).void }
      attr_writer :type

      sig do
        params(
          download_url_expires_in: Integer,
          page: Integer,
          per_page: Integer,
          status: Onlyfans::DataExportListParams::Status::OrSymbol,
          type: Onlyfans::DataExportListParams::Type::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
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
            status: Onlyfans::DataExportListParams::Status::OrSymbol,
            type: Onlyfans::DataExportListParams::Type::OrSymbol,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by status
      module Status
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::DataExportListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CALCULATING_CREDITS =
          T.let(
            :calculating_credits,
            Onlyfans::DataExportListParams::Status::TaggedSymbol
          )
        CALCULATING_CREDITS_FAILED =
          T.let(
            :calculating_credits_failed,
            Onlyfans::DataExportListParams::Status::TaggedSymbol
          )
        CALCULATING_CREDITS_COMPLETED =
          T.let(
            :calculating_credits_completed,
            Onlyfans::DataExportListParams::Status::TaggedSymbol
          )
        PENDING =
          T.let(:pending, Onlyfans::DataExportListParams::Status::TaggedSymbol)
        IN_PROGRESS =
          T.let(
            :in_progress,
            Onlyfans::DataExportListParams::Status::TaggedSymbol
          )
        COMPLETED =
          T.let(
            :completed,
            Onlyfans::DataExportListParams::Status::TaggedSymbol
          )
        FAILED =
          T.let(:failed, Onlyfans::DataExportListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfans::DataExportListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Filter by export type
      module Type
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::DataExportListParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSACTIONS =
          T.let(
            :transactions,
            Onlyfans::DataExportListParams::Type::TaggedSymbol
          )
        CHAT_MESSAGES =
          T.let(
            :chat_messages,
            Onlyfans::DataExportListParams::Type::TaggedSymbol
          )
        MEDIA_VAULT =
          T.let(
            :media_vault,
            Onlyfans::DataExportListParams::Type::TaggedSymbol
          )
        TRIAL_LINKS =
          T.let(
            :trial_links,
            Onlyfans::DataExportListParams::Type::TaggedSymbol
          )
        TRACKING_LINKS =
          T.let(
            :tracking_links,
            Onlyfans::DataExportListParams::Type::TaggedSymbol
          )
        SMART_LINKS =
          T.let(
            :smart_links,
            Onlyfans::DataExportListParams::Type::TaggedSymbol
          )
        PAYOUTS =
          T.let(:payouts, Onlyfans::DataExportListParams::Type::TaggedSymbol)
        CHARGEBACKS =
          T.let(
            :chargebacks,
            Onlyfans::DataExportListParams::Type::TaggedSymbol
          )
        PUBLIC_PROFILES =
          T.let(
            :public_profiles,
            Onlyfans::DataExportListParams::Type::TaggedSymbol
          )
        FANS = T.let(:fans, Onlyfans::DataExportListParams::Type::TaggedSymbol)
        FOLLOWINGS =
          T.let(:followings, Onlyfans::DataExportListParams::Type::TaggedSymbol)
        PROFILE_VISITORS =
          T.let(
            :profile_visitors,
            Onlyfans::DataExportListParams::Type::TaggedSymbol
          )
        FANSLY_CHAT_MESSAGES =
          T.let(
            :fansly_chat_messages,
            Onlyfans::DataExportListParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfans::DataExportListParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
