# frozen_string_literal: true

module Onlyfans
  module Models
    module Banking
      # @see Onlyfans::Resources::Banking::Details#retrieve_legal_form_details
      class DetailRetrieveLegalFormDetailsResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta, nil]
        optional :_meta, -> { Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data, nil]
        optional :data, -> { Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta]
        #   @param data [Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data]

        # @see Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse#_meta
        class Meta < Onlyfans::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::Credits, nil]
          optional :_credits,
                   -> { Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::RateLimits, nil]
          optional :_rate_limits,
                   -> { Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::Cache]
          #   @param _credits [Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::RateLimits]

          # @see Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta#_cache
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

          # @see Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta#_credits
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

          # @see Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta#_rate_limits
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

        # @see Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse#data
        class Data < Onlyfans::Internal::Type::BaseModel
          # @!attribute date_of_birth
          #
          #   @return [String, nil]
          optional :date_of_birth, String, api_name: :dateOfBirth

          # @!attribute document_type
          #
          #   @return [Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data::DocumentType, nil]
          optional :document_type,
                   -> { Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data::DocumentType },
                   api_name: :documentType

          # @!attribute is_allowed_dl
          #
          #   @return [Boolean, nil]
          optional :is_allowed_dl, Onlyfans::Internal::Type::Boolean, api_name: :isAllowedDL

          # @!attribute private_website
          #
          #   @return [String, nil]
          optional :private_website, String, api_name: :privateWebsite

          # @!attribute real_address
          #
          #   @return [String, nil]
          optional :real_address, String, api_name: :realAddress

          # @!attribute real_business_name
          #
          #   @return [String, nil]
          optional :real_business_name, String, api_name: :realBusinessName

          # @!attribute real_city
          #
          #   @return [String, nil]
          optional :real_city, String, api_name: :realCity

          # @!attribute real_first_name
          #
          #   @return [String, nil]
          optional :real_first_name, String, api_name: :realFirstName

          # @!attribute real_instagram
          #
          #   @return [String, nil]
          optional :real_instagram, String, api_name: :realInstagram

          # @!attribute real_last_name
          #
          #   @return [String, nil]
          optional :real_last_name, String, api_name: :realLastName

          # @!attribute real_postal
          #
          #   @return [String, nil]
          optional :real_postal, String, api_name: :realPostal

          # @!attribute real_state
          #
          #   @return [String, nil]
          optional :real_state, String, api_name: :realState

          # @!attribute real_twitter
          #
          #   @return [String, nil]
          optional :real_twitter, String, api_name: :realTwitter

          # @!method initialize(date_of_birth: nil, document_type: nil, is_allowed_dl: nil, private_website: nil, real_address: nil, real_business_name: nil, real_city: nil, real_first_name: nil, real_instagram: nil, real_last_name: nil, real_postal: nil, real_state: nil, real_twitter: nil)
          #   @param date_of_birth [String]
          #   @param document_type [Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data::DocumentType]
          #   @param is_allowed_dl [Boolean]
          #   @param private_website [String]
          #   @param real_address [String]
          #   @param real_business_name [String]
          #   @param real_city [String]
          #   @param real_first_name [String]
          #   @param real_instagram [String]
          #   @param real_last_name [String]
          #   @param real_postal [String]
          #   @param real_state [String]
          #   @param real_twitter [String]

          # @see Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data#document_type
          class DocumentType < Onlyfans::Internal::Type::BaseModel
            # @!attribute values
            #
            #   @return [Array<Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data::DocumentType::Value>, nil]
            optional :values,
                     -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data::DocumentType::Value] }

            # @!method initialize(values: nil)
            #   @param values [Array<Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data::DocumentType::Value>]

            class Value < Onlyfans::Internal::Type::BaseModel
              # @!attribute code
              #
              #   @return [String, nil]
              optional :code, String

              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!method initialize(code: nil, name: nil)
              #   @param code [String]
              #   @param name [String]
            end
          end
        end
      end
    end
  end
end
