# typed: strong

module Onlyfansapi
  module Models
    module Banking
      class DetailRetrieveBankDetailsResponse < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta
            )
          )
        end
        attr_reader :_meta

        sig do
          params(
            _meta:
              Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::OrHash
          ).void
        end
        attr_writer :_meta

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            _meta:
              Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::OrHash,
            data:
              Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_meta: nil, data: nil)
        end

        sig do
          override.returns(
            {
              _meta:
                Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta,
              data:
                Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data
            }
          )
        end
        def to_hash
        end

        class Meta < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Cache
              )
            )
          end
          attr_reader :_cache

          sig do
            params(
              _cache:
                Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Cache::OrHash
            ).void
          end
          attr_writer :_cache

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Credits
              )
            )
          end
          attr_reader :_credits

          sig do
            params(
              _credits:
                Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Credits::OrHash
            ).void
          end
          attr_writer :_credits

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::RateLimits
              )
            )
          end
          attr_reader :_rate_limits

          sig do
            params(
              _rate_limits:
                Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::RateLimits::OrHash
            ).void
          end
          attr_writer :_rate_limits

          sig do
            params(
              _cache:
                Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Cache::OrHash,
              _credits:
                Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Credits::OrHash,
              _rate_limits:
                Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::RateLimits::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
          end

          sig do
            override.returns(
              {
                _cache:
                  Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Cache,
                _credits:
                  Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Credits,
                _rate_limits:
                  Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::RateLimits
              }
            )
          end
          def to_hash
          end

          class Cache < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Cache,
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
                  Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::Credits,
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
                  Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta::RateLimits,
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
                Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_payout_data_filled

          sig { params(is_payout_data_filled: T::Boolean).void }
          attr_writer :is_payout_data_filled

          sig { returns(T.nilable(String)) }
          attr_reader :payout_code

          sig { params(payout_code: String).void }
          attr_writer :payout_code

          sig do
            returns(
              T.nilable(
                T::Array[
                  Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout
                ]
              )
            )
          end
          attr_reader :payouts

          sig do
            params(
              payouts:
                T::Array[
                  Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::OrHash
                ]
            ).void
          end
          attr_writer :payouts

          sig do
            params(
              is_payout_data_filled: T::Boolean,
              payout_code: String,
              payouts:
                T::Array[
                  Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            is_payout_data_filled: nil,
            payout_code: nil,
            payouts: nil
          )
          end

          sig do
            override.returns(
              {
                is_payout_data_filled: T::Boolean,
                payout_code: String,
                payouts:
                  T::Array[
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout
                  ]
              }
            )
          end
          def to_hash
          end

          class Payout < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :code

            sig { params(code: String).void }
            attr_writer :code

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields
                )
              )
            end
            attr_reader :fields

            sig do
              params(
                fields:
                  Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::OrHash
              ).void
            end
            attr_writer :fields

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :fields_order

            sig { params(fields_order: T::Array[String]).void }
            attr_writer :fields_order

            sig { returns(T.nilable(Integer)) }
            attr_reader :min_payout_summ

            sig { params(min_payout_summ: Integer).void }
            attr_writer :min_payout_summ

            sig { returns(T.nilable(String)) }
            attr_reader :payout_time

            sig { params(payout_time: String).void }
            attr_writer :payout_time

            sig { returns(T.nilable(String)) }
            attr_reader :subtitle

            sig { params(subtitle: String).void }
            attr_writer :subtitle

            sig { returns(T.nilable(String)) }
            attr_reader :title

            sig { params(title: String).void }
            attr_writer :title

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping
                )
              )
            end
            attr_reader :ui_mapping

            sig do
              params(
                ui_mapping:
                  Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::OrHash
              ).void
            end
            attr_writer :ui_mapping

            sig do
              params(
                code: String,
                description: String,
                fields:
                  Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::OrHash,
                fields_order: T::Array[String],
                min_payout_summ: Integer,
                payout_time: String,
                subtitle: String,
                title: String,
                ui_mapping:
                  Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              code: nil,
              description: nil,
              fields: nil,
              fields_order: nil,
              min_payout_summ: nil,
              payout_time: nil,
              subtitle: nil,
              title: nil,
              ui_mapping: nil
            )
            end

            sig do
              override.returns(
                {
                  code: String,
                  description: String,
                  fields:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields,
                  fields_order: T::Array[String],
                  min_payout_summ: Integer,
                  payout_time: String,
                  subtitle: String,
                  title: String,
                  ui_mapping:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping
                }
              )
            end
            def to_hash
            end

            class Fields < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields,
                    Onlyfansapi::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address
                  )
                )
              end
              attr_reader :address

              sig do
                params(
                  address:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address::OrHash
                ).void
              end
              attr_writer :address

              sig do
                returns(
                  T.nilable(
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName
                  )
                )
              end
              attr_reader :bank_name

              sig do
                params(
                  bank_name:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName::OrHash
                ).void
              end
              attr_writer :bank_name

              sig do
                returns(
                  T.nilable(
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic
                  )
                )
              end
              attr_reader :bic

              sig do
                params(
                  bic:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic::OrHash
                ).void
              end
              attr_writer :bic

              sig do
                returns(
                  T.nilable(
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City
                  )
                )
              end
              attr_reader :city

              sig do
                params(
                  city:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City::OrHash
                ).void
              end
              attr_writer :city

              sig do
                returns(
                  T.nilable(
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country
                  )
                )
              end
              attr_reader :country

              sig do
                params(
                  country:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country::OrHash
                ).void
              end
              attr_writer :country

              sig do
                returns(
                  T.nilable(
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName
                  )
                )
              end
              attr_reader :first_name

              sig do
                params(
                  first_name:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::OrHash
                ).void
              end
              attr_writer :first_name

              sig do
                returns(
                  T.nilable(
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban
                  )
                )
              end
              attr_reader :iban

              sig do
                params(
                  iban:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::OrHash
                ).void
              end
              attr_writer :iban

              sig do
                returns(
                  T.nilable(
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName
                  )
                )
              end
              attr_reader :last_name

              sig do
                params(
                  last_name:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::OrHash
                ).void
              end
              attr_writer :last_name

              sig do
                returns(
                  T.nilable(
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal
                  )
                )
              end
              attr_reader :postal

              sig do
                params(
                  postal:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal::OrHash
                ).void
              end
              attr_writer :postal

              sig do
                params(
                  address:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address::OrHash,
                  bank_name:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName::OrHash,
                  bic:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic::OrHash,
                  city:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City::OrHash,
                  country:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country::OrHash,
                  first_name:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::OrHash,
                  iban:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::OrHash,
                  last_name:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::OrHash,
                  postal:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                address: nil,
                bank_name: nil,
                bic: nil,
                city: nil,
                country: nil,
                first_name: nil,
                iban: nil,
                last_name: nil,
                postal: nil
              )
              end

              sig do
                override.returns(
                  {
                    address:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address,
                    bank_name:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName,
                    bic:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic,
                    city:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City,
                    country:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country,
                    first_name:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName,
                    iban:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban,
                    last_name:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName,
                    postal:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal
                  }
                )
              end
              def to_hash
              end

              class Address < Onlyfansapi::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address,
                      Onlyfansapi::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address::Label
                    )
                  )
                end
                attr_reader :label

                sig do
                  params(
                    label:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address::Label::OrHash
                  ).void
                end
                attr_writer :label

                sig { returns(T.nilable(Integer)) }
                attr_reader :maxlength

                sig { params(maxlength: Integer).void }
                attr_writer :maxlength

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :required

                sig { params(required: T::Boolean).void }
                attr_writer :required

                sig { returns(T.nilable(String)) }
                attr_reader :value

                sig { params(value: String).void }
                attr_writer :value

                sig do
                  params(
                    label:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address::Label::OrHash,
                    maxlength: Integer,
                    required: T::Boolean,
                    value: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  label: nil,
                  maxlength: nil,
                  required: nil,
                  value: nil
                )
                end

                sig do
                  override.returns(
                    {
                      label:
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address::Label,
                      maxlength: Integer,
                      required: T::Boolean,
                      value: String
                    }
                  )
                end
                def to_hash
                end

                class Label < Onlyfansapi::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Address::Label,
                        Onlyfansapi::Internal::AnyHash
                      )
                    end

                  sig { returns(T.nilable(String)) }
                  attr_reader :key

                  sig { params(key: String).void }
                  attr_writer :key

                  sig { params(key: String).returns(T.attached_class) }
                  def self.new(key: nil)
                  end

                  sig { override.returns({ key: String }) }
                  def to_hash
                  end
                end
              end

              class BankName < Onlyfansapi::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName,
                      Onlyfansapi::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName::Label
                    )
                  )
                end
                attr_reader :label

                sig do
                  params(
                    label:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName::Label::OrHash
                  ).void
                end
                attr_writer :label

                sig { returns(T.nilable(Integer)) }
                attr_reader :maxlength

                sig { params(maxlength: Integer).void }
                attr_writer :maxlength

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :required

                sig { params(required: T::Boolean).void }
                attr_writer :required

                sig { returns(T.nilable(String)) }
                attr_reader :value

                sig { params(value: String).void }
                attr_writer :value

                sig do
                  params(
                    label:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName::Label::OrHash,
                    maxlength: Integer,
                    required: T::Boolean,
                    value: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  label: nil,
                  maxlength: nil,
                  required: nil,
                  value: nil
                )
                end

                sig do
                  override.returns(
                    {
                      label:
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName::Label,
                      maxlength: Integer,
                      required: T::Boolean,
                      value: String
                    }
                  )
                end
                def to_hash
                end

                class Label < Onlyfansapi::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::BankName::Label,
                        Onlyfansapi::Internal::AnyHash
                      )
                    end

                  sig { returns(T.nilable(String)) }
                  attr_reader :key

                  sig { params(key: String).void }
                  attr_writer :key

                  sig { params(key: String).returns(T.attached_class) }
                  def self.new(key: nil)
                  end

                  sig { override.returns({ key: String }) }
                  def to_hash
                  end
                end
              end

              class Bic < Onlyfansapi::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic,
                      Onlyfansapi::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic::Label
                    )
                  )
                end
                attr_reader :label

                sig do
                  params(
                    label:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic::Label::OrHash
                  ).void
                end
                attr_writer :label

                sig { returns(T.nilable(Integer)) }
                attr_reader :maxlength

                sig { params(maxlength: Integer).void }
                attr_writer :maxlength

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :required

                sig { params(required: T::Boolean).void }
                attr_writer :required

                sig { returns(T.nilable(String)) }
                attr_reader :value

                sig { params(value: String).void }
                attr_writer :value

                sig do
                  params(
                    label:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic::Label::OrHash,
                    maxlength: Integer,
                    required: T::Boolean,
                    value: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  label: nil,
                  maxlength: nil,
                  required: nil,
                  value: nil
                )
                end

                sig do
                  override.returns(
                    {
                      label:
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic::Label,
                      maxlength: Integer,
                      required: T::Boolean,
                      value: String
                    }
                  )
                end
                def to_hash
                end

                class Label < Onlyfansapi::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Bic::Label,
                        Onlyfansapi::Internal::AnyHash
                      )
                    end

                  sig { returns(T.nilable(String)) }
                  attr_reader :key

                  sig { params(key: String).void }
                  attr_writer :key

                  sig { params(key: String).returns(T.attached_class) }
                  def self.new(key: nil)
                  end

                  sig { override.returns({ key: String }) }
                  def to_hash
                  end
                end
              end

              class City < Onlyfansapi::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City,
                      Onlyfansapi::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City::Label
                    )
                  )
                end
                attr_reader :label

                sig do
                  params(
                    label:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City::Label::OrHash
                  ).void
                end
                attr_writer :label

                sig { returns(T.nilable(Integer)) }
                attr_reader :maxlength

                sig { params(maxlength: Integer).void }
                attr_writer :maxlength

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :required

                sig { params(required: T::Boolean).void }
                attr_writer :required

                sig { returns(T.nilable(String)) }
                attr_reader :value

                sig { params(value: String).void }
                attr_writer :value

                sig do
                  params(
                    label:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City::Label::OrHash,
                    maxlength: Integer,
                    required: T::Boolean,
                    value: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  label: nil,
                  maxlength: nil,
                  required: nil,
                  value: nil
                )
                end

                sig do
                  override.returns(
                    {
                      label:
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City::Label,
                      maxlength: Integer,
                      required: T::Boolean,
                      value: String
                    }
                  )
                end
                def to_hash
                end

                class Label < Onlyfansapi::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::City::Label,
                        Onlyfansapi::Internal::AnyHash
                      )
                    end

                  sig { returns(T.nilable(String)) }
                  attr_reader :key

                  sig { params(key: String).void }
                  attr_writer :key

                  sig { params(key: String).returns(T.attached_class) }
                  def self.new(key: nil)
                  end

                  sig { override.returns({ key: String }) }
                  def to_hash
                  end
                end
              end

              class Country < Onlyfansapi::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country,
                      Onlyfansapi::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country::Label
                    )
                  )
                end
                attr_reader :label

                sig do
                  params(
                    label:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country::Label::OrHash
                  ).void
                end
                attr_writer :label

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :readonly

                sig { params(readonly: T::Boolean).void }
                attr_writer :readonly

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :uionly

                sig { params(uionly: T::Boolean).void }
                attr_writer :uionly

                sig { returns(T.nilable(String)) }
                attr_reader :value

                sig { params(value: String).void }
                attr_writer :value

                sig do
                  params(
                    label:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country::Label::OrHash,
                    readonly: T::Boolean,
                    uionly: T::Boolean,
                    value: String
                  ).returns(T.attached_class)
                end
                def self.new(label: nil, readonly: nil, uionly: nil, value: nil)
                end

                sig do
                  override.returns(
                    {
                      label:
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country::Label,
                      readonly: T::Boolean,
                      uionly: T::Boolean,
                      value: String
                    }
                  )
                end
                def to_hash
                end

                class Label < Onlyfansapi::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Country::Label,
                        Onlyfansapi::Internal::AnyHash
                      )
                    end

                  sig { returns(T.nilable(String)) }
                  attr_reader :key

                  sig { params(key: String).void }
                  attr_writer :key

                  sig { params(key: String).returns(T.attached_class) }
                  def self.new(key: nil)
                  end

                  sig { override.returns({ key: String }) }
                  def to_hash
                  end
                end
              end

              class FirstName < Onlyfansapi::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName,
                      Onlyfansapi::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Label
                    )
                  )
                end
                attr_reader :label

                sig do
                  params(
                    label:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Label::OrHash
                  ).void
                end
                attr_writer :label

                sig { returns(T.nilable(Integer)) }
                attr_reader :maxlength

                sig { params(maxlength: Integer).void }
                attr_writer :maxlength

                sig do
                  returns(
                    T.nilable(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput
                    )
                  )
                end
                attr_reader :oninput

                sig do
                  params(
                    oninput:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput::OrHash
                  ).void
                end
                attr_writer :oninput

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :readonly

                sig { params(readonly: T::Boolean).void }
                attr_writer :readonly

                sig { returns(T.nilable(String)) }
                attr_reader :value

                sig { params(value: String).void }
                attr_writer :value

                sig do
                  params(
                    label:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Label::OrHash,
                    maxlength: Integer,
                    oninput:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput::OrHash,
                    readonly: T::Boolean,
                    value: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  label: nil,
                  maxlength: nil,
                  oninput: nil,
                  readonly: nil,
                  value: nil
                )
                end

                sig do
                  override.returns(
                    {
                      label:
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Label,
                      maxlength: Integer,
                      oninput:
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput,
                      readonly: T::Boolean,
                      value: String
                    }
                  )
                end
                def to_hash
                end

                class Label < Onlyfansapi::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Label,
                        Onlyfansapi::Internal::AnyHash
                      )
                    end

                  sig { returns(T.nilable(String)) }
                  attr_reader :key

                  sig { params(key: String).void }
                  attr_writer :key

                  sig { params(key: String).returns(T.attached_class) }
                  def self.new(key: nil)
                  end

                  sig { override.returns({ key: String }) }
                  def to_hash
                  end
                end

                class Oninput < Onlyfansapi::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput,
                        Onlyfansapi::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      T.nilable(
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput::Replace
                      )
                    )
                  end
                  attr_reader :replace

                  sig do
                    params(
                      replace:
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput::Replace::OrHash
                    ).void
                  end
                  attr_writer :replace

                  sig do
                    params(
                      replace:
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput::Replace::OrHash
                    ).returns(T.attached_class)
                  end
                  def self.new(replace: nil)
                  end

                  sig do
                    override.returns(
                      {
                        replace:
                          Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput::Replace
                      }
                    )
                  end
                  def to_hash
                  end

                  class Replace < Onlyfansapi::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::FirstName::Oninput::Replace,
                          Onlyfansapi::Internal::AnyHash
                        )
                      end

                    sig { returns(T.nilable(String)) }
                    attr_reader :flag

                    sig { params(flag: String).void }
                    attr_writer :flag

                    sig { returns(T.nilable(String)) }
                    attr_reader :pattern

                    sig { params(pattern: String).void }
                    attr_writer :pattern

                    sig do
                      params(flag: String, pattern: String).returns(
                        T.attached_class
                      )
                    end
                    def self.new(flag: nil, pattern: nil)
                    end

                    sig { override.returns({ flag: String, pattern: String }) }
                    def to_hash
                    end
                  end
                end
              end

              class Iban < Onlyfansapi::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban,
                      Onlyfansapi::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Label
                    )
                  )
                end
                attr_reader :label

                sig do
                  params(
                    label:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Label::OrHash
                  ).void
                end
                attr_writer :label

                sig do
                  returns(
                    T.nilable(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Regex
                    )
                  )
                end
                attr_reader :regex

                sig do
                  params(
                    regex:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Regex::OrHash
                  ).void
                end
                attr_writer :regex

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :required

                sig { params(required: T::Boolean).void }
                attr_writer :required

                sig { returns(T.nilable(String)) }
                attr_reader :value

                sig { params(value: String).void }
                attr_writer :value

                sig do
                  params(
                    label:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Label::OrHash,
                    regex:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Regex::OrHash,
                    required: T::Boolean,
                    value: String
                  ).returns(T.attached_class)
                end
                def self.new(label: nil, regex: nil, required: nil, value: nil)
                end

                sig do
                  override.returns(
                    {
                      label:
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Label,
                      regex:
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Regex,
                      required: T::Boolean,
                      value: String
                    }
                  )
                end
                def to_hash
                end

                class Label < Onlyfansapi::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Label,
                        Onlyfansapi::Internal::AnyHash
                      )
                    end

                  sig { returns(T.nilable(String)) }
                  attr_reader :key

                  sig { params(key: String).void }
                  attr_writer :key

                  sig { params(key: String).returns(T.attached_class) }
                  def self.new(key: nil)
                  end

                  sig { override.returns({ key: String }) }
                  def to_hash
                  end
                end

                class Regex < Onlyfansapi::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Iban::Regex,
                        Onlyfansapi::Internal::AnyHash
                      )
                    end

                  sig { returns(T.nilable(String)) }
                  attr_reader :flag

                  sig { params(flag: String).void }
                  attr_writer :flag

                  sig { returns(T.nilable(String)) }
                  attr_reader :pattern

                  sig { params(pattern: String).void }
                  attr_writer :pattern

                  sig do
                    params(flag: String, pattern: String).returns(
                      T.attached_class
                    )
                  end
                  def self.new(flag: nil, pattern: nil)
                  end

                  sig { override.returns({ flag: String, pattern: String }) }
                  def to_hash
                  end
                end
              end

              class LastName < Onlyfansapi::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName,
                      Onlyfansapi::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Label
                    )
                  )
                end
                attr_reader :label

                sig do
                  params(
                    label:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Label::OrHash
                  ).void
                end
                attr_writer :label

                sig { returns(T.nilable(Integer)) }
                attr_reader :maxlength

                sig { params(maxlength: Integer).void }
                attr_writer :maxlength

                sig do
                  returns(
                    T.nilable(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput
                    )
                  )
                end
                attr_reader :oninput

                sig do
                  params(
                    oninput:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput::OrHash
                  ).void
                end
                attr_writer :oninput

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :readonly

                sig { params(readonly: T::Boolean).void }
                attr_writer :readonly

                sig { returns(T.nilable(String)) }
                attr_reader :value

                sig { params(value: String).void }
                attr_writer :value

                sig do
                  params(
                    label:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Label::OrHash,
                    maxlength: Integer,
                    oninput:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput::OrHash,
                    readonly: T::Boolean,
                    value: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  label: nil,
                  maxlength: nil,
                  oninput: nil,
                  readonly: nil,
                  value: nil
                )
                end

                sig do
                  override.returns(
                    {
                      label:
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Label,
                      maxlength: Integer,
                      oninput:
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput,
                      readonly: T::Boolean,
                      value: String
                    }
                  )
                end
                def to_hash
                end

                class Label < Onlyfansapi::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Label,
                        Onlyfansapi::Internal::AnyHash
                      )
                    end

                  sig { returns(T.nilable(String)) }
                  attr_reader :key

                  sig { params(key: String).void }
                  attr_writer :key

                  sig { params(key: String).returns(T.attached_class) }
                  def self.new(key: nil)
                  end

                  sig { override.returns({ key: String }) }
                  def to_hash
                  end
                end

                class Oninput < Onlyfansapi::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput,
                        Onlyfansapi::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      T.nilable(
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput::Replace
                      )
                    )
                  end
                  attr_reader :replace

                  sig do
                    params(
                      replace:
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput::Replace::OrHash
                    ).void
                  end
                  attr_writer :replace

                  sig do
                    params(
                      replace:
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput::Replace::OrHash
                    ).returns(T.attached_class)
                  end
                  def self.new(replace: nil)
                  end

                  sig do
                    override.returns(
                      {
                        replace:
                          Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput::Replace
                      }
                    )
                  end
                  def to_hash
                  end

                  class Replace < Onlyfansapi::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::LastName::Oninput::Replace,
                          Onlyfansapi::Internal::AnyHash
                        )
                      end

                    sig { returns(T.nilable(String)) }
                    attr_reader :flag

                    sig { params(flag: String).void }
                    attr_writer :flag

                    sig { returns(T.nilable(String)) }
                    attr_reader :pattern

                    sig { params(pattern: String).void }
                    attr_writer :pattern

                    sig do
                      params(flag: String, pattern: String).returns(
                        T.attached_class
                      )
                    end
                    def self.new(flag: nil, pattern: nil)
                    end

                    sig { override.returns({ flag: String, pattern: String }) }
                    def to_hash
                    end
                  end
                end
              end

              class Postal < Onlyfansapi::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal,
                      Onlyfansapi::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal::Label
                    )
                  )
                end
                attr_reader :label

                sig do
                  params(
                    label:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal::Label::OrHash
                  ).void
                end
                attr_writer :label

                sig { returns(T.nilable(Integer)) }
                attr_reader :maxlength

                sig { params(maxlength: Integer).void }
                attr_writer :maxlength

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :required

                sig { params(required: T::Boolean).void }
                attr_writer :required

                sig { returns(T.nilable(String)) }
                attr_reader :value

                sig { params(value: String).void }
                attr_writer :value

                sig do
                  params(
                    label:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal::Label::OrHash,
                    maxlength: Integer,
                    required: T::Boolean,
                    value: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  label: nil,
                  maxlength: nil,
                  required: nil,
                  value: nil
                )
                end

                sig do
                  override.returns(
                    {
                      label:
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal::Label,
                      maxlength: Integer,
                      required: T::Boolean,
                      value: String
                    }
                  )
                end
                def to_hash
                end

                class Label < Onlyfansapi::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::Fields::Postal::Label,
                        Onlyfansapi::Internal::AnyHash
                      )
                    end

                  sig { returns(T.nilable(String)) }
                  attr_reader :key

                  sig { params(key: String).void }
                  attr_writer :key

                  sig { params(key: String).returns(T.attached_class) }
                  def self.new(key: nil)
                  end

                  sig { override.returns({ key: String }) }
                  def to_hash
                  end
                end
              end
            end

            class UiMapping < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping,
                    Onlyfansapi::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert
                  )
                )
              end
              attr_reader :alert

              sig do
                params(
                  alert:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert::OrHash
                ).void
              end
              attr_writer :alert

              sig do
                returns(
                  T.nilable(
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::BtnSubmit
                  )
                )
              end
              attr_reader :btn_submit

              sig do
                params(
                  btn_submit:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::BtnSubmit::OrHash
                ).void
              end
              attr_writer :btn_submit

              sig do
                returns(
                  T.nilable(
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Title
                  )
                )
              end
              attr_reader :title

              sig do
                params(
                  title:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Title::OrHash
                ).void
              end
              attr_writer :title

              sig do
                params(
                  alert:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert::OrHash,
                  btn_submit:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::BtnSubmit::OrHash,
                  title:
                    Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Title::OrHash
                ).returns(T.attached_class)
              end
              def self.new(alert: nil, btn_submit: nil, title: nil)
              end

              sig do
                override.returns(
                  {
                    alert:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert,
                    btn_submit:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::BtnSubmit,
                    title:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Title
                  }
                )
              end
              def to_hash
              end

              class Alert < Onlyfansapi::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert,
                      Onlyfansapi::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(String)) }
                attr_reader :class_

                sig { params(class_: String).void }
                attr_writer :class_

                sig do
                  returns(
                    T.nilable(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert::Text
                    )
                  )
                end
                attr_reader :text

                sig do
                  params(
                    text:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert::Text::OrHash
                  ).void
                end
                attr_writer :text

                sig do
                  params(
                    class_: String,
                    text:
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert::Text::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(class_: nil, text: nil)
                end

                sig do
                  override.returns(
                    {
                      class_: String,
                      text:
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert::Text
                    }
                  )
                end
                def to_hash
                end

                class Text < Onlyfansapi::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Alert::Text,
                        Onlyfansapi::Internal::AnyHash
                      )
                    end

                  sig { returns(T.nilable(String)) }
                  attr_reader :key

                  sig { params(key: String).void }
                  attr_writer :key

                  sig { params(key: String).returns(T.attached_class) }
                  def self.new(key: nil)
                  end

                  sig { override.returns({ key: String }) }
                  def to_hash
                  end
                end
              end

              class BtnSubmit < Onlyfansapi::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::BtnSubmit,
                      Onlyfansapi::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(String)) }
                attr_reader :key

                sig { params(key: String).void }
                attr_writer :key

                sig { params(key: String).returns(T.attached_class) }
                def self.new(key: nil)
                end

                sig { override.returns({ key: String }) }
                def to_hash
                end
              end

              class Title < Onlyfansapi::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data::Payout::UiMapping::Title,
                      Onlyfansapi::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(String)) }
                attr_reader :key

                sig { params(key: String).void }
                attr_writer :key

                sig { params(key: String).returns(T.attached_class) }
                def self.new(key: nil)
                end

                sig { override.returns({ key: String }) }
                def to_hash
                end
              end
            end
          end
        end
      end
    end
  end
end
