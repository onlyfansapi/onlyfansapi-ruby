# typed: strong

module Onlyfans
  module Models
    module Banking
      class DetailRetrieveLegalFormDetailsResponse < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta
            )
          )
        end
        attr_reader :_meta

        sig do
          params(
            _meta:
              Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::OrHash
          ).void
        end
        attr_writer :_meta

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            _meta:
              Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::OrHash,
            data:
              Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_meta: nil, data: nil)
        end

        sig do
          override.returns(
            {
              _meta:
                Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta,
              data:
                Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data
            }
          )
        end
        def to_hash
        end

        class Meta < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::Cache
              )
            )
          end
          attr_reader :_cache

          sig do
            params(
              _cache:
                Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::Cache::OrHash
            ).void
          end
          attr_writer :_cache

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::Credits
              )
            )
          end
          attr_reader :_credits

          sig do
            params(
              _credits:
                Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::Credits::OrHash
            ).void
          end
          attr_writer :_credits

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::RateLimits
              )
            )
          end
          attr_reader :_rate_limits

          sig do
            params(
              _rate_limits:
                Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::RateLimits::OrHash
            ).void
          end
          attr_writer :_rate_limits

          sig do
            params(
              _cache:
                Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::Cache::OrHash,
              _credits:
                Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::Credits::OrHash,
              _rate_limits:
                Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::RateLimits::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
          end

          sig do
            override.returns(
              {
                _cache:
                  Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::Cache,
                _credits:
                  Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::Credits,
                _rate_limits:
                  Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::RateLimits
              }
            )
          end
          def to_hash
          end

          class Cache < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::Cache,
                  Onlyfans::Internal::AnyHash
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

          class Credits < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::Credits,
                  Onlyfans::Internal::AnyHash
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

          class RateLimits < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta::RateLimits,
                  Onlyfans::Internal::AnyHash
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

        class Data < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :date_of_birth

          sig { params(date_of_birth: String).void }
          attr_writer :date_of_birth

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data::DocumentType
              )
            )
          end
          attr_reader :document_type

          sig do
            params(
              document_type:
                Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data::DocumentType::OrHash
            ).void
          end
          attr_writer :document_type

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_allowed_dl

          sig { params(is_allowed_dl: T::Boolean).void }
          attr_writer :is_allowed_dl

          sig { returns(T.nilable(String)) }
          attr_reader :private_website

          sig { params(private_website: String).void }
          attr_writer :private_website

          sig { returns(T.nilable(String)) }
          attr_reader :real_address

          sig { params(real_address: String).void }
          attr_writer :real_address

          sig { returns(T.nilable(String)) }
          attr_reader :real_business_name

          sig { params(real_business_name: String).void }
          attr_writer :real_business_name

          sig { returns(T.nilable(String)) }
          attr_reader :real_city

          sig { params(real_city: String).void }
          attr_writer :real_city

          sig { returns(T.nilable(String)) }
          attr_reader :real_first_name

          sig { params(real_first_name: String).void }
          attr_writer :real_first_name

          sig { returns(T.nilable(String)) }
          attr_reader :real_instagram

          sig { params(real_instagram: String).void }
          attr_writer :real_instagram

          sig { returns(T.nilable(String)) }
          attr_reader :real_last_name

          sig { params(real_last_name: String).void }
          attr_writer :real_last_name

          sig { returns(T.nilable(String)) }
          attr_reader :real_postal

          sig { params(real_postal: String).void }
          attr_writer :real_postal

          sig { returns(T.nilable(String)) }
          attr_reader :real_state

          sig { params(real_state: String).void }
          attr_writer :real_state

          sig { returns(T.nilable(String)) }
          attr_reader :real_twitter

          sig { params(real_twitter: String).void }
          attr_writer :real_twitter

          sig do
            params(
              date_of_birth: String,
              document_type:
                Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data::DocumentType::OrHash,
              is_allowed_dl: T::Boolean,
              private_website: String,
              real_address: String,
              real_business_name: String,
              real_city: String,
              real_first_name: String,
              real_instagram: String,
              real_last_name: String,
              real_postal: String,
              real_state: String,
              real_twitter: String
            ).returns(T.attached_class)
          end
          def self.new(
            date_of_birth: nil,
            document_type: nil,
            is_allowed_dl: nil,
            private_website: nil,
            real_address: nil,
            real_business_name: nil,
            real_city: nil,
            real_first_name: nil,
            real_instagram: nil,
            real_last_name: nil,
            real_postal: nil,
            real_state: nil,
            real_twitter: nil
          )
          end

          sig do
            override.returns(
              {
                date_of_birth: String,
                document_type:
                  Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data::DocumentType,
                is_allowed_dl: T::Boolean,
                private_website: String,
                real_address: String,
                real_business_name: String,
                real_city: String,
                real_first_name: String,
                real_instagram: String,
                real_last_name: String,
                real_postal: String,
                real_state: String,
                real_twitter: String
              }
            )
          end
          def to_hash
          end

          class DocumentType < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data::DocumentType,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data::DocumentType::Value
                  ]
                )
              )
            end
            attr_reader :values

            sig do
              params(
                values:
                  T::Array[
                    Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data::DocumentType::Value::OrHash
                  ]
              ).void
            end
            attr_writer :values

            sig do
              params(
                values:
                  T::Array[
                    Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data::DocumentType::Value::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(values: nil)
            end

            sig do
              override.returns(
                {
                  values:
                    T::Array[
                      Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data::DocumentType::Value
                    ]
                }
              )
            end
            def to_hash
            end

            class Value < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data::DocumentType::Value,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :code

              sig { params(code: String).void }
              attr_writer :code

              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              sig do
                params(code: String, name: String).returns(T.attached_class)
              end
              def self.new(code: nil, name: nil)
              end

              sig { override.returns({ code: String, name: String }) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
