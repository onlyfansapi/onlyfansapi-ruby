# frozen_string_literal: true

module Onlyfans
  module Models
    module Banking
      # @see Onlyfans::Resources::Banking::Details#retrieve_bank_details
      class DetailRetrieveBankDetailsResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Meta, nil]
        optional :_meta, -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data, nil]
        optional :data, -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Meta]
        #   @param data [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data]

        # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse#_meta
        class Meta < Onlyfans::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::RateLimits, nil]
          optional :_rate_limits,
                   -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Cache]
          #   @param _credits [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::RateLimits]

          # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Meta#_cache
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

          # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Meta#_credits
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

          # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Meta#_rate_limits
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

        # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse#data
        class Data < Onlyfans::Internal::Type::BaseModel
          # @!attribute is_payout_data_filled
          #
          #   @return [Boolean, nil]
          optional :is_payout_data_filled, Onlyfans::Internal::Type::Boolean, api_name: :isPayoutDataFilled

          # @!attribute payout_code
          #
          #   @return [String, nil]
          optional :payout_code, String, api_name: :payoutCode

          # @!attribute payouts
          #
          #   @return [Array<Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout>, nil]
          optional :payouts,
                   -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout] }

          # @!method initialize(is_payout_data_filled: nil, payout_code: nil, payouts: nil)
          #   @param is_payout_data_filled [Boolean]
          #   @param payout_code [String]
          #   @param payouts [Array<Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout>]

          class Payout < Onlyfans::Internal::Type::BaseModel
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
            #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields, nil]
            optional :fields,
                     -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields }

            # @!attribute fields_order
            #
            #   @return [Array<String>, nil]
            optional :fields_order, Onlyfans::Internal::Type::ArrayOf[String], api_name: :fieldsOrder

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
            #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping, nil]
            optional :ui_mapping,
                     -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping },
                     api_name: :uiMapping

            # @!method initialize(code: nil, description: nil, fields: nil, fields_order: nil, min_payout_summ: nil, payout_time: nil, subtitle: nil, title: nil, ui_mapping: nil)
            #   @param code [String]
            #   @param description [String]
            #   @param fields [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields]
            #   @param fields_order [Array<String>]
            #   @param min_payout_summ [Integer]
            #   @param payout_time [String]
            #   @param subtitle [String]
            #   @param title [String]
            #   @param ui_mapping [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping]

            # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout#fields
            class Fields < Onlyfans::Internal::Type::BaseModel
              # @!attribute address
              #
              #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address, nil]
              optional :address,
                       -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address }

              # @!attribute bank_name
              #
              #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName, nil]
              optional :bank_name,
                       -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName }

              # @!attribute bic
              #
              #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic, nil]
              optional :bic,
                       -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic }

              # @!attribute city
              #
              #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City, nil]
              optional :city,
                       -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City }

              # @!attribute country
              #
              #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country, nil]
              optional :country,
                       -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country }

              # @!attribute first_name
              #
              #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName, nil]
              optional :first_name,
                       -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName }

              # @!attribute iban
              #
              #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban, nil]
              optional :iban,
                       -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban }

              # @!attribute last_name
              #
              #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName, nil]
              optional :last_name,
                       -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName }

              # @!attribute postal
              #
              #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal, nil]
              optional :postal,
                       -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal }

              # @!method initialize(address: nil, bank_name: nil, bic: nil, city: nil, country: nil, first_name: nil, iban: nil, last_name: nil, postal: nil)
              #   @param address [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address]
              #   @param bank_name [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName]
              #   @param bic [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic]
              #   @param city [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City]
              #   @param country [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country]
              #   @param first_name [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName]
              #   @param iban [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban]
              #   @param last_name [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName]
              #   @param postal [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal]

              # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields#address
              class Address < Onlyfans::Internal::Type::BaseModel
                # @!attribute label
                #
                #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address::Label, nil]
                optional :label,
                         -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address::Label }

                # @!attribute maxlength
                #
                #   @return [Integer, nil]
                optional :maxlength, Integer

                # @!attribute required
                #
                #   @return [Boolean, nil]
                optional :required, Onlyfans::Internal::Type::Boolean

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(label: nil, maxlength: nil, required: nil, value: nil)
                #   @param label [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address::Label]
                #   @param maxlength [Integer]
                #   @param required [Boolean]
                #   @param value [String]

                # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address#label
                class Label < Onlyfans::Internal::Type::BaseModel
                  # @!attribute key
                  #
                  #   @return [String, nil]
                  optional :key, String

                  # @!method initialize(key: nil)
                  #   @param key [String]
                end
              end

              # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields#bank_name
              class BankName < Onlyfans::Internal::Type::BaseModel
                # @!attribute label
                #
                #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName::Label, nil]
                optional :label,
                         -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName::Label }

                # @!attribute maxlength
                #
                #   @return [Integer, nil]
                optional :maxlength, Integer

                # @!attribute required
                #
                #   @return [Boolean, nil]
                optional :required, Onlyfans::Internal::Type::Boolean

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(label: nil, maxlength: nil, required: nil, value: nil)
                #   @param label [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName::Label]
                #   @param maxlength [Integer]
                #   @param required [Boolean]
                #   @param value [String]

                # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName#label
                class Label < Onlyfans::Internal::Type::BaseModel
                  # @!attribute key
                  #
                  #   @return [String, nil]
                  optional :key, String

                  # @!method initialize(key: nil)
                  #   @param key [String]
                end
              end

              # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields#bic
              class Bic < Onlyfans::Internal::Type::BaseModel
                # @!attribute label
                #
                #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic::Label, nil]
                optional :label,
                         -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic::Label }

                # @!attribute maxlength
                #
                #   @return [Integer, nil]
                optional :maxlength, Integer

                # @!attribute required
                #
                #   @return [Boolean, nil]
                optional :required, Onlyfans::Internal::Type::Boolean

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(label: nil, maxlength: nil, required: nil, value: nil)
                #   @param label [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic::Label]
                #   @param maxlength [Integer]
                #   @param required [Boolean]
                #   @param value [String]

                # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic#label
                class Label < Onlyfans::Internal::Type::BaseModel
                  # @!attribute key
                  #
                  #   @return [String, nil]
                  optional :key, String

                  # @!method initialize(key: nil)
                  #   @param key [String]
                end
              end

              # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields#city
              class City < Onlyfans::Internal::Type::BaseModel
                # @!attribute label
                #
                #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City::Label, nil]
                optional :label,
                         -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City::Label }

                # @!attribute maxlength
                #
                #   @return [Integer, nil]
                optional :maxlength, Integer

                # @!attribute required
                #
                #   @return [Boolean, nil]
                optional :required, Onlyfans::Internal::Type::Boolean

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(label: nil, maxlength: nil, required: nil, value: nil)
                #   @param label [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City::Label]
                #   @param maxlength [Integer]
                #   @param required [Boolean]
                #   @param value [String]

                # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City#label
                class Label < Onlyfans::Internal::Type::BaseModel
                  # @!attribute key
                  #
                  #   @return [String, nil]
                  optional :key, String

                  # @!method initialize(key: nil)
                  #   @param key [String]
                end
              end

              # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields#country
              class Country < Onlyfans::Internal::Type::BaseModel
                # @!attribute label
                #
                #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country::Label, nil]
                optional :label,
                         -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country::Label }

                # @!attribute readonly
                #
                #   @return [Boolean, nil]
                optional :readonly, Onlyfans::Internal::Type::Boolean

                # @!attribute uionly
                #
                #   @return [Boolean, nil]
                optional :uionly, Onlyfans::Internal::Type::Boolean

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(label: nil, readonly: nil, uionly: nil, value: nil)
                #   @param label [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country::Label]
                #   @param readonly [Boolean]
                #   @param uionly [Boolean]
                #   @param value [String]

                # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country#label
                class Label < Onlyfans::Internal::Type::BaseModel
                  # @!attribute key
                  #
                  #   @return [String, nil]
                  optional :key, String

                  # @!method initialize(key: nil)
                  #   @param key [String]
                end
              end

              # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields#first_name
              class FirstName < Onlyfans::Internal::Type::BaseModel
                # @!attribute label
                #
                #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Label, nil]
                optional :label,
                         -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Label }

                # @!attribute maxlength
                #
                #   @return [Integer, nil]
                optional :maxlength, Integer

                # @!attribute oninput
                #
                #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput, nil]
                optional :oninput,
                         -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput }

                # @!attribute readonly
                #
                #   @return [Boolean, nil]
                optional :readonly, Onlyfans::Internal::Type::Boolean

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(label: nil, maxlength: nil, oninput: nil, readonly: nil, value: nil)
                #   @param label [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Label]
                #   @param maxlength [Integer]
                #   @param oninput [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput]
                #   @param readonly [Boolean]
                #   @param value [String]

                # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName#label
                class Label < Onlyfans::Internal::Type::BaseModel
                  # @!attribute key
                  #
                  #   @return [String, nil]
                  optional :key, String

                  # @!method initialize(key: nil)
                  #   @param key [String]
                end

                # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName#oninput
                class Oninput < Onlyfans::Internal::Type::BaseModel
                  # @!attribute replace
                  #
                  #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput::Replace, nil]
                  optional :replace,
                           -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput::Replace }

                  # @!method initialize(replace: nil)
                  #   @param replace [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput::Replace]

                  # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput#replace
                  class Replace < Onlyfans::Internal::Type::BaseModel
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

              # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields#iban
              class Iban < Onlyfans::Internal::Type::BaseModel
                # @!attribute label
                #
                #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Label, nil]
                optional :label,
                         -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Label }

                # @!attribute regex
                #
                #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Regex, nil]
                optional :regex,
                         -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Regex }

                # @!attribute required
                #
                #   @return [Boolean, nil]
                optional :required, Onlyfans::Internal::Type::Boolean

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(label: nil, regex: nil, required: nil, value: nil)
                #   @param label [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Label]
                #   @param regex [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Regex]
                #   @param required [Boolean]
                #   @param value [String]

                # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban#label
                class Label < Onlyfans::Internal::Type::BaseModel
                  # @!attribute key
                  #
                  #   @return [String, nil]
                  optional :key, String

                  # @!method initialize(key: nil)
                  #   @param key [String]
                end

                # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban#regex
                class Regex < Onlyfans::Internal::Type::BaseModel
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

              # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields#last_name
              class LastName < Onlyfans::Internal::Type::BaseModel
                # @!attribute label
                #
                #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Label, nil]
                optional :label,
                         -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Label }

                # @!attribute maxlength
                #
                #   @return [Integer, nil]
                optional :maxlength, Integer

                # @!attribute oninput
                #
                #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput, nil]
                optional :oninput,
                         -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput }

                # @!attribute readonly
                #
                #   @return [Boolean, nil]
                optional :readonly, Onlyfans::Internal::Type::Boolean

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(label: nil, maxlength: nil, oninput: nil, readonly: nil, value: nil)
                #   @param label [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Label]
                #   @param maxlength [Integer]
                #   @param oninput [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput]
                #   @param readonly [Boolean]
                #   @param value [String]

                # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName#label
                class Label < Onlyfans::Internal::Type::BaseModel
                  # @!attribute key
                  #
                  #   @return [String, nil]
                  optional :key, String

                  # @!method initialize(key: nil)
                  #   @param key [String]
                end

                # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName#oninput
                class Oninput < Onlyfans::Internal::Type::BaseModel
                  # @!attribute replace
                  #
                  #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput::Replace, nil]
                  optional :replace,
                           -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput::Replace }

                  # @!method initialize(replace: nil)
                  #   @param replace [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput::Replace]

                  # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput#replace
                  class Replace < Onlyfans::Internal::Type::BaseModel
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

              # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields#postal
              class Postal < Onlyfans::Internal::Type::BaseModel
                # @!attribute label
                #
                #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal::Label, nil]
                optional :label,
                         -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal::Label }

                # @!attribute maxlength
                #
                #   @return [Integer, nil]
                optional :maxlength, Integer

                # @!attribute required
                #
                #   @return [Boolean, nil]
                optional :required, Onlyfans::Internal::Type::Boolean

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(label: nil, maxlength: nil, required: nil, value: nil)
                #   @param label [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal::Label]
                #   @param maxlength [Integer]
                #   @param required [Boolean]
                #   @param value [String]

                # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal#label
                class Label < Onlyfans::Internal::Type::BaseModel
                  # @!attribute key
                  #
                  #   @return [String, nil]
                  optional :key, String

                  # @!method initialize(key: nil)
                  #   @param key [String]
                end
              end
            end

            # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout#ui_mapping
            class UiMapping < Onlyfans::Internal::Type::BaseModel
              # @!attribute alert
              #
              #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert, nil]
              optional :alert,
                       -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert }

              # @!attribute btn_submit
              #
              #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::BtnSubmit, nil]
              optional :btn_submit,
                       -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::BtnSubmit }

              # @!attribute title
              #
              #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Title, nil]
              optional :title,
                       -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Title }

              # @!method initialize(alert: nil, btn_submit: nil, title: nil)
              #   @param alert [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert]
              #   @param btn_submit [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::BtnSubmit]
              #   @param title [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Title]

              # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping#alert
              class Alert < Onlyfans::Internal::Type::BaseModel
                # @!attribute class_
                #
                #   @return [String, nil]
                optional :class_, String, api_name: :class

                # @!attribute text
                #
                #   @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert::Text, nil]
                optional :text,
                         -> { Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert::Text }

                # @!method initialize(class_: nil, text: nil)
                #   @param class_ [String]
                #   @param text [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert::Text]

                # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert#text
                class Text < Onlyfans::Internal::Type::BaseModel
                  # @!attribute key
                  #
                  #   @return [String, nil]
                  optional :key, String

                  # @!method initialize(key: nil)
                  #   @param key [String]
                end
              end

              # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping#btn_submit
              class BtnSubmit < Onlyfans::Internal::Type::BaseModel
                # @!attribute key
                #
                #   @return [String, nil]
                optional :key, String

                # @!method initialize(key: nil)
                #   @param key [String]
              end

              # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping#title
              class Title < Onlyfans::Internal::Type::BaseModel
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
