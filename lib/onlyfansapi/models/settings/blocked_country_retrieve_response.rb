# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Settings
      # @see Onlyfansapi::Resources::Settings::BlockedCountries#retrieve
      class BlockedCountryRetrieveResponse < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse::Meta, nil]
        optional :_meta, -> { Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse::Data, nil]
        optional :data, -> { Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse::Meta]
        #   @param data [Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse::Data]

        # @see Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse#_meta
        class Meta < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse::Meta::RateLimits, nil]
          optional :_rate_limits,
                   -> { Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse::Meta::Cache]
          #   @param _credits [Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse::Meta::RateLimits]

          # @see Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse::Meta#_cache
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

          # @see Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse::Meta#_credits
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

          # @see Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse::Meta#_rate_limits
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

        # @see Onlyfansapi::Models::Settings::BlockedCountryRetrieveResponse#data
        class Data < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute blocked_countries
          #
          #   @return [Array<String>, nil]
          optional :blocked_countries,
                   Onlyfansapi::Internal::Type::ArrayOf[String],
                   api_name: :blockedCountries

          # @!method initialize(blocked_countries: nil)
          #   @param blocked_countries [Array<String>]
        end
      end
    end
  end
end
