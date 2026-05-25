# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::TrackingLinks#create
    class TrackingLinkCreateResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::TrackingLinkCreateResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::TrackingLinkCreateResponse::Meta }

      # @!attribute data
      #
      #   @return [Array<Onlyfans::Models::TrackingLinkCreateResponse::Data>, nil]
      optional :data,
               -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::TrackingLinkCreateResponse::Data] }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::TrackingLinkCreateResponse::Meta]
      #   @param data [Array<Onlyfans::Models::TrackingLinkCreateResponse::Data>]

      # @see Onlyfans::Models::TrackingLinkCreateResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::TrackingLinkCreateResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::TrackingLinkCreateResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::TrackingLinkCreateResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::TrackingLinkCreateResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::TrackingLinkCreateResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::TrackingLinkCreateResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::TrackingLinkCreateResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::TrackingLinkCreateResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::TrackingLinkCreateResponse::Meta::RateLimits]

        # @see Onlyfans::Models::TrackingLinkCreateResponse::Meta#_cache
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

        # @see Onlyfans::Models::TrackingLinkCreateResponse::Meta#_credits
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

        # @see Onlyfans::Models::TrackingLinkCreateResponse::Meta#_rate_limits
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

      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute campaign_code
        #
        #   @return [Integer, nil]
        optional :campaign_code, Integer, api_name: :campaignCode

        # @!attribute campaign_name
        #
        #   @return [String, nil]
        optional :campaign_name, String, api_name: :campaignName

        # @!attribute count_subscribers
        #
        #   @return [Integer, nil]
        optional :count_subscribers, Integer, api_name: :countSubscribers

        # @!attribute count_transitions
        #
        #   @return [Integer, nil]
        optional :count_transitions, Integer, api_name: :countTransitions

        # @!attribute created_at
        #
        #   @return [String, nil]
        optional :created_at, String, api_name: :createdAt

        # @!attribute end_date
        #
        #   @return [String, nil]
        optional :end_date, String, api_name: :endDate, nil?: true

        # @!method initialize(id: nil, campaign_code: nil, campaign_name: nil, count_subscribers: nil, count_transitions: nil, created_at: nil, end_date: nil)
        #   @param id [Integer]
        #   @param campaign_code [Integer]
        #   @param campaign_name [String]
        #   @param count_subscribers [Integer]
        #   @param count_transitions [Integer]
        #   @param created_at [String]
        #   @param end_date [String, nil]
      end
    end
  end
end
