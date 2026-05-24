# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Webhooks#update
    class WebhookUpdateResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::WebhookUpdateResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::WebhookUpdateResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::WebhookUpdateResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::WebhookUpdateResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::WebhookUpdateResponse::Meta]
      #   @param data [Onlyfansapi::Models::WebhookUpdateResponse::Data]

      # @see Onlyfansapi::Models::WebhookUpdateResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::WebhookUpdateResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::WebhookUpdateResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::WebhookUpdateResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::WebhookUpdateResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::WebhookUpdateResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::WebhookUpdateResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::WebhookUpdateResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::WebhookUpdateResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::WebhookUpdateResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::WebhookUpdateResponse::Meta#_cache
        class Cache < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute is_cached
          #
          #   @return [Boolean, nil]
          optional :is_cached, Onlyfansapi::Internal::Type::Boolean

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!method initialize(is_cached: nil, note: nil)
          #   @param is_cached [Boolean]
          #   @param note [String]
        end

        # @see Onlyfansapi::Models::WebhookUpdateResponse::Meta#_credits
        class Credits < Onlyfansapi::Internal::Type::BaseModel
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

        # @see Onlyfansapi::Models::WebhookUpdateResponse::Meta#_rate_limits
        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
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

      # @see Onlyfansapi::Models::WebhookUpdateResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
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
        optional :enabled, Onlyfansapi::Internal::Type::Boolean

        # @!attribute events
        #
        #   @return [Array<String>, nil]
        optional :events, Onlyfansapi::Internal::Type::ArrayOf[String]

        # @!attribute has_signing_secret
        #
        #   @return [Boolean, nil]
        optional :has_signing_secret, Onlyfansapi::Internal::Type::Boolean

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
