# typed: strong

module Onlyfans
  module Resources
    # APIs for managing data exports
    class DataExports
      # Create a new data export request. This will calculate the required credits and
      # prepare the export for starting.
      sig do
        params(
          end_date: String,
          file_type: Onlyfans::DataExportCreateParams::FileType::OrSymbol,
          start_date: String,
          type: Onlyfans::DataExportCreateParams::Type::OrSymbol,
          account_ids: T::Array[String],
          auto_start: T::Boolean,
          export_columns: T::Array[String],
          options: T::Hash[Symbol, T.anything],
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::DataExportCreateResponse)
      end
      def create(
        # The end date for the export (ISO 8601 format).
        end_date:,
        # The output file format. Supported formats vary by export type: `csv` or `xlsx`
        # for transactions, chat_messages, fansly_chat_messages, trial_links,
        # tracking_links, smart_links, payouts, chargebacks, public_profiles, fans,
        # followings, profile_visitors; `zip` for media_vault.
        file_type:,
        # The start date for the export (ISO 8601 format).
        start_date:,
        # The type of data to export. Use `fansly_chat_messages` to export Fansly chat
        # messages (all other types are OnlyFans). `profile_visitors` returns one row per
        # account per day, scraped one day at a time so the daily numbers are not
        # aggregated away by OnlyFans.
        type:,
        # Array of account prefixed IDs to export data from. Not required for
        # `public_profiles` type. For `fansly_chat_messages`, pass Fansly account prefixed
        # IDs (`fansly_acct_...`); all other types take OnlyFans account IDs.
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
        # `fansly_chat_messages`: `maxMessages` (required per account, max 10,000,000),
        # `maxChats` (optional per-account chat scrape limit), `chatIds` (optional array
        # of Fansly group ID strings; filters output and can drastically reduce totals).
        # For `media_vault`: `mediaType` (required, one of: `all`, `photo`, `gif`,
        # `video`, `audio`). For `fans`: `type` (required, one of: `all`, `active`,
        # `expired`, `latest`). For `followings`: `type` (required, one of: `all`,
        # `active`, `expired`). For `public_profiles`: `query` (optional, full-text
        # search), `gender` (optional, filter: male, female, trans, couple),
        # `minSubscribePrice` (optional, USD), `maxSubscribePrice` (optional, USD),
        # `location` (optional), `minPostsCount` (optional, minimum posts),
        # `minPhotosCount` (optional, minimum photos), `minVideosCount` (optional, minimum
        # videos), `minSubscribersCount` (optional, minimum subscribers),
        # `maxSubscribersCount` (optional, maximum subscribers), `minJoinDate` (optional,
        # ISO 8601 date), `minLastSeenAt` (optional, ISO 8601 date), `createdAtFrom`
        # (optional, ISO 8601 date, profile added to DB after), `createdAtTo` (optional,
        # ISO 8601 date, profile added to DB before), `instagram` (optional), `twitter`
        # (optional), `tiktok` (optional), `maxResults` (optional, limit results).
        options: nil,
        request_options: {}
      )
      end

      # Get the current status and progress of a data export
      sig do
        params(
          data_export_id: String,
          download_url_expires_in: Integer,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::DataExportRetrieveResponse)
      end
      def retrieve(
        # The prefixed ID of the data export
        data_export_id,
        # Number of minutes until the download URL expires. Min `1`, max `60`, default
        # `5`.
        download_url_expires_in: nil,
        request_options: {}
      )
      end

      # Get a paginated list of data exports for the team
      sig do
        params(
          download_url_expires_in: Integer,
          page: Integer,
          per_page: Integer,
          status: Onlyfans::DataExportListParams::Status::OrSymbol,
          type: Onlyfans::DataExportListParams::Type::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::DataExportListResponse)
      end
      def list(
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

      # Cancel a running data export. Only exports with status `pending` or
      # `in_progress` can be cancelled.
      sig do
        params(
          data_export_id: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::DataExportCancelResponse)
      end
      def cancel(
        # The prefixed ID of the data export
        data_export_id,
        request_options: {}
      )
      end

      # Create a new data export with the same parameters as a failed export and
      # automatically start it.
      sig do
        params(
          data_export_id: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::DataExportRetryResponse)
      end
      def retry_(
        # The prefixed ID of the failed data export
        data_export_id,
        request_options: {}
      )
      end

      # Start processing a data export that has completed credit calculation. This will
      # begin the actual export process and charge credits.
      sig do
        params(
          data_export_id: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::DataExportStartResponse)
      end
      def start(
        # The prefixed ID of the data export
        data_export_id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Onlyfans::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
