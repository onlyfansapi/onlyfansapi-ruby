# frozen_string_literal: true

module Onlyfans
  module Resources
    # APIs for managing data exports
    class DataExports
      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::DataExportRetrieveParams} for more details.
      #
      # Get the current status and progress of a data export
      #
      # @overload retrieve(data_export_id, download_url_expires_in: nil, request_options: {})
      #
      # @param data_export_id [String] The prefixed ID of the data export
      #
      # @param download_url_expires_in [Integer] Number of minutes until the download URL expires. Min `1`, max `60`, default `5`
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::DataExportRetrieveResponse]
      #
      # @see Onlyfans::Models::DataExportRetrieveParams
      def retrieve(data_export_id, params = {})
        parsed, options = Onlyfans::DataExportRetrieveParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/data-exports/%1$s", data_export_id],
          query: query,
          model: Onlyfans::Models::DataExportRetrieveResponse,
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
      # @param status [Symbol, Onlyfans::Models::DataExportListParams::Status] Filter by status
      #
      # @param type [Symbol, Onlyfans::Models::DataExportListParams::Type] Filter by export type
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::DataExportListResponse]
      #
      # @see Onlyfans::Models::DataExportListParams
      def list(params = {})
        parsed, options = Onlyfans::DataExportListParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/data-exports",
          query: query,
          model: Onlyfans::Models::DataExportListResponse,
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
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::DataExportCancelResponse]
      #
      # @see Onlyfans::Models::DataExportCancelParams
      def cancel(data_export_id, params = {})
        @client.request(
          method: :delete,
          path: ["api/data-exports/%1$s", data_export_id],
          model: Onlyfans::Models::DataExportCancelResponse,
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
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::DataExportRetryResponse]
      #
      # @see Onlyfans::Models::DataExportRetryParams
      def retry_(data_export_id, params = {})
        @client.request(
          method: :post,
          path: ["api/data-exports/%1$s/retry", data_export_id],
          model: Onlyfans::Models::DataExportRetryResponse,
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
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::DataExportStartResponse]
      #
      # @see Onlyfans::Models::DataExportStartParams
      def start(data_export_id, params = {})
        @client.request(
          method: :post,
          path: ["api/data-exports/%1$s/start", data_export_id],
          model: Onlyfans::Models::DataExportStartResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
