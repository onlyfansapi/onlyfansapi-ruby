# typed: strong

module Onlyfansapi
  module Models
    module Banking
      class DetailRetrieveLegalAndTaxStatusResponse < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta
            )
          )
        end
        attr_reader :_meta

        sig do
          params(
            _meta:
              Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::OrHash
          ).void
        end
        attr_writer :_meta

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            _meta:
              Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::OrHash,
            data:
              Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_meta: nil, data: nil)
        end

        sig do
          override.returns(
            {
              _meta:
                Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta,
              data:
                Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data
            }
          )
        end
        def to_hash
        end

        class Meta < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::Cache
              )
            )
          end
          attr_reader :_cache

          sig do
            params(
              _cache:
                Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::Cache::OrHash
            ).void
          end
          attr_writer :_cache

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::Credits
              )
            )
          end
          attr_reader :_credits

          sig do
            params(
              _credits:
                Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::Credits::OrHash
            ).void
          end
          attr_writer :_credits

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::RateLimits
              )
            )
          end
          attr_reader :_rate_limits

          sig do
            params(
              _rate_limits:
                Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::RateLimits::OrHash
            ).void
          end
          attr_writer :_rate_limits

          sig do
            params(
              _cache:
                Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::Cache::OrHash,
              _credits:
                Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::Credits::OrHash,
              _rate_limits:
                Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::RateLimits::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
          end

          sig do
            override.returns(
              {
                _cache:
                  Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::Cache,
                _credits:
                  Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::Credits,
                _rate_limits:
                  Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::RateLimits
              }
            )
          end
          def to_hash
          end

          class Cache < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::Cache,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_cached

            sig { params(is_cached: T::Boolean).void }
            attr_writer :is_cached

            sig { returns(T.nilable(String)) }
            attr_reader :note

            sig { params(note: String).void }
            attr_writer :note

            sig do
              params(is_cached: T::Boolean, note: String).returns(
                T.attached_class
              )
            end
            def self.new(is_cached: nil, note: nil)
            end

            sig { override.returns({ is_cached: T::Boolean, note: String }) }
            def to_hash
            end
          end

          class Credits < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::Credits,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :balance

            sig { params(balance: Integer).void }
            attr_writer :balance

            sig { returns(T.nilable(String)) }
            attr_reader :note

            sig { params(note: String).void }
            attr_writer :note

            sig { returns(T.nilable(Integer)) }
            attr_reader :used

            sig { params(used: Integer).void }
            attr_writer :used

            sig do
              params(balance: Integer, note: String, used: Integer).returns(
                T.attached_class
              )
            end
            def self.new(balance: nil, note: nil, used: nil)
            end

            sig do
              override.returns(
                { balance: Integer, note: String, used: Integer }
              )
            end
            def to_hash
            end
          end

          class RateLimits < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta::RateLimits,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :limit_day

            sig { params(limit_day: Integer).void }
            attr_writer :limit_day

            sig { returns(T.nilable(Integer)) }
            attr_reader :limit_minute

            sig { params(limit_minute: Integer).void }
            attr_writer :limit_minute

            sig { returns(T.nilable(Integer)) }
            attr_reader :remaining_day

            sig { params(remaining_day: Integer).void }
            attr_writer :remaining_day

            sig { returns(T.nilable(Integer)) }
            attr_reader :remaining_minute

            sig { params(remaining_minute: Integer).void }
            attr_writer :remaining_minute

            sig do
              params(
                limit_day: Integer,
                limit_minute: Integer,
                remaining_day: Integer,
                remaining_minute: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              limit_day: nil,
              limit_minute: nil,
              remaining_day: nil,
              remaining_minute: nil
            )
            end

            sig do
              override.returns(
                {
                  limit_day: Integer,
                  limit_minute: Integer,
                  remaining_day: Integer,
                  remaining_minute: Integer
                }
              )
            end
            def to_hash
            end
          end
        end

        class Data < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_change_payout_type

          sig { params(can_change_payout_type: T::Boolean).void }
          attr_writer :can_change_payout_type

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_show_legal_form

          sig { params(can_show_legal_form: T::Boolean).void }
          attr_writer :can_show_legal_form

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data::Dac7
              )
            )
          end
          attr_reader :dac7

          sig do
            params(
              dac7:
                Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data::Dac7::OrHash
            ).void
          end
          attr_writer :dac7

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :hide_banking

          sig { params(hide_banking: T::Boolean).void }
          attr_writer :hide_banking

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_real_id_image

          sig { params(is_real_id_image: T::Boolean).void }
          attr_writer :is_real_id_image

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_w9_exist

          sig { params(is_w9_exist: T::Boolean).void }
          attr_writer :is_w9_exist

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_w9_required

          sig { params(is_w9_required: T::Boolean).void }
          attr_writer :is_w9_required

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_xxx

          sig { params(is_xxx: T::Boolean).void }
          attr_writer :is_xxx

          sig { returns(T.nilable(String)) }
          attr_reader :iv_fail_reason

          sig { params(iv_fail_reason: String).void }
          attr_writer :iv_fail_reason

          sig { returns(T.nilable(String)) }
          attr_reader :iv_status

          sig { params(iv_status: String).void }
          attr_writer :iv_status

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :need_show_edit_w9

          sig { params(need_show_edit_w9: T::Boolean).void }
          attr_writer :need_show_edit_w9

          sig { returns(T.nilable(String)) }
          attr_reader :payout_legal_approve_reject_reason

          sig { params(payout_legal_approve_reject_reason: String).void }
          attr_writer :payout_legal_approve_reject_reason

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :show_iv_button

          sig { params(show_iv_button: T::Boolean).void }
          attr_writer :show_iv_button

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data::Tax
              )
            )
          end
          attr_reader :tax

          sig do
            params(
              tax:
                Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data::Tax::OrHash
            ).void
          end
          attr_writer :tax

          sig do
            params(
              can_change_payout_type: T::Boolean,
              can_show_legal_form: T::Boolean,
              dac7:
                Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data::Dac7::OrHash,
              hide_banking: T::Boolean,
              is_real_id_image: T::Boolean,
              is_w9_exist: T::Boolean,
              is_w9_required: T::Boolean,
              is_xxx: T::Boolean,
              iv_fail_reason: String,
              iv_status: String,
              need_show_edit_w9: T::Boolean,
              payout_legal_approve_reject_reason: String,
              show_iv_button: T::Boolean,
              tax:
                Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data::Tax::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            can_change_payout_type: nil,
            can_show_legal_form: nil,
            dac7: nil,
            hide_banking: nil,
            is_real_id_image: nil,
            is_w9_exist: nil,
            is_w9_required: nil,
            is_xxx: nil,
            iv_fail_reason: nil,
            iv_status: nil,
            need_show_edit_w9: nil,
            payout_legal_approve_reject_reason: nil,
            show_iv_button: nil,
            tax: nil
          )
          end

          sig do
            override.returns(
              {
                can_change_payout_type: T::Boolean,
                can_show_legal_form: T::Boolean,
                dac7:
                  Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data::Dac7,
                hide_banking: T::Boolean,
                is_real_id_image: T::Boolean,
                is_w9_exist: T::Boolean,
                is_w9_required: T::Boolean,
                is_xxx: T::Boolean,
                iv_fail_reason: String,
                iv_status: String,
                need_show_edit_w9: T::Boolean,
                payout_legal_approve_reject_reason: String,
                show_iv_button: T::Boolean,
                tax:
                  Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data::Tax
              }
            )
          end
          def to_hash
          end

          class Dac7 < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data::Dac7,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(T::Array[Integer])) }
            attr_reader :country_ids

            sig { params(country_ids: T::Array[Integer]).void }
            attr_writer :country_ids

            sig { returns(T.nilable(String)) }
            attr_reader :error

            sig { params(error: String).void }
            attr_writer :error

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            sig { returns(T.nilable(String)) }
            attr_reader :state

            sig { params(state: String).void }
            attr_writer :state

            sig { returns(T.nilable(String)) }
            attr_reader :type

            sig { params(type: String).void }
            attr_writer :type

            sig do
              params(
                country_ids: T::Array[Integer],
                error: String,
                required: T::Boolean,
                state: String,
                type: String
              ).returns(T.attached_class)
            end
            def self.new(
              country_ids: nil,
              error: nil,
              required: nil,
              state: nil,
              type: nil
            )
            end

            sig do
              override.returns(
                {
                  country_ids: T::Array[Integer],
                  error: String,
                  required: T::Boolean,
                  state: String,
                  type: String
                }
              )
            end
            def to_hash
            end
          end

          class Tax < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data::Tax,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :country_code

            sig { params(country_code: String).void }
            attr_writer :country_code

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :editable

            sig { params(editable: T::Boolean).void }
            attr_writer :editable

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_banking_disabled

            sig { params(is_banking_disabled: T::Boolean).void }
            attr_writer :is_banking_disabled

            sig do
              params(
                country_code: String,
                editable: T::Boolean,
                is_banking_disabled: T::Boolean
              ).returns(T.attached_class)
            end
            def self.new(
              country_code: nil,
              editable: nil,
              is_banking_disabled: nil
            )
            end

            sig do
              override.returns(
                {
                  country_code: String,
                  editable: T::Boolean,
                  is_banking_disabled: T::Boolean
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
