# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::SmartLinks#retrieve
    class SmartLinkRetrieveResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::SmartLinkRetrieveResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::SmartLinkRetrieveResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::SmartLinkRetrieveResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::SmartLinkRetrieveResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::SmartLinkRetrieveResponse::Meta]
      #   @param data [Onlyfans::Models::SmartLinkRetrieveResponse::Data]

      # @see Onlyfans::Models::SmartLinkRetrieveResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::SmartLinkRetrieveResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::SmartLinkRetrieveResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::SmartLinkRetrieveResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::SmartLinkRetrieveResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::SmartLinkRetrieveResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::SmartLinkRetrieveResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::SmartLinkRetrieveResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::SmartLinkRetrieveResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::SmartLinkRetrieveResponse::Meta::RateLimits]

        # @see Onlyfans::Models::SmartLinkRetrieveResponse::Meta#_cache
        class Cache < Onlyfans::Internal::Type::BaseModel
          # @!attribute is_cached
          #
          #   @return [Boolean, nil]
          optional :is_cached, Onlyfans::Internal::Type::Boolean

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!method initialize(is_cached: nil, note: nil)
          #   @param is_cached [Boolean]
          #   @param note [String]
        end

        # @see Onlyfans::Models::SmartLinkRetrieveResponse::Meta#_credits
        class Credits < Onlyfans::Internal::Type::BaseModel
          # @!attribute balance
          #
          #   @return [Integer, nil]
          optional :balance, Integer

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!attribute used
          #
          #   @return [Integer, nil]
          optional :used, Integer

          # @!method initialize(balance: nil, note: nil, used: nil)
          #   @param balance [Integer]
          #   @param note [String]
          #   @param used [Integer]
        end

        # @see Onlyfans::Models::SmartLinkRetrieveResponse::Meta#_rate_limits
        class RateLimits < Onlyfans::Internal::Type::BaseModel
          # @!attribute limit_day
          #
          #   @return [Integer, nil]
          optional :limit_day, Integer

          # @!attribute limit_minute
          #
          #   @return [Integer, nil]
          optional :limit_minute, Integer

          # @!attribute remaining_day
          #
          #   @return [Integer, nil]
          optional :remaining_day, Integer

          # @!attribute remaining_minute
          #
          #   @return [Integer, nil]
          optional :remaining_minute, Integer

          # @!method initialize(limit_day: nil, limit_minute: nil, remaining_day: nil, remaining_minute: nil)
          #   @param limit_day [Integer]
          #   @param limit_minute [Integer]
          #   @param remaining_day [Integer]
          #   @param remaining_minute [Integer]
        end
      end

      # @see Onlyfans::Models::SmartLinkRetrieveResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute account
        #
        #   @return [Onlyfans::Models::SmartLinkRetrieveResponse::Data::Account, nil]
        optional :account, -> { Onlyfans::Models::SmartLinkRetrieveResponse::Data::Account }

        # @!attribute clicks_count
        #
        #   @return [Integer, nil]
        optional :clicks_count, Integer

        # @!attribute conversions_count
        #
        #   @return [Integer, nil]
        optional :conversions_count, Integer

        # @!attribute cost
        #
        #   @return [Onlyfans::Models::SmartLinkRetrieveResponse::Data::Cost, nil]
        optional :cost, -> { Onlyfans::Models::SmartLinkRetrieveResponse::Data::Cost }

        # @!attribute created_at
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute free_trial_days
        #
        #   @return [Integer, nil]
        optional :free_trial_days, Integer

        # @!attribute link_type
        #
        #   @return [String, nil]
        optional :link_type, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute revenue
        #
        #   @return [String, nil]
        optional :revenue, String

        # @!attribute subscribers_count
        #
        #   @return [Integer, nil]
        optional :subscribers_count, Integer

        # @!attribute traffic_redirect_url
        #
        #   @return [String, nil]
        optional :traffic_redirect_url, String

        # @!attribute updated_at
        #
        #   @return [String, nil]
        optional :updated_at, String

        # @!method initialize(id: nil, account: nil, clicks_count: nil, conversions_count: nil, cost: nil, created_at: nil, free_trial_days: nil, link_type: nil, name: nil, revenue: nil, subscribers_count: nil, traffic_redirect_url: nil, updated_at: nil)
        #   @param id [String]
        #   @param account [Onlyfans::Models::SmartLinkRetrieveResponse::Data::Account]
        #   @param clicks_count [Integer]
        #   @param conversions_count [Integer]
        #   @param cost [Onlyfans::Models::SmartLinkRetrieveResponse::Data::Cost]
        #   @param created_at [String]
        #   @param free_trial_days [Integer]
        #   @param link_type [String]
        #   @param name [String]
        #   @param revenue [String]
        #   @param subscribers_count [Integer]
        #   @param traffic_redirect_url [String]
        #   @param updated_at [String]

        # @see Onlyfans::Models::SmartLinkRetrieveResponse::Data#account
        class Account < Onlyfans::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute display_name
          #
          #   @return [String, nil]
          optional :display_name, String

          # @!attribute username
          #
          #   @return [String, nil]
          optional :username, String

          # @!method initialize(id: nil, display_name: nil, username: nil)
          #   @param id [String]
          #   @param display_name [String]
          #   @param username [String]
        end

        # @see Onlyfans::Models::SmartLinkRetrieveResponse::Data#cost
        class Cost < Onlyfans::Internal::Type::BaseModel
          # @!attribute click_source_count
          #
          #   @return [Integer, nil]
          optional :click_source_count, Integer, api_name: :clickSourceCount

          # @!attribute input_mode
          #
          #   @return [String, nil]
          optional :input_mode, String, api_name: :inputMode, nil?: true

          # @!attribute input_value
          #
          #   @return [String, nil]
          optional :input_value, String, api_name: :inputValue, nil?: true

          # @!attribute per_click
          #
          #   @return [String, nil]
          optional :per_click, String, api_name: :perClick, nil?: true

          # @!attribute per_promo
          #
          #   @return [String, nil]
          optional :per_promo, String, api_name: :perPromo, nil?: true

          # @!attribute per_sub
          #
          #   @return [String, nil]
          optional :per_sub, String, api_name: :perSub, nil?: true

          # @!attribute subscriber_source_count
          #
          #   @return [Integer, nil]
          optional :subscriber_source_count, Integer, api_name: :subscriberSourceCount

          # @!method initialize(click_source_count: nil, input_mode: nil, input_value: nil, per_click: nil, per_promo: nil, per_sub: nil, subscriber_source_count: nil)
          #   @param click_source_count [Integer]
          #   @param input_mode [String, nil]
          #   @param input_value [String, nil]
          #   @param per_click [String, nil]
          #   @param per_promo [String, nil]
          #   @param per_sub [String, nil]
          #   @param subscriber_source_count [Integer]
        end
      end
    end
  end
end
