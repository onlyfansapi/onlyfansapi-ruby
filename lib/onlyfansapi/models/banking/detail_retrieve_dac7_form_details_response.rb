# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Banking
      # @see Onlyfansapi::Resources::Banking::Details#retrieve_dac7_form_details
      class DetailRetrieveDac7FormDetailsResponse < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta, nil]
        optional :_meta, -> { Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Data, nil]
        optional :data, -> { Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta]
        #   @param data [Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Data]

        # @see Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse#_meta
        class Meta < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::Credits, nil]
          optional :_credits,
                   -> { Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::RateLimits, nil]
          optional :_rate_limits,
                   -> { Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::Cache]
          #   @param _credits [Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::RateLimits]

          # @see Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta#_cache
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

          # @see Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta#_credits
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

          # @see Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta#_rate_limits
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

        # @see Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse#data
        class Data < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute address
          #
          #   @return [String, nil]
          optional :address, String

          # @!attribute city
          #
          #   @return [String, nil]
          optional :city, String

          # @!attribute city_of_birth
          #
          #   @return [String, nil]
          optional :city_of_birth, String, api_name: :cityOfBirth

          # @!attribute country_id
          #
          #   @return [Integer, nil]
          optional :country_id, Integer, api_name: :countryId

          # @!attribute country_of_birth_id
          #
          #   @return [Integer, nil]
          optional :country_of_birth_id, Integer, api_name: :countryOfBirthId

          # @!attribute country_of_residence_id
          #
          #   @return [Integer, nil]
          optional :country_of_residence_id, Integer, api_name: :countryOfResidenceId

          # @!attribute dob
          #
          #   @return [String, nil]
          optional :dob, String, api_name: :DOB

          # @!attribute first_name
          #
          #   @return [String, nil]
          optional :first_name, String, api_name: :firstName

          # @!attribute issuing_country_id
          #
          #   @return [Integer, nil]
          optional :issuing_country_id, Integer, api_name: :issuingCountryId

          # @!attribute last_name
          #
          #   @return [String, nil]
          optional :last_name, String, api_name: :lastName

          # @!attribute state
          #
          #   @return [String, nil]
          optional :state, String

          # @!attribute status
          #
          #   @return [String, nil]
          optional :status, String

          # @!attribute tax_id
          #
          #   @return [String, nil]
          optional :tax_id, String, api_name: :taxId

          # @!attribute type
          #
          #   @return [String, nil]
          optional :type, String

          # @!attribute vat_number
          #
          #   @return [String, nil]
          optional :vat_number, String, api_name: :vatNumber

          # @!attribute zip
          #
          #   @return [String, nil]
          optional :zip, String

          # @!method initialize(address: nil, city: nil, city_of_birth: nil, country_id: nil, country_of_birth_id: nil, country_of_residence_id: nil, dob: nil, first_name: nil, issuing_country_id: nil, last_name: nil, state: nil, status: nil, tax_id: nil, type: nil, vat_number: nil, zip: nil)
          #   @param address [String]
          #   @param city [String]
          #   @param city_of_birth [String]
          #   @param country_id [Integer]
          #   @param country_of_birth_id [Integer]
          #   @param country_of_residence_id [Integer]
          #   @param dob [String]
          #   @param first_name [String]
          #   @param issuing_country_id [Integer]
          #   @param last_name [String]
          #   @param state [String]
          #   @param status [String]
          #   @param tax_id [String]
          #   @param type [String]
          #   @param vat_number [String]
          #   @param zip [String]
        end
      end
    end
  end
end
