# frozen_string_literal: true

module Onlyfans
  module Models
    module Engagement
      module Messages
        # @see Onlyfans::Resources::Engagement::Messages::DirectMessages#list
        class DirectMessageListParams < Onlyfans::Internal::Type::BaseModel
          extend Onlyfans::Internal::Type::RequestParameters::Converter
          include Onlyfans::Internal::Type::RequestParameters

          # @!attribute account
          #
          #   @return [String]
          required :account, String

          # @!attribute end_date
          #   The latest message to retrieve. Keep empty to get all. It must be after
          #   `startDate` and is also used for pagination.
          #
          #   @return [String, nil]
          optional :end_date, String

          # @!attribute limit
          #   Number of messages to return (default = 10)
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute offset
          #   Optional offset for manual pagination.
          #
          #   @return [Integer, nil]
          optional :offset, Integer

          # @!attribute query
          #   Optionally, filter by message text.
          #
          #   @return [String, nil]
          optional :query, String

          # @!attribute start_date
          #   The earliest message to retrieve. Keep empty to get all.
          #
          #   @return [String, nil]
          optional :start_date, String

          # @!method initialize(account:, end_date: nil, limit: nil, offset: nil, query: nil, start_date: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Onlyfans::Models::Engagement::Messages::DirectMessageListParams} for more
          #   details.
          #
          #   @param account [String]
          #
          #   @param end_date [String] The latest message to retrieve. Keep empty to get all. It must be after `startDa
          #
          #   @param limit [Integer] Number of messages to return (default = 10)
          #
          #   @param offset [Integer] Optional offset for manual pagination.
          #
          #   @param query [String] Optionally, filter by message text.
          #
          #   @param start_date [String] The earliest message to retrieve. Keep empty to get all.
          #
          #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
