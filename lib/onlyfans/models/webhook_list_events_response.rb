# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Webhooks#list_events
    class WebhookListEventsResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::WebhookListEventsResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::WebhookListEventsResponse::Meta }

      # @!attribute data
      #
      #   @return [Array<Onlyfans::Models::WebhookListEventsResponse::Data>, nil]
      optional :data,
               -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::WebhookListEventsResponse::Data] }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::WebhookListEventsResponse::Meta]
      #   @param data [Array<Onlyfans::Models::WebhookListEventsResponse::Data>]

      # @see Onlyfans::Models::WebhookListEventsResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::WebhookListEventsResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::WebhookListEventsResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::WebhookListEventsResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::WebhookListEventsResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::WebhookListEventsResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::WebhookListEventsResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::WebhookListEventsResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::WebhookListEventsResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::WebhookListEventsResponse::Meta::RateLimits]

        # @see Onlyfans::Models::WebhookListEventsResponse::Meta#_cache
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

        # @see Onlyfans::Models::WebhookListEventsResponse::Meta#_credits
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

        # @see Onlyfans::Models::WebhookListEventsResponse::Meta#_rate_limits
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
        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute value
        #
        #   @return [String, nil]
        optional :value, String

        # @!method initialize(description: nil, value: nil)
        #   @param description [String]
        #   @param value [String]
      end
    end
  end
end
