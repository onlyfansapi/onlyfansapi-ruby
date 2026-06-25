# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::DataExports#create
    class DataExportCreateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute end_date
      #   The end date for the export (ISO 8601 format).
      #
      #   @return [String]
      required :end_date, String

      # @!attribute file_type
      #   The output file format. Supported formats vary by export type: `csv` or `xlsx`
      #   for transactions, chat_messages, trial_links, tracking_links, smart_links,
      #   payouts, chargebacks, public_profiles, fans, followings; `zip` for media_vault.
      #
      #   @return [Symbol, Onlyfans::Models::DataExportCreateParams::FileType]
      required :file_type, enum: -> { Onlyfans::DataExportCreateParams::FileType }

      # @!attribute start_date
      #   The start date for the export (ISO 8601 format).
      #
      #   @return [String]
      required :start_date, String

      # @!attribute type
      #   The type of data to export
      #
      #   @return [Symbol, Onlyfans::Models::DataExportCreateParams::Type]
      required :type, enum: -> { Onlyfans::DataExportCreateParams::Type }

      # @!attribute account_ids
      #   Array of account prefixed IDs to export data from. Not required for
      #   `public_profiles` type.
      #
      #   @return [Array<String>, nil]
      optional :account_ids, Onlyfans::Internal::Type::ArrayOf[String]

      # @!attribute auto_start
      #   When true, automatically starts the export after creation.
      #
      #   @return [Boolean, nil]
      optional :auto_start, Onlyfans::Internal::Type::Boolean

      # @!attribute export_columns
      #   Array of column names to include in the export (optional, defaults to all
      #   columns for the export type)
      #
      #   @return [Array<String>, nil]
      optional :export_columns, Onlyfans::Internal::Type::ArrayOf[String]

      # @!attribute options
      #   Type-specific export options. For `chat_messages`: `maxMessages` (required per
      #   account, max 10,000,000), `maxChats` (optional per-account chat scrape limit),
      #   `skipMassMessages` (optional, bool), `chatIds` (optional array of numeric
      #   fan/chat IDs; filters output and can drastically reduce totals). For
      #   `media_vault`: `mediaType` (required, one of: `all`, `photo`, `gif`, `video`,
      #   `audio`). For `fans`: `type` (required, one of: `all`, `active`, `expired`,
      #   `latest`). For `followings`: `type` (required, one of: `all`, `active`,
      #   `expired`). For `public_profiles`: `query` (optional, full-text search),
      #   `gender` (optional, filter: male, female, trans, couple), `minSubscribePrice`
      #   (optional, USD), `maxSubscribePrice` (optional, USD), `location` (optional),
      #   `minPostsCount` (optional, minimum posts), `minPhotosCount` (optional, minimum
      #   photos), `minVideosCount` (optional, minimum videos), `minSubscribersCount`
      #   (optional, minimum subscribers), `maxSubscribersCount` (optional, maximum
      #   subscribers), `minJoinDate` (optional, ISO 8601 date), `minLastSeenAt`
      #   (optional, ISO 8601 date), `createdAtFrom` (optional, ISO 8601 date, profile
      #   added to DB after), `createdAtTo` (optional, ISO 8601 date, profile added to DB
      #   before), `instagram` (optional), `twitter` (optional), `tiktok` (optional),
      #   `maxResults` (optional, limit results).
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :options, Onlyfans::Internal::Type::HashOf[Onlyfans::Internal::Type::Unknown]

      # @!method initialize(end_date:, file_type:, start_date:, type:, account_ids: nil, auto_start: nil, export_columns: nil, options: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::DataExportCreateParams} for more details.
      #
      #   @param end_date [String] The end date for the export (ISO 8601 format).
      #
      #   @param file_type [Symbol, Onlyfans::Models::DataExportCreateParams::FileType] The output file format. Supported formats vary by export type: `csv` or `xlsx` f
      #
      #   @param start_date [String] The start date for the export (ISO 8601 format).
      #
      #   @param type [Symbol, Onlyfans::Models::DataExportCreateParams::Type] The type of data to export
      #
      #   @param account_ids [Array<String>] Array of account prefixed IDs to export data from. Not required for `public_prof
      #
      #   @param auto_start [Boolean] When true, automatically starts the export after creation.
      #
      #   @param export_columns [Array<String>] Array of column names to include in the export (optional, defaults to all column
      #
      #   @param options [Hash{Symbol=>Object}] Type-specific export options. For `chat_messages`: `maxMessages` (required per a
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # The output file format. Supported formats vary by export type: `csv` or `xlsx`
      # for transactions, chat_messages, trial_links, tracking_links, smart_links,
      # payouts, chargebacks, public_profiles, fans, followings; `zip` for media_vault.
      module FileType
        extend Onlyfans::Internal::Type::Enum

        CSV = :csv
        XLSX = :xlsx
        ZIP = :zip

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of data to export
      module Type
        extend Onlyfans::Internal::Type::Enum

        TRANSACTIONS = :transactions
        CHAT_MESSAGES = :chat_messages
        MEDIA_VAULT = :media_vault
        TRIAL_LINKS = :trial_links
        TRACKING_LINKS = :tracking_links
        SMART_LINKS = :smart_links
        PAYOUTS = :payouts
        CHARGEBACKS = :chargebacks
        PUBLIC_PROFILES = :public_profiles
        FANS = :fans
        FOLLOWINGS = :followings

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
