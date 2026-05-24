# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Banking
      # @see Onlyfansapi::Resources::Banking::Details#retrieve_bank_details
      class DetailRetrieveBankDetailsResponse < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta, nil]
        optional :_meta, -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data, nil]
        optional :data, -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta]
        #   @param data [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data]

        # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse#_meta
        class Meta < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::RateLimits, nil]
          optional :_rate_limits,
                   -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Cache]
          #   @param _credits [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::RateLimits]

          # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta#_cache
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

          # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta#_credits
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

          # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta#_rate_limits
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

        # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse#data
        class Data < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute is_payout_data_filled
          #
          #   @return [Boolean, nil]
          optional :is_payout_data_filled, Onlyfansapi::Internal::Type::Boolean, api_name: :isPayoutDataFilled

          # @!attribute payout_code
          #
          #   @return [String, nil]
          optional :payout_code, String, api_name: :payoutCode

          # @!attribute payouts
          #
          #   @return [Array<Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout>, nil]
          optional :payouts,
                   -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout] }

          # @!method initialize(is_payout_data_filled: nil, payout_code: nil, payouts: nil)
          #   @param is_payout_data_filled [Boolean]
          #   @param payout_code [String]
          #   @param payouts [Array<Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout>]

          class Payout < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute code
            #
            #   @return [String, nil]
            optional :code, String

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute fields
            #
            #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields, nil]
            optional :fields,
                     -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields }

            # @!attribute fields_order
            #
            #   @return [Array<String>, nil]
            optional :fields_order, Onlyfansapi::Internal::Type::ArrayOf[String], api_name: :fieldsOrder

            # @!attribute min_payout_summ
            #
            #   @return [Integer, nil]
            optional :min_payout_summ, Integer, api_name: :minPayoutSumm

            # @!attribute payout_time
            #
            #   @return [String, nil]
            optional :payout_time, String, api_name: :payoutTime

            # @!attribute subtitle
            #
            #   @return [String, nil]
            optional :subtitle, String

            # @!attribute title
            #
            #   @return [String, nil]
            optional :title, String

            # @!attribute ui_mapping
            #
            #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping, nil]
            optional :ui_mapping,
                     -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping },
                     api_name: :uiMapping

            # @!method initialize(code: nil, description: nil, fields: nil, fields_order: nil, min_payout_summ: nil, payout_time: nil, subtitle: nil, title: nil, ui_mapping: nil)
            #   @param code [String]
            #   @param description [String]
            #   @param fields [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields]
            #   @param fields_order [Array<String>]
            #   @param min_payout_summ [Integer]
            #   @param payout_time [String]
            #   @param subtitle [String]
            #   @param title [String]
            #   @param ui_mapping [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping]

            # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout#fields
            class Fields < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute address
              #
              #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address, nil]
              optional :address,
                       -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address }

              # @!attribute bank_name
              #
              #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName, nil]
              optional :bank_name,
                       -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName }

              # @!attribute bic
              #
              #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic, nil]
              optional :bic,
                       -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic }

              # @!attribute city
              #
              #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City, nil]
              optional :city,
                       -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City }

              # @!attribute country
              #
              #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country, nil]
              optional :country,
                       -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country }

              # @!attribute first_name
              #
              #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName, nil]
              optional :first_name,
                       -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName }

              # @!attribute iban
              #
              #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban, nil]
              optional :iban,
                       -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban }

              # @!attribute last_name
              #
              #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName, nil]
              optional :last_name,
                       -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName }

              # @!attribute postal
              #
              #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal, nil]
              optional :postal,
                       -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal }

              # @!method initialize(address: nil, bank_name: nil, bic: nil, city: nil, country: nil, first_name: nil, iban: nil, last_name: nil, postal: nil)
              #   @param address [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address]
              #   @param bank_name [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName]
              #   @param bic [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic]
              #   @param city [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City]
              #   @param country [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country]
              #   @param first_name [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName]
              #   @param iban [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban]
              #   @param last_name [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName]
              #   @param postal [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal]

              # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields#address
              class Address < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute label
                #
                #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address::Label, nil]
                optional :label,
                         -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address::Label }

                # @!attribute maxlength
                #
                #   @return [Integer, nil]
                optional :maxlength, Integer

                # @!attribute required
                #
                #   @return [Boolean, nil]
                optional :required, Onlyfansapi::Internal::Type::Boolean

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(label: nil, maxlength: nil, required: nil, value: nil)
                #   @param label [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address::Label]
                #   @param maxlength [Integer]
                #   @param required [Boolean]
                #   @param value [String]

                # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address#label
                class Label < Onlyfansapi::Internal::Type::BaseModel
                  # @!attribute key
                  #
                  #   @return [String, nil]
                  optional :key, String

                  # @!method initialize(key: nil)
                  #   @param key [String]
                end
              end

              # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields#bank_name
              class BankName < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute label
                #
                #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName::Label, nil]
                optional :label,
                         -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName::Label }

                # @!attribute maxlength
                #
                #   @return [Integer, nil]
                optional :maxlength, Integer

                # @!attribute required
                #
                #   @return [Boolean, nil]
                optional :required, Onlyfansapi::Internal::Type::Boolean

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(label: nil, maxlength: nil, required: nil, value: nil)
                #   @param label [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName::Label]
                #   @param maxlength [Integer]
                #   @param required [Boolean]
                #   @param value [String]

                # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName#label
                class Label < Onlyfansapi::Internal::Type::BaseModel
                  # @!attribute key
                  #
                  #   @return [String, nil]
                  optional :key, String

                  # @!method initialize(key: nil)
                  #   @param key [String]
                end
              end

              # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields#bic
              class Bic < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute label
                #
                #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic::Label, nil]
                optional :label,
                         -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic::Label }

                # @!attribute maxlength
                #
                #   @return [Integer, nil]
                optional :maxlength, Integer

                # @!attribute required
                #
                #   @return [Boolean, nil]
                optional :required, Onlyfansapi::Internal::Type::Boolean

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(label: nil, maxlength: nil, required: nil, value: nil)
                #   @param label [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic::Label]
                #   @param maxlength [Integer]
                #   @param required [Boolean]
                #   @param value [String]

                # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic#label
                class Label < Onlyfansapi::Internal::Type::BaseModel
                  # @!attribute key
                  #
                  #   @return [String, nil]
                  optional :key, String

                  # @!method initialize(key: nil)
                  #   @param key [String]
                end
              end

              # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields#city
              class City < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute label
                #
                #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City::Label, nil]
                optional :label,
                         -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City::Label }

                # @!attribute maxlength
                #
                #   @return [Integer, nil]
                optional :maxlength, Integer

                # @!attribute required
                #
                #   @return [Boolean, nil]
                optional :required, Onlyfansapi::Internal::Type::Boolean

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(label: nil, maxlength: nil, required: nil, value: nil)
                #   @param label [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City::Label]
                #   @param maxlength [Integer]
                #   @param required [Boolean]
                #   @param value [String]

                # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City#label
                class Label < Onlyfansapi::Internal::Type::BaseModel
                  # @!attribute key
                  #
                  #   @return [String, nil]
                  optional :key, String

                  # @!method initialize(key: nil)
                  #   @param key [String]
                end
              end

              # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields#country
              class Country < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute label
                #
                #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country::Label, nil]
                optional :label,
                         -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country::Label }

                # @!attribute readonly
                #
                #   @return [Boolean, nil]
                optional :readonly, Onlyfansapi::Internal::Type::Boolean

                # @!attribute uionly
                #
                #   @return [Boolean, nil]
                optional :uionly, Onlyfansapi::Internal::Type::Boolean

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(label: nil, readonly: nil, uionly: nil, value: nil)
                #   @param label [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country::Label]
                #   @param readonly [Boolean]
                #   @param uionly [Boolean]
                #   @param value [String]

                # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country#label
                class Label < Onlyfansapi::Internal::Type::BaseModel
                  # @!attribute key
                  #
                  #   @return [String, nil]
                  optional :key, String

                  # @!method initialize(key: nil)
                  #   @param key [String]
                end
              end

              # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields#first_name
              class FirstName < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute label
                #
                #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Label, nil]
                optional :label,
                         -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Label }

                # @!attribute maxlength
                #
                #   @return [Integer, nil]
                optional :maxlength, Integer

                # @!attribute oninput
                #
                #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput, nil]
                optional :oninput,
                         -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput }

                # @!attribute readonly
                #
                #   @return [Boolean, nil]
                optional :readonly, Onlyfansapi::Internal::Type::Boolean

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(label: nil, maxlength: nil, oninput: nil, readonly: nil, value: nil)
                #   @param label [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Label]
                #   @param maxlength [Integer]
                #   @param oninput [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput]
                #   @param readonly [Boolean]
                #   @param value [String]

                # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName#label
                class Label < Onlyfansapi::Internal::Type::BaseModel
                  # @!attribute key
                  #
                  #   @return [String, nil]
                  optional :key, String

                  # @!method initialize(key: nil)
                  #   @param key [String]
                end

                # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName#oninput
                class Oninput < Onlyfansapi::Internal::Type::BaseModel
                  # @!attribute replace
                  #
                  #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput::Replace, nil]
                  optional :replace,
                           -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput::Replace }

                  # @!method initialize(replace: nil)
                  #   @param replace [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput::Replace]

                  # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput#replace
                  class Replace < Onlyfansapi::Internal::Type::BaseModel
                    # @!attribute flag
                    #
                    #   @return [String, nil]
                    optional :flag, String

                    # @!attribute pattern
                    #
                    #   @return [String, nil]
                    optional :pattern, String

                    # @!method initialize(flag: nil, pattern: nil)
                    #   @param flag [String]
                    #   @param pattern [String]
                  end
                end
              end

              # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields#iban
              class Iban < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute label
                #
                #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Label, nil]
                optional :label,
                         -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Label }

                # @!attribute regex
                #
                #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Regex, nil]
                optional :regex,
                         -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Regex }

                # @!attribute required
                #
                #   @return [Boolean, nil]
                optional :required, Onlyfansapi::Internal::Type::Boolean

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(label: nil, regex: nil, required: nil, value: nil)
                #   @param label [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Label]
                #   @param regex [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Regex]
                #   @param required [Boolean]
                #   @param value [String]

                # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban#label
                class Label < Onlyfansapi::Internal::Type::BaseModel
                  # @!attribute key
                  #
                  #   @return [String, nil]
                  optional :key, String

                  # @!method initialize(key: nil)
                  #   @param key [String]
                end

                # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban#regex
                class Regex < Onlyfansapi::Internal::Type::BaseModel
                  # @!attribute flag
                  #
                  #   @return [String, nil]
                  optional :flag, String

                  # @!attribute pattern
                  #
                  #   @return [String, nil]
                  optional :pattern, String

                  # @!method initialize(flag: nil, pattern: nil)
                  #   @param flag [String]
                  #   @param pattern [String]
                end
              end

              # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields#last_name
              class LastName < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute label
                #
                #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Label, nil]
                optional :label,
                         -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Label }

                # @!attribute maxlength
                #
                #   @return [Integer, nil]
                optional :maxlength, Integer

                # @!attribute oninput
                #
                #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput, nil]
                optional :oninput,
                         -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput }

                # @!attribute readonly
                #
                #   @return [Boolean, nil]
                optional :readonly, Onlyfansapi::Internal::Type::Boolean

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(label: nil, maxlength: nil, oninput: nil, readonly: nil, value: nil)
                #   @param label [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Label]
                #   @param maxlength [Integer]
                #   @param oninput [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput]
                #   @param readonly [Boolean]
                #   @param value [String]

                # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName#label
                class Label < Onlyfansapi::Internal::Type::BaseModel
                  # @!attribute key
                  #
                  #   @return [String, nil]
                  optional :key, String

                  # @!method initialize(key: nil)
                  #   @param key [String]
                end

                # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName#oninput
                class Oninput < Onlyfansapi::Internal::Type::BaseModel
                  # @!attribute replace
                  #
                  #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput::Replace, nil]
                  optional :replace,
                           -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput::Replace }

                  # @!method initialize(replace: nil)
                  #   @param replace [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput::Replace]

                  # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput#replace
                  class Replace < Onlyfansapi::Internal::Type::BaseModel
                    # @!attribute flag
                    #
                    #   @return [String, nil]
                    optional :flag, String

                    # @!attribute pattern
                    #
                    #   @return [String, nil]
                    optional :pattern, String

                    # @!method initialize(flag: nil, pattern: nil)
                    #   @param flag [String]
                    #   @param pattern [String]
                  end
                end
              end

              # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields#postal
              class Postal < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute label
                #
                #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal::Label, nil]
                optional :label,
                         -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal::Label }

                # @!attribute maxlength
                #
                #   @return [Integer, nil]
                optional :maxlength, Integer

                # @!attribute required
                #
                #   @return [Boolean, nil]
                optional :required, Onlyfansapi::Internal::Type::Boolean

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(label: nil, maxlength: nil, required: nil, value: nil)
                #   @param label [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal::Label]
                #   @param maxlength [Integer]
                #   @param required [Boolean]
                #   @param value [String]

                # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal#label
                class Label < Onlyfansapi::Internal::Type::BaseModel
                  # @!attribute key
                  #
                  #   @return [String, nil]
                  optional :key, String

                  # @!method initialize(key: nil)
                  #   @param key [String]
                end
              end
            end

            # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout#ui_mapping
            class UiMapping < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute alert
              #
              #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert, nil]
              optional :alert,
                       -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert }

              # @!attribute btn_submit
              #
              #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::BtnSubmit, nil]
              optional :btn_submit,
                       -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::BtnSubmit }

              # @!attribute title
              #
              #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Title, nil]
              optional :title,
                       -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Title }

              # @!method initialize(alert: nil, btn_submit: nil, title: nil)
              #   @param alert [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert]
              #   @param btn_submit [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::BtnSubmit]
              #   @param title [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Title]

              # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping#alert
              class Alert < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute class_
                #
                #   @return [String, nil]
                optional :class_, String, api_name: :class

                # @!attribute text
                #
                #   @return [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert::Text, nil]
                optional :text,
                         -> { Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert::Text }

                # @!method initialize(class_: nil, text: nil)
                #   @param class_ [String]
                #   @param text [Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert::Text]

                # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert#text
                class Text < Onlyfansapi::Internal::Type::BaseModel
                  # @!attribute key
                  #
                  #   @return [String, nil]
                  optional :key, String

                  # @!method initialize(key: nil)
                  #   @param key [String]
                end
              end

              # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping#btn_submit
              class BtnSubmit < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute key
                #
                #   @return [String, nil]
                optional :key, String

                # @!method initialize(key: nil)
                #   @param key [String]
              end

              # @see Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping#title
              class Title < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute key
                #
                #   @return [String, nil]
                optional :key, String

                # @!method initialize(key: nil)
                #   @param key [String]
              end
            end
          end
        end
      end
    end
  end
end
