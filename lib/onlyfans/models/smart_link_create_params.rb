# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::SmartLinks#create
    class SmartLinkCreateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The prefixed ID of the account to create the Smart Link for
      #
      #   @return [String]
      required :account_id, String

      # @!attribute link_type
      #   The type of Smart Link to create
      #
      #   @return [Symbol, Onlyfans::Models::SmartLinkCreateParams::LinkType]
      required :link_type, enum: -> { Onlyfans::SmartLinkCreateParams::LinkType }

      # @!attribute name
      #   The name of the Smart Link
      #
      #   @return [String]
      required :name, String

      # @!attribute free_trial_days
      #   The number of free trial days (required if `link_type` is `free_trial`). Must be
      #   between 1 and 360.
      #
      #   @return [Integer, nil]
      optional :free_trial_days, Integer

      # @!method initialize(account_id:, link_type:, name:, free_trial_days: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::SmartLinkCreateParams} for more details.
      #
      #   @param account_id [String] The prefixed ID of the account to create the Smart Link for
      #
      #   @param link_type [Symbol, Onlyfans::Models::SmartLinkCreateParams::LinkType] The type of Smart Link to create
      #
      #   @param name [String] The name of the Smart Link
      #
      #   @param free_trial_days [Integer] The number of free trial days (required if `link_type` is `free_trial`). Must be
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # The type of Smart Link to create
      module LinkType
        extend Onlyfans::Internal::Type::Enum

        FREE_TRIAL = :free_trial
        TRACKING_LINK = :tracking_link

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
