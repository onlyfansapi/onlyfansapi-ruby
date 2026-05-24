# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Fans#list_latest
    class FanListLatestParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute end_date
      #   End date for filtering (required with start_date)
      #
      #   @return [String, nil]
      optional :end_date, String, nil?: true

      # @!attribute limit
      #   Number of fans to return (1-50)
      #
      #   @return [String, nil]
      optional :limit, String, nil?: true

      # @!attribute offset
      #   Number of fans to skip
      #
      #   @return [String, nil]
      optional :offset, String, nil?: true

      # @!attribute start_date
      #   Start date for filtering (required with end_date)
      #
      #   @return [String, nil]
      optional :start_date, String, nil?: true

      # @!attribute type
      #   Filter by type: total, renew, or new
      #
      #   @return [String, nil]
      optional :type, String, nil?: true

      # @!method initialize(account:, end_date: nil, limit: nil, offset: nil, start_date: nil, type: nil, request_options: {})
      #   @param account [String]
      #
      #   @param end_date [String, nil] End date for filtering (required with start_date)
      #
      #   @param limit [String, nil] Number of fans to return (1-50)
      #
      #   @param offset [String, nil] Number of fans to skip
      #
      #   @param start_date [String, nil] Start date for filtering (required with end_date)
      #
      #   @param type [String, nil] Filter by type: total, renew, or new
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
