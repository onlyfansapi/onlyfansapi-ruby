# frozen_string_literal: true

module Onlyfans
  module Models
    module Settings
      # @see Onlyfans::Resources::Settings::BlockedCountries#retrieve
      class BlockedCountryRetrieveResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfans::Models::Settings::BlockedCountryRetrieveResponse::Meta, nil]
        optional :_meta, -> { Onlyfans::Models::Settings::BlockedCountryRetrieveResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfans::Models::Settings::BlockedCountryRetrieveResponse::Data, nil]
        optional :data, -> { Onlyfans::Models::Settings::BlockedCountryRetrieveResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfans::Models::Settings::BlockedCountryRetrieveResponse::Meta]
        #   @param data [Onlyfans::Models::Settings::BlockedCountryRetrieveResponse::Data]

        # @see Onlyfans::Models::Settings::BlockedCountryRetrieveResponse#_meta
        class Meta < Onlyfans::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfans::Models::Settings::BlockedCountryRetrieveResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfans::Models::Settings::BlockedCountryRetrieveResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfans::Models::Settings::BlockedCountryRetrieveResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfans::Models::Settings::BlockedCountryRetrieveResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfans::Models::Settings::BlockedCountryRetrieveResponse::Meta::RateLimits, nil]
          optional :_rate_limits,
                   -> { Onlyfans::Models::Settings::BlockedCountryRetrieveResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfans::Models::Settings::BlockedCountryRetrieveResponse::Meta::Cache]
          #   @param _credits [Onlyfans::Models::Settings::BlockedCountryRetrieveResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfans::Models::Settings::BlockedCountryRetrieveResponse::Meta::RateLimits]

          # @see Onlyfans::Models::Settings::BlockedCountryRetrieveResponse::Meta#_cache
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

          # @see Onlyfans::Models::Settings::BlockedCountryRetrieveResponse::Meta#_credits
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

          # @see Onlyfans::Models::Settings::BlockedCountryRetrieveResponse::Meta#_rate_limits
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

        # @see Onlyfans::Models::Settings::BlockedCountryRetrieveResponse#data
        class Data < Onlyfans::Internal::Type::BaseModel
          # @!attribute blocked_countries
          #
          #   @return [Array<String>, nil]
          optional :blocked_countries, Onlyfans::Internal::Type::ArrayOf[String], api_name: :blockedCountries

          # @!method initialize(blocked_countries: nil)
          #   @param blocked_countries [Array<String>]
        end
      end
    end
  end
end
