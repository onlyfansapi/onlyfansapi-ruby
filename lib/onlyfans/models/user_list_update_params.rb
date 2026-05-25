# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::UserLists#update
    class UserListUpdateParams < Onlyfans::Internal::Type::BaseModel
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

      # @!attribute name
      #   The new name for the User List.
      #
      #   @return [String]
      required :name, String

      # @!attribute is_pinned_to_feed
      #   Whether to pin the User List to feed to the OnlyFans homepage or not.
      #
      #   @return [Boolean, nil]
      optional :is_pinned_to_feed, Onlyfans::Internal::Type::Boolean, api_name: :isPinnedToFeed, nil?: true

      # @!method initialize(account:, user_list_id:, name:, is_pinned_to_feed: nil, request_options: {})
      #   @param account [String]
      #
      #   @param user_list_id [String]
      #
      #   @param name [String] The new name for the User List.
      #
      #   @param is_pinned_to_feed [Boolean, nil] Whether to pin the User List to feed to the OnlyFans homepage or not.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
