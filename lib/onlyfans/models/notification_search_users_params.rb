# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Notifications#search_users
    class NotificationSearchUsersParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute query
      #   The query to search for. Can be either a name or username.
      #
      #   @return [String]
      required :query, String

      # @!method initialize(account:, query:, request_options: {})
      #   @param account [String]
      #
      #   @param query [String] The query to search for. Can be either a name or username.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
