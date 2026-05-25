# frozen_string_literal: true

module Onlyfans
  module Models
    module UserLists
      # @see Onlyfans::Resources::UserLists::Users#clear
      class UserClearParams < Onlyfans::Internal::Type::BaseModel
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

        # @!method initialize(account:, user_list_id:, request_options: {})
        #   @param account [String]
        #   @param user_list_id [String]
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
