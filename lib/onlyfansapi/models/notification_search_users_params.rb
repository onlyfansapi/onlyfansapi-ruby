# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Notifications#search_users
    class NotificationSearchUsersParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

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
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
