# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Webhooks#list
    class WebhookListResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::WebhookListResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::WebhookListResponse::Meta }

      # @!attribute data
      #
      #   @return [Array<Onlyfans::Models::WebhookListResponse::Data>, nil]
      optional :data, -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::WebhookListResponse::Data] }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::WebhookListResponse::Meta]
      #   @param data [Array<Onlyfans::Models::WebhookListResponse::Data>]

      # @see Onlyfans::Models::WebhookListResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::WebhookListResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::WebhookListResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::WebhookListResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::WebhookListResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::WebhookListResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::WebhookListResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::WebhookListResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::WebhookListResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::WebhookListResponse::Meta::RateLimits]

        # @see Onlyfans::Models::WebhookListResponse::Meta#_cache
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

        # @see Onlyfans::Models::WebhookListResponse::Meta#_credits
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

        # @see Onlyfans::Models::WebhookListResponse::Meta#_rate_limits
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
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute enabled
        #
        #   @return [Boolean, nil]
        optional :enabled, Onlyfans::Internal::Type::Boolean

        # @!attribute events
        #
        #   @return [Array<String>, nil]
        optional :events, Onlyfans::Internal::Type::ArrayOf[String]

        # @!attribute has_signing_secret
        #
        #   @return [Boolean, nil]
        optional :has_signing_secret, Onlyfans::Internal::Type::Boolean

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(id: nil, created_at: nil, enabled: nil, events: nil, has_signing_secret: nil, url: nil)
        #   @param id [String]
        #   @param created_at [String]
        #   @param enabled [Boolean]
        #   @param events [Array<String>]
        #   @param has_signing_secret [Boolean]
        #   @param url [String]
      end
    end
  end
end
