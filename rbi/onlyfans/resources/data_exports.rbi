# typed: strong

module Onlyfans
  module Resources
    # APIs for managing data exports
    class DataExports
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
