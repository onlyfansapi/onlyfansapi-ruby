# typed: strong

module Onlyfansapi
  module Models
    class DataExportCreateParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::DataExportCreateParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      # The end date for the export (ISO 8601 format).
      sig { returns(String) }
      attr_accessor :end_date

      # The output file format. Supported formats vary by export type: `csv` or `xlsx`
      # for transactions, chat_messages, trial_links, tracking_links, smart_links,
      # payouts, chargebacks, public_profiles, fans, followings; `zip` for media_vault.
      sig { returns(Onlyfansapi::DataExportCreateParams::FileType::OrSymbol) }
      attr_accessor :file_type

      # The start date for the export (ISO 8601 format).
      sig { returns(String) }
      attr_accessor :start_date

      # The type of data to export
      sig { returns(Onlyfansapi::DataExportCreateParams::Type::OrSymbol) }
      attr_accessor :type

      # Array of account prefixed IDs to export data from. Not required for
      # `public_profiles` type.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :account_ids

      sig { params(account_ids: T::Array[String]).void }
      attr_writer :account_ids

      # When true, automatically starts the export after creation.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :auto_start

      sig { params(auto_start: T::Boolean).void }
      attr_writer :auto_start

      # Array of column names to include in the export (optional, defaults to all
      # columns for the export type)
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :export_columns

      sig { params(export_columns: T::Array[String]).void }
      attr_writer :export_columns

      # Type-specific export options. For `chat_messages`: `maxMessages` (required per
      # account, max 10,000,000), `maxChats` (optional per-account chat scrape limit),
      # `skipMassMessages` (optional, bool), `chatIds` (optional array of numeric
      # fan/chat IDs; filters output and can drastically reduce totals). For
      # `media_vault`: `mediaType` (required, one of: `all`, `photo`, `gif`, `video`,
      # `audio`). For `fans`: `type` (required, one of: `all`, `active`, `expired`,
      # `latest`). For `followings`: `type` (required, one of: `all`, `active`,
      # `expired`). For `public_profiles`: `query` (optional, full-text search),
      # `gender` (optional, filter: male, female, trans, couple), `minSubscribePrice`
      # (optional, USD), `maxSubscribePrice` (optional, USD), `location` (optional),
      # `minPostsCount` (optional, minimum posts), `minPhotosCount` (optional, minimum
      # photos), `minVideosCount` (optional, minimum videos), `minSubscribersCount`
      # (optional, minimum subscribers), `minJoinDate` (optional, ISO 8601 date),
      # `minLastSeenAt` (optional, ISO 8601 date), `createdAtFrom` (optional, ISO 8601
      # date, profile added to DB after), `createdAtTo` (optional, ISO 8601 date,
      # profile added to DB before), `instagram` (optional), `twitter` (optional),
      # `tiktok` (optional), `maxResults` (optional, limit results).
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :options

      sig { params(options: T::Hash[Symbol, T.anything]).void }
      attr_writer :options

      sig do
        params(
          end_date: String,
          file_type: Onlyfansapi::DataExportCreateParams::FileType::OrSymbol,
          start_date: String,
          type: Onlyfansapi::DataExportCreateParams::Type::OrSymbol,
          account_ids: T::Array[String],
          auto_start: T::Boolean,
          export_columns: T::Array[String],
          options: T::Hash[Symbol, T.anything],
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The end date for the export (ISO 8601 format).
        end_date:,
        # The output file format. Supported formats vary by export type: `csv` or `xlsx`
        # for transactions, chat_messages, trial_links, tracking_links, smart_links,
        # payouts, chargebacks, public_profiles, fans, followings; `zip` for media_vault.
        file_type:,
        # The start date for the export (ISO 8601 format).
        start_date:,
        # The type of data to export
        type:,
        # Array of account prefixed IDs to export data from. Not required for
        # `public_profiles` type.
        account_ids: nil,
        # When true, automatically starts the export after creation.
        auto_start: nil,
        # Array of column names to include in the export (optional, defaults to all
        # columns for the export type)
        export_columns: nil,
        # Type-specific export options. For `chat_messages`: `maxMessages` (required per
        # account, max 10,000,000), `maxChats` (optional per-account chat scrape limit),
        # `skipMassMessages` (optional, bool), `chatIds` (optional array of numeric
        # fan/chat IDs; filters output and can drastically reduce totals). For
        # `media_vault`: `mediaType` (required, one of: `all`, `photo`, `gif`, `video`,
        # `audio`). For `fans`: `type` (required, one of: `all`, `active`, `expired`,
        # `latest`). For `followings`: `type` (required, one of: `all`, `active`,
        # `expired`). For `public_profiles`: `query` (optional, full-text search),
        # `gender` (optional, filter: male, female, trans, couple), `minSubscribePrice`
        # (optional, USD), `maxSubscribePrice` (optional, USD), `location` (optional),
        # `minPostsCount` (optional, minimum posts), `minPhotosCount` (optional, minimum
        # photos), `minVideosCount` (optional, minimum videos), `minSubscribersCount`
        # (optional, minimum subscribers), `minJoinDate` (optional, ISO 8601 date),
        # `minLastSeenAt` (optional, ISO 8601 date), `createdAtFrom` (optional, ISO 8601
        # date, profile added to DB after), `createdAtTo` (optional, ISO 8601 date,
        # profile added to DB before), `instagram` (optional), `twitter` (optional),
        # `tiktok` (optional), `maxResults` (optional, limit results).
        options: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            end_date: String,
            file_type: Onlyfansapi::DataExportCreateParams::FileType::OrSymbol,
            start_date: String,
            type: Onlyfansapi::DataExportCreateParams::Type::OrSymbol,
            account_ids: T::Array[String],
            auto_start: T::Boolean,
            export_columns: T::Array[String],
            options: T::Hash[Symbol, T.anything],
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The output file format. Supported formats vary by export type: `csv` or `xlsx`
      # for transactions, chat_messages, trial_links, tracking_links, smart_links,
      # payouts, chargebacks, public_profiles, fans, followings; `zip` for media_vault.
      module FileType
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfansapi::DataExportCreateParams::FileType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CSV =
          T.let(
            :csv,
            Onlyfansapi::DataExportCreateParams::FileType::TaggedSymbol
          )
        XLSX =
          T.let(
            :xlsx,
            Onlyfansapi::DataExportCreateParams::FileType::TaggedSymbol
          )
        ZIP =
          T.let(
            :zip,
            Onlyfansapi::DataExportCreateParams::FileType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfansapi::DataExportCreateParams::FileType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The type of data to export
      module Type
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfansapi::DataExportCreateParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSACTIONS =
          T.let(
            :transactions,
            Onlyfansapi::DataExportCreateParams::Type::TaggedSymbol
          )
        CHAT_MESSAGES =
          T.let(
            :chat_messages,
            Onlyfansapi::DataExportCreateParams::Type::TaggedSymbol
          )
        MEDIA_VAULT =
          T.let(
            :media_vault,
            Onlyfansapi::DataExportCreateParams::Type::TaggedSymbol
          )
        TRIAL_LINKS =
          T.let(
            :trial_links,
            Onlyfansapi::DataExportCreateParams::Type::TaggedSymbol
          )
        TRACKING_LINKS =
          T.let(
            :tracking_links,
            Onlyfansapi::DataExportCreateParams::Type::TaggedSymbol
          )
        SMART_LINKS =
          T.let(
            :smart_links,
            Onlyfansapi::DataExportCreateParams::Type::TaggedSymbol
          )
        PAYOUTS =
          T.let(
            :payouts,
            Onlyfansapi::DataExportCreateParams::Type::TaggedSymbol
          )
        CHARGEBACKS =
          T.let(
            :chargebacks,
            Onlyfansapi::DataExportCreateParams::Type::TaggedSymbol
          )
        PUBLIC_PROFILES =
          T.let(
            :public_profiles,
            Onlyfansapi::DataExportCreateParams::Type::TaggedSymbol
          )
        FANS =
          T.let(:fans, Onlyfansapi::DataExportCreateParams::Type::TaggedSymbol)
        FOLLOWINGS =
          T.let(
            :followings,
            Onlyfansapi::DataExportCreateParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfansapi::DataExportCreateParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
