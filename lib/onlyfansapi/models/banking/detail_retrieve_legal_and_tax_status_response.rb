# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Banking
      # @see Onlyfansapi::Resources::Banking::Details#retrieve_legal_and_tax_status
      class DetailRetrieveLegalAndTaxStatusResponse < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta, nil]
        optional :_meta, -> { Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data, nil]
        optional :data, -> { Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta]
        #   @param data [Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data]

        # @see Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse#_meta
        class Meta < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::Cache, nil]
          optional :_cache,
                   -> { Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::Credits, nil]
          optional :_credits,
                   -> { Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::RateLimits, nil]
          optional :_rate_limits,
                   -> { Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::Cache]
          #   @param _credits [Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::RateLimits]

          # @see Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta#_cache
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

          # @see Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta#_credits
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

          # @see Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta#_rate_limits
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

        # @see Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse#data
        class Data < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute can_change_payout_type
          #
          #   @return [Boolean, nil]
          optional :can_change_payout_type,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :canChangePayoutType

          # @!attribute can_show_legal_form
          #
          #   @return [Boolean, nil]
          optional :can_show_legal_form, Onlyfansapi::Internal::Type::Boolean, api_name: :canShowLegalForm

          # @!attribute dac7
          #
          #   @return [Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data::Dac7, nil]
          optional :dac7,
                   -> { Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data::Dac7 },
                   api_name: :DAC7

          # @!attribute hide_banking
          #
          #   @return [Boolean, nil]
          optional :hide_banking, Onlyfansapi::Internal::Type::Boolean, api_name: :hideBanking

          # @!attribute is_real_id_image
          #
          #   @return [Boolean, nil]
          optional :is_real_id_image, Onlyfansapi::Internal::Type::Boolean, api_name: :isRealIdImage

          # @!attribute is_w9_exist
          #
          #   @return [Boolean, nil]
          optional :is_w9_exist, Onlyfansapi::Internal::Type::Boolean, api_name: :isW9Exist

          # @!attribute is_w9_required
          #
          #   @return [Boolean, nil]
          optional :is_w9_required, Onlyfansapi::Internal::Type::Boolean, api_name: :isW9Required

          # @!attribute is_xxx
          #
          #   @return [Boolean, nil]
          optional :is_xxx, Onlyfansapi::Internal::Type::Boolean, api_name: :isXXX

          # @!attribute iv_fail_reason
          #
          #   @return [String, nil]
          optional :iv_fail_reason, String, api_name: :ivFailReason, nil?: true

          # @!attribute iv_status
          #
          #   @return [String, nil]
          optional :iv_status, String, api_name: :ivStatus

          # @!attribute need_show_edit_w9
          #
          #   @return [Boolean, nil]
          optional :need_show_edit_w9, Onlyfansapi::Internal::Type::Boolean, api_name: :needShowEditW9

          # @!attribute payout_legal_approve_reject_reason
          #
          #   @return [String, nil]
          optional :payout_legal_approve_reject_reason,
                   String,
                   api_name: :payoutLegalApproveRejectReason,
                   nil?: true

          # @!attribute show_iv_button
          #
          #   @return [Boolean, nil]
          optional :show_iv_button, Onlyfansapi::Internal::Type::Boolean, api_name: :showIvButton

          # @!attribute tax
          #
          #   @return [Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data::Tax, nil]
          optional :tax, -> { Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data::Tax }

          # @!method initialize(can_change_payout_type: nil, can_show_legal_form: nil, dac7: nil, hide_banking: nil, is_real_id_image: nil, is_w9_exist: nil, is_w9_required: nil, is_xxx: nil, iv_fail_reason: nil, iv_status: nil, need_show_edit_w9: nil, payout_legal_approve_reject_reason: nil, show_iv_button: nil, tax: nil)
          #   @param can_change_payout_type [Boolean]
          #   @param can_show_legal_form [Boolean]
          #   @param dac7 [Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data::Dac7]
          #   @param hide_banking [Boolean]
          #   @param is_real_id_image [Boolean]
          #   @param is_w9_exist [Boolean]
          #   @param is_w9_required [Boolean]
          #   @param is_xxx [Boolean]
          #   @param iv_fail_reason [String, nil]
          #   @param iv_status [String]
          #   @param need_show_edit_w9 [Boolean]
          #   @param payout_legal_approve_reject_reason [String, nil]
          #   @param show_iv_button [Boolean]
          #   @param tax [Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data::Tax]

          # @see Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data#dac7
          class Dac7 < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute country_ids
            #
            #   @return [Array<Integer>, nil]
            optional :country_ids, Onlyfansapi::Internal::Type::ArrayOf[Integer], api_name: :countryIds

            # @!attribute error
            #
            #   @return [String, nil]
            optional :error, String, nil?: true

            # @!attribute required
            #
            #   @return [Boolean, nil]
            optional :required, Onlyfansapi::Internal::Type::Boolean

            # @!attribute state
            #
            #   @return [String, nil]
            optional :state, String

            # @!attribute type
            #
            #   @return [String, nil]
            optional :type, String

            # @!method initialize(country_ids: nil, error: nil, required: nil, state: nil, type: nil)
            #   @param country_ids [Array<Integer>]
            #   @param error [String, nil]
            #   @param required [Boolean]
            #   @param state [String]
            #   @param type [String]
          end

          # @see Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data#tax
          class Tax < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute country_code
            #
            #   @return [String, nil]
            optional :country_code, String, api_name: :countryCode

            # @!attribute editable
            #
            #   @return [Boolean, nil]
            optional :editable, Onlyfansapi::Internal::Type::Boolean

            # @!attribute is_banking_disabled
            #
            #   @return [Boolean, nil]
            optional :is_banking_disabled, Onlyfansapi::Internal::Type::Boolean, api_name: :isBankingDisabled

            # @!method initialize(country_code: nil, editable: nil, is_banking_disabled: nil)
            #   @param country_code [String]
            #   @param editable [Boolean]
            #   @param is_banking_disabled [Boolean]
          end
        end
      end
    end
  end
end
