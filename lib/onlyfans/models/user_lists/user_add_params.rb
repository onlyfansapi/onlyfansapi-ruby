# frozen_string_literal: true

module Onlyfans
  module Models
    module UserLists
      # @see Onlyfans::Resources::UserLists::Users#add
      class UserAddParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

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
        required :ids, Onlyfans::Internal::Type::ArrayOf[String]

        # @!method initialize(account:, user_list_id:, ids:, request_options: {})
        #   @param account [String]
        #
        #   @param user_list_id [String]
        #
        #   @param ids [Array<String>] Array of OnlyFans User IDs to be added into the list
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
