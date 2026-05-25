# frozen_string_literal: true

module Onlyfans
  module Models
    module Users
      # @see Onlyfans::Resources::Users::Restrict#create
      class RestrictCreateParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

        # @!method initialize(account:, user_id:, request_options: {})
        #   @param account [String]
        #   @param user_id [String]
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
