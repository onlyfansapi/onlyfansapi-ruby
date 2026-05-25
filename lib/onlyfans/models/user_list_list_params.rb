# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::UserLists#list
    class UserListListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute limit
      #   How many results to return in the request. Max. 50 user lists. Must be at
      #   least 10. Must not be greater than 50.
      #
      #   @return [Integer, nil]
      optional :limit, Integer, nil?: true

      # @!attribute offset
      #   Must be at least 0.
      #
      #   @return [Integer, nil]
      optional :offset, Integer, nil?: true

      # @!method initialize(account:, limit: nil, offset: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::UserListListParams} for more details.
      #
      #   @param account [String]
      #
      #   @param limit [Integer, nil] How many results to return in the request. Max. 50 user lists. Must be at least
      #
      #   @param offset [Integer, nil] Must be at least 0.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
