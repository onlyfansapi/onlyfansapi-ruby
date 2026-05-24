# frozen_string_literal: true

module Onlyfansapi
  module Models
    module UserLists
      # @see Onlyfansapi::Resources::UserLists::Users#add
      class UserAddParams < Onlyfansapi::Internal::Type::BaseModel
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

        # @!attribute ids
        #   Array of OnlyFans User IDs to be added into the list
        #
        #   @return [Array<String>]
        required :ids, Onlyfansapi::Internal::Type::ArrayOf[String]

        # @!method initialize(account:, user_list_id:, ids:, request_options: {})
        #   @param account [String]
        #
        #   @param user_list_id [String]
        #
        #   @param ids [Array<String>] Array of OnlyFans User IDs to be added into the list
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
