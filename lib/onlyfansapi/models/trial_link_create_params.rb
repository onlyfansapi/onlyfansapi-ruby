# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::TrialLinks#create
    class TrialLinkCreateParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute duration
      #   The duration of the free trial **in days**. Must be **1**, **3**, **7**, **14**,
      #   **30** (1 month), **90** (3 months), **180** (6 months), or **360** (12 months).
      #
      #   @return [Integer, Onlyfansapi::Models::TrialLinkCreateParams::Duration]
      required :duration, enum: -> { Onlyfansapi::TrialLinkCreateParams::Duration }

      # @!attribute offer_expiration
      #   The trial link expiration **in days (from now)**. Must either be **0** (to never
      #   expire), or a number between **1** and **30**.
      #
      #   @return [Integer]
      required :offer_expiration, Integer, api_name: :offerExpiration

      # @!attribute offer_limit
      #   How many people can use this offer. Must either be **0** (for no limit), or a
      #   number between **1**-**10**, **50**, or **100**.
      #
      #   @return [Integer, Onlyfansapi::Models::TrialLinkCreateParams::OfferLimit]
      required :offer_limit,
               enum: -> {
                 Onlyfansapi::TrialLinkCreateParams::OfferLimit
               },
               api_name: :offerLimit

      # @!attribute name
      #   The name of the trail link (optional). Cannot be longer than 64 characters.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute tags
      #   Array of tag names to add to the trial link.
      #
      #   @return [Array<String>, nil]
      optional :tags, Onlyfansapi::Internal::Type::ArrayOf[String]

      # @!method initialize(account:, duration:, offer_expiration:, offer_limit:, name: nil, tags: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::TrialLinkCreateParams} for more details.
      #
      #   @param account [String]
      #
      #   @param duration [Integer, Onlyfansapi::Models::TrialLinkCreateParams::Duration] The duration of the free trial **in days**. Must be **1**, **3**, **7**, **14**,
      #
      #   @param offer_expiration [Integer] The trial link expiration **in days (from now)**. Must either be **0** (to never
      #
      #   @param offer_limit [Integer, Onlyfansapi::Models::TrialLinkCreateParams::OfferLimit] How many people can use this offer. Must either be **0** (for no limit), or a nu
      #
      #   @param name [String, nil] The name of the trail link (optional). Cannot be longer than 64 characters.
      #
      #   @param tags [Array<String>] Array of tag names to add to the trial link.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # The duration of the free trial **in days**. Must be **1**, **3**, **7**, **14**,
      # **30** (1 month), **90** (3 months), **180** (6 months), or **360** (12 months).
      module Duration
        extend Onlyfansapi::Internal::Type::Enum

        DURATION_1 = 1
        DURATION_3 = 3
        DURATION_7 = 7
        DURATION_14 = 14
        DURATION_30 = 30
        DURATION_90 = 90
        DURATION_180 = 180
        DURATION_360 = 360

        # @!method self.values
        #   @return [Array<Integer>]
      end

      # How many people can use this offer. Must either be **0** (for no limit), or a
      # number between **1**-**10**, **50**, or **100**.
      module OfferLimit
        extend Onlyfansapi::Internal::Type::Enum

        OFFER_LIMIT_0 = 0
        OFFER_LIMIT_1 = 1
        OFFER_LIMIT_2 = 2
        OFFER_LIMIT_3 = 3
        OFFER_LIMIT_4 = 4
        OFFER_LIMIT_5 = 5
        OFFER_LIMIT_6 = 6
        OFFER_LIMIT_7 = 7
        OFFER_LIMIT_8 = 8
        OFFER_LIMIT_9 = 9
        OFFER_LIMIT_10 = 10
        OFFER_LIMIT_50 = 50
        OFFER_LIMIT_100 = 100

        # @!method self.values
        #   @return [Array<Integer>]
      end
    end
  end
end
