# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::MassMessaging#retrieve_overview
    class MassMessagingRetrieveOverviewParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute end_date
      #   The latest mass message to retrieve. Keep empty to get all. It must be after
      #   `startDate` and is also used for pagination.
      #
      #   @return [String, nil]
      optional :end_date, String

      # @!attribute limit
      #   Number of mass messages to return (default = 10)
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute query
      #   Optionally, find a mass message by the message text.
      #
      #   @return [String, nil]
      optional :query, String

      # @!attribute start_date
      #   The earliest mass message to retrieve. Keep empty to get all.
      #
      #   @return [String, nil]
      optional :start_date, String

      # @!method initialize(account:, end_date: nil, limit: nil, query: nil, start_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::MassMessagingRetrieveOverviewParams} for more details.
      #
      #   @param account [String]
      #
      #   @param end_date [String] The latest mass message to retrieve. Keep empty to get all. It must be after `st
      #
      #   @param limit [Integer] Number of mass messages to return (default = 10)
      #
      #   @param query [String] Optionally, find a mass message by the message text.
      #
      #   @param start_date [String] The earliest mass message to retrieve. Keep empty to get all.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
