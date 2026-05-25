# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Notifications#get_counts
    class NotificationGetCountsResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::NotificationGetCountsResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::NotificationGetCountsResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::NotificationGetCountsResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::NotificationGetCountsResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::NotificationGetCountsResponse::Meta]
      #   @param data [Onlyfans::Models::NotificationGetCountsResponse::Data]

      # @see Onlyfans::Models::NotificationGetCountsResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::NotificationGetCountsResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::NotificationGetCountsResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::NotificationGetCountsResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::NotificationGetCountsResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::NotificationGetCountsResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::NotificationGetCountsResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::NotificationGetCountsResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::NotificationGetCountsResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::NotificationGetCountsResponse::Meta::RateLimits]

        # @see Onlyfans::Models::NotificationGetCountsResponse::Meta#_cache
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

        # @see Onlyfans::Models::NotificationGetCountsResponse::Meta#_credits
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

        # @see Onlyfans::Models::NotificationGetCountsResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::NotificationGetCountsResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute all
        #
        #   @return [Integer, nil]
        optional :all, Integer

        # @!attribute commented
        #
        #   @return [Integer, nil]
        optional :commented, Integer

        # @!attribute deactivated_media
        #
        #   @return [Integer, nil]
        optional :deactivated_media, Integer

        # @!attribute favorited
        #
        #   @return [Integer, nil]
        optional :favorited, Integer

        # @!attribute mentioned
        #
        #   @return [Integer, nil]
        optional :mentioned, Integer

        # @!attribute message
        #
        #   @return [Integer, nil]
        optional :message, Integer

        # @!attribute purchases
        #
        #   @return [Integer, nil]
        optional :purchases, Integer

        # @!attribute subscribed
        #
        #   @return [Integer, nil]
        optional :subscribed, Integer

        # @!attribute system_
        #
        #   @return [Integer, nil]
        optional :system_, Integer, api_name: :system

        # @!attribute tags
        #
        #   @return [Integer, nil]
        optional :tags, Integer

        # @!attribute tip
        #
        #   @return [Integer, nil]
        optional :tip, Integer

        # @!method initialize(all: nil, commented: nil, deactivated_media: nil, favorited: nil, mentioned: nil, message: nil, purchases: nil, subscribed: nil, system_: nil, tags: nil, tip: nil)
        #   @param all [Integer]
        #   @param commented [Integer]
        #   @param deactivated_media [Integer]
        #   @param favorited [Integer]
        #   @param mentioned [Integer]
        #   @param message [Integer]
        #   @param purchases [Integer]
        #   @param subscribed [Integer]
        #   @param system_ [Integer]
        #   @param tags [Integer]
        #   @param tip [Integer]
      end
    end
  end
end
