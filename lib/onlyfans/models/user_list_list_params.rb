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

      # @!attribute view
      #   How to return the results. `queue` returns the user lists that are available for
      #   Mass-Messaging.
      #
      #   @return [Symbol, Onlyfans::Models::UserListListParams::View, nil]
      optional :view, enum: -> { Onlyfans::UserListListParams::View }

      # @!method initialize(account:, limit: nil, offset: nil, view: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::UserListListParams} for more details.
      #
      #   @param account [String]
      #
      #   @param limit [Integer, nil] How many results to return in the request. Max. 50 user lists. Must be at least
      #
      #   @param offset [Integer, nil] Must be at least 0.
      #
      #   @param view [Symbol, Onlyfans::Models::UserListListParams::View] How to return the results. `queue` returns the user lists that are available for
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # How to return the results. `queue` returns the user lists that are available for
      # Mass-Messaging.
      module View
        extend Onlyfans::Internal::Type::Enum

        QUEUE = :queue

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
