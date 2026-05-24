# frozen_string_literal: true

module Onlyfansapi
  module Models
    module UserLists
      # @see Onlyfansapi::Resources::UserLists::Users#list
      class UserListParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute user_list_id
        #
        #   @return [String]
        required :user_list_id, String

        # @!attribute limit
        #   Number of users to return (1 - 100). Default = 10
        #
        #   @return [String, nil]
        optional :limit, String

        # @!attribute offset
        #   Number of users to skip for pagination
        #
        #   @return [String, nil]
        optional :offset, String

        # @!method initialize(account:, user_list_id:, limit: nil, offset: nil, request_options: {})
        #   @param account [String]
        #
        #   @param user_list_id [String]
        #
        #   @param limit [String] Number of users to return (1 - 100). Default = 10
        #
        #   @param offset [String] Number of users to skip for pagination
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
