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

        # @!attribute skip_invalid
        #   Set to `true` to skip the User IDs OnlyFans refuses instead of failing the whole
        #   batch. We drop the rejected IDs and retry the remainder for you (up to 5
        #   OnlyFans attempts, each costing 1 credit), then respond `200` with `data.added`
        #   (the IDs that made it in) and `data.failed` (an object mapping each rejected
        #   User ID to the reason OnlyFans gave). Note this changes the shape of `data` —
        #   see the example responses. Failures that are not about individual users (e.g. an
        #   invalid or inaccessible list ID) still return the regular `400`.
        #
        #   @return [Boolean, nil]
        optional :skip_invalid, Onlyfans::Internal::Type::Boolean

        # @!method initialize(account:, user_list_id:, ids:, skip_invalid: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Onlyfans::Models::UserLists::UserAddParams} for more details.
        #
        #   @param account [String]
        #
        #   @param user_list_id [String]
        #
        #   @param ids [Array<String>] Array of OnlyFans User IDs to be added into the list
        #
        #   @param skip_invalid [Boolean] Set to `true` to skip the User IDs OnlyFans refuses instead of failing the whole
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
