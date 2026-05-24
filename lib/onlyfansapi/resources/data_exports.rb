# frozen_string_literal: true

module Onlyfansapi
  module Resources
    # APIs for managing data exports
    class DataExports
      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::DataExportCreateParams} for more details.
      #
      # Create a new data export request. This will calculate the required credits and
      # prepare the export for starting.
      #
      # @overload create(end_date:, file_type:, start_date:, type:, account_ids: nil, auto_start: nil, export_columns: nil, options: nil, request_options: {})
      #
      # @param end_date [String] The end date for the export (ISO 8601 format).
      #
      # @param file_type [Symbol, Onlyfansapi::Models::DataExportCreateParams::FileType] The output file format. Supported formats vary by export type: `csv` or `xlsx` f
      #
      # @param start_date [String] The start date for the export (ISO 8601 format).
      #
      # @param type [Symbol, Onlyfansapi::Models::DataExportCreateParams::Type] The type of data to export
      #
      # @param account_ids [Array<String>] Array of account prefixed IDs to export data from. Not required for `public_prof
      #
      # @param auto_start [Boolean] When true, automatically starts the export after creation.
      #
      # @param export_columns [Array<String>] Array of column names to include in the export (optional, defaults to all column
      #
      # @param options [Hash{Symbol=>Object}] Type-specific export options. For `chat_messages`: `maxMessages` (required per a
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::DataExportCreateResponse]
      #
      # @see Onlyfansapi::Models::DataExportCreateParams
      def create(params)
        parsed, options = Onlyfansapi::DataExportCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/data-exports",
          body: parsed,
          model: Onlyfansapi::Models::DataExportCreateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::DataExportRetrieveParams} for more details.
      #
      # Get the current status and progress of a data export
      #
      # @overload retrieve(data_export_id, download_url_expires_in: nil, request_options: {})
      #
      # @param data_export_id [String] The prefixed ID of the data export
      #
      # @param download_url_expires_in [Integer] Number of minutes until the download URL expires. Min `1`, max `60`, default `5`
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::DataExportRetrieveResponse]
      #
      # @see Onlyfansapi::Models::DataExportRetrieveParams
      def retrieve(data_export_id, params = {})
        parsed, options = Onlyfansapi::DataExportRetrieveParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/data-exports/%1$s", data_export_id],
          query: query,
          model: Onlyfansapi::Models::DataExportRetrieveResponse,
          options: options
        )
      end

      # Get a paginated list of data exports for the team
      #
      # @overload list(download_url_expires_in: nil, page: nil, per_page: nil, status: nil, type: nil, request_options: {})
      #
      # @param download_url_expires_in [Integer] Number of minutes until download URLs expire. Min `1`, max `60`, default `5`.
      #
      # @param page [Integer] Page number for pagination. Default `1`
      #
      # @param per_page [Integer] Number of results per page. Default `15`, max `100`
      #
      # @param status [Symbol, Onlyfansapi::Models::DataExportListParams::Status] Filter by status
      #
      # @param type [Symbol, Onlyfansapi::Models::DataExportListParams::Type] Filter by export type
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::DataExportListResponse]
      #
      # @see Onlyfansapi::Models::DataExportListParams
      def list(params = {})
        parsed, options = Onlyfansapi::DataExportListParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/data-exports",
          query: query,
          model: Onlyfansapi::Models::DataExportListResponse,
          options: options
        )
      end

      # Cancel a running data export. Only exports with status `pending` or
      # `in_progress` can be cancelled.
      #
      # @overload cancel(data_export_id, request_options: {})
      #
      # @param data_export_id [String] The prefixed ID of the data export
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::DataExportCancelResponse]
      #
      # @see Onlyfansapi::Models::DataExportCancelParams
      def cancel(data_export_id, params = {})
        @client.request(
          method: :delete,
          path: ["api/data-exports/%1$s", data_export_id],
          model: Onlyfansapi::Models::DataExportCancelResponse,
          options: params[:request_options]
        )
      end

      # Create a new data export with the same parameters as a failed export and
      # automatically start it.
      #
      # @overload retry_(data_export_id, request_options: {})
      #
      # @param data_export_id [String] The prefixed ID of the failed data export
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::DataExportRetryResponse]
      #
      # @see Onlyfansapi::Models::DataExportRetryParams
      def retry_(data_export_id, params = {})
        @client.request(
          method: :post,
          path: ["api/data-exports/%1$s/retry", data_export_id],
          model: Onlyfansapi::Models::DataExportRetryResponse,
          options: params[:request_options]
        )
      end

      # Start processing a data export that has completed credit calculation. This will
      # begin the actual export process and charge credits.
      #
      # @overload start(data_export_id, request_options: {})
      #
      # @param data_export_id [String] The prefixed ID of the data export
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::DataExportStartResponse]
      #
      # @see Onlyfansapi::Models::DataExportStartParams
      def start(data_export_id, params = {})
        @client.request(
          method: :post,
          path: ["api/data-exports/%1$s/start", data_export_id],
          model: Onlyfansapi::Models::DataExportStartResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
