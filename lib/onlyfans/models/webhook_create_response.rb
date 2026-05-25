# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Webhooks#create
    class WebhookCreateResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::WebhookCreateResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::WebhookCreateResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::WebhookCreateResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::WebhookCreateResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::WebhookCreateResponse::Meta]
      #   @param data [Onlyfans::Models::WebhookCreateResponse::Data]

      # @see Onlyfans::Models::WebhookCreateResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::WebhookCreateResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::WebhookCreateResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::WebhookCreateResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::WebhookCreateResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::WebhookCreateResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::WebhookCreateResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::WebhookCreateResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::WebhookCreateResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::WebhookCreateResponse::Meta::RateLimits]

        # @see Onlyfans::Models::WebhookCreateResponse::Meta#_cache
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

        # @see Onlyfans::Models::WebhookCreateResponse::Meta#_credits
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

        # @see Onlyfans::Models::WebhookCreateResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::WebhookCreateResponse#data
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
