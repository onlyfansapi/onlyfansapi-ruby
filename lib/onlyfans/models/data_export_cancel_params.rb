# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::DataExports#cancel
    class DataExportCancelParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute data_export_id
      #
      #   @return [String]
      required :data_export_id, String

      # @!method initialize(data_export_id:, request_options: {})
      #   @param data_export_id [String]
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
