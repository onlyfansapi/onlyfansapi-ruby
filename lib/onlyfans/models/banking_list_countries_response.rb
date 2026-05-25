# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Banking#list_countries
    class BankingListCountriesResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::BankingListCountriesResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::BankingListCountriesResponse::Meta }

      # @!attribute data
      #
      #   @return [Array<Onlyfans::Models::BankingListCountriesResponse::Data>, nil]
      optional :data,
               -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::BankingListCountriesResponse::Data] }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::BankingListCountriesResponse::Meta]
      #   @param data [Array<Onlyfans::Models::BankingListCountriesResponse::Data>]

      # @see Onlyfans::Models::BankingListCountriesResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::BankingListCountriesResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::BankingListCountriesResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::BankingListCountriesResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::BankingListCountriesResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::BankingListCountriesResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::BankingListCountriesResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::BankingListCountriesResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::BankingListCountriesResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::BankingListCountriesResponse::Meta::RateLimits]

        # @see Onlyfans::Models::BankingListCountriesResponse::Meta#_cache
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

        # @see Onlyfans::Models::BankingListCountriesResponse::Meta#_credits
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

        # @see Onlyfans::Models::BankingListCountriesResponse::Meta#_rate_limits
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

        # @!attribute can_has_w9_form
        #
        #   @return [Boolean, nil]
        optional :can_has_w9_form, Onlyfans::Internal::Type::Boolean, api_name: :canHasW9Form

        # @!attribute can_pay
        #
        #   @return [Boolean, nil]
        optional :can_pay, Onlyfans::Internal::Type::Boolean, api_name: :canPay

        # @!attribute code
        #
        #   @return [String, nil]
        optional :code, String

        # @!attribute has_states
        #
        #   @return [Boolean, nil]
        optional :has_states, Onlyfans::Internal::Type::Boolean, api_name: :hasStates

        # @!attribute has_zip
        #
        #   @return [Boolean, nil]
        optional :has_zip, Onlyfans::Internal::Type::Boolean, api_name: :hasZip

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id: nil, can_has_w9_form: nil, can_pay: nil, code: nil, has_states: nil, has_zip: nil, name: nil)
        #   @param id [Integer]
        #   @param can_has_w9_form [Boolean]
        #   @param can_pay [Boolean]
        #   @param code [String]
        #   @param has_states [Boolean]
        #   @param has_zip [Boolean]
        #   @param name [String]
      end
    end
  end
end
