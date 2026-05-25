# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::DataExports#retrieve
    class DataExportRetrieveParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute data_export_id
      #
      #   @return [String]
      required :data_export_id, String

      # @!attribute download_url_expires_in
      #   Number of minutes until the download URL expires. Min `1`, max `60`, default
      #   `5`.
      #
      #   @return [Integer, nil]
      optional :download_url_expires_in, Integer

      # @!method initialize(data_export_id:, download_url_expires_in: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::DataExportRetrieveParams} for more details.
      #
      #   @param data_export_id [String]
      #
      #   @param download_url_expires_in [Integer] Number of minutes until the download URL expires. Min `1`, max `60`, default `5`
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
