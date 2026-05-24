# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Banking
      # @see Onlyfansapi::Resources::Banking::Details#retrieve_account_country_details
      class DetailRetrieveAccountCountryDetailsResponse < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Meta, nil]
        optional :_meta, -> { Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Data, nil]
        optional :data, -> { Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Meta]
        #   @param data [Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Data]

        # @see Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse#_meta
        class Meta < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Meta::Cache, nil]
          optional :_cache,
                   -> { Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Meta::Credits, nil]
          optional :_credits,
                   -> { Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Meta::RateLimits, nil]
          optional :_rate_limits,
                   -> { Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Meta::Cache]
          #   @param _credits [Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Meta::RateLimits]

          # @see Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Meta#_cache
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

          # @see Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Meta#_credits
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

          # @see Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Meta#_rate_limits
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

        # @see Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse#data
        class Data < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute can_has_w9_form
          #
          #   @return [Boolean, nil]
          optional :can_has_w9_form, Onlyfansapi::Internal::Type::Boolean, api_name: :canHasW9Form

          # @!attribute can_pay
          #
          #   @return [Boolean, nil]
          optional :can_pay, Onlyfansapi::Internal::Type::Boolean, api_name: :canPay

          # @!attribute code
          #
          #   @return [String, nil]
          optional :code, String

          # @!attribute has_states
          #
          #   @return [Boolean, nil]
          optional :has_states, Onlyfansapi::Internal::Type::Boolean, api_name: :hasStates

          # @!attribute has_zip
          #
          #   @return [Boolean, nil]
          optional :has_zip, Onlyfansapi::Internal::Type::Boolean, api_name: :hasZip

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
end
