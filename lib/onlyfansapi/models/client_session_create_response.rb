# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::ClientSessions#create
    class ClientSessionCreateResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::ClientSessionCreateResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::ClientSessionCreateResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::ClientSessionCreateResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::ClientSessionCreateResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::ClientSessionCreateResponse::Meta]
      #   @param data [Onlyfansapi::Models::ClientSessionCreateResponse::Data]

      # @see Onlyfansapi::Models::ClientSessionCreateResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::ClientSessionCreateResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::ClientSessionCreateResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::ClientSessionCreateResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::ClientSessionCreateResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::ClientSessionCreateResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::ClientSessionCreateResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::ClientSessionCreateResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::ClientSessionCreateResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::ClientSessionCreateResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::ClientSessionCreateResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::ClientSessionCreateResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::ClientSessionCreateResponse::Meta#_rate_limits
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

      # @see Onlyfansapi::Models::ClientSessionCreateResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute token
        #
        #   @return [String, nil]
        optional :token, String

        # @!attribute client_reference_id
        #
        #   @return [String, nil]
        optional :client_reference_id, String

        # @!attribute display_name
        #
        #   @return [String, nil]
        optional :display_name, String

        # @!method initialize(token: nil, client_reference_id: nil, display_name: nil)
        #   @param token [String]
        #   @param client_reference_id [String]
        #   @param display_name [String]
      end
    end
  end
end
