# typed: strong

module Onlyfans
  module Models
    module Banking
      class DetailRetrieveDac7FormDetailsResponse < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta
            )
          )
        end
        attr_reader :_meta

        sig do
          params(
            _meta:
              Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::OrHash
          ).void
        end
        attr_writer :_meta

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            _meta:
              Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::OrHash,
            data:
              Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_meta: nil, data: nil)
        end

        sig do
          override.returns(
            {
              _meta:
                Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta,
              data:
                Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Data
            }
          )
        end
        def to_hash
        end

        class Meta < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::Cache
              )
            )
          end
          attr_reader :_cache

          sig do
            params(
              _cache:
                Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::Cache::OrHash
            ).void
          end
          attr_writer :_cache

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::Credits
              )
            )
          end
          attr_reader :_credits

          sig do
            params(
              _credits:
                Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::Credits::OrHash
            ).void
          end
          attr_writer :_credits

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::RateLimits
              )
            )
          end
          attr_reader :_rate_limits

          sig do
            params(
              _rate_limits:
                Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::RateLimits::OrHash
            ).void
          end
          attr_writer :_rate_limits

          sig do
            params(
              _cache:
                Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::Cache::OrHash,
              _credits:
                Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::Credits::OrHash,
              _rate_limits:
                Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::RateLimits::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
          end

          sig do
            override.returns(
              {
                _cache:
                  Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::Cache,
                _credits:
                  Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::Credits,
                _rate_limits:
                  Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::RateLimits
              }
            )
          end
          def to_hash
          end

          class Cache < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::Cache,
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
                  Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::Credits,
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
                  Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta::RateLimits,
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
                Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Data,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :address

          sig { params(address: String).void }
          attr_writer :address

          sig { returns(T.nilable(String)) }
          attr_reader :city

          sig { params(city: String).void }
          attr_writer :city

          sig { returns(T.nilable(String)) }
          attr_reader :city_of_birth

          sig { params(city_of_birth: String).void }
          attr_writer :city_of_birth

          sig { returns(T.nilable(Integer)) }
          attr_reader :country_id

          sig { params(country_id: Integer).void }
          attr_writer :country_id

          sig { returns(T.nilable(Integer)) }
          attr_reader :country_of_birth_id

          sig { params(country_of_birth_id: Integer).void }
          attr_writer :country_of_birth_id

          sig { returns(T.nilable(Integer)) }
          attr_reader :country_of_residence_id

          sig { params(country_of_residence_id: Integer).void }
          attr_writer :country_of_residence_id

          sig { returns(T.nilable(String)) }
          attr_reader :dob

          sig { params(dob: String).void }
          attr_writer :dob

          sig { returns(T.nilable(String)) }
          attr_reader :first_name

          sig { params(first_name: String).void }
          attr_writer :first_name

          sig { returns(T.nilable(Integer)) }
          attr_reader :issuing_country_id

          sig { params(issuing_country_id: Integer).void }
          attr_writer :issuing_country_id

          sig { returns(T.nilable(String)) }
          attr_reader :last_name

          sig { params(last_name: String).void }
          attr_writer :last_name

          sig { returns(T.nilable(String)) }
          attr_reader :state

          sig { params(state: String).void }
          attr_writer :state

          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          sig { returns(T.nilable(String)) }
          attr_reader :tax_id

          sig { params(tax_id: String).void }
          attr_writer :tax_id

          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          sig { returns(T.nilable(String)) }
          attr_reader :vat_number

          sig { params(vat_number: String).void }
          attr_writer :vat_number

          sig { returns(T.nilable(String)) }
          attr_reader :zip

          sig { params(zip: String).void }
          attr_writer :zip

          sig do
            params(
              address: String,
              city: String,
              city_of_birth: String,
              country_id: Integer,
              country_of_birth_id: Integer,
              country_of_residence_id: Integer,
              dob: String,
              first_name: String,
              issuing_country_id: Integer,
              last_name: String,
              state: String,
              status: String,
              tax_id: String,
              type: String,
              vat_number: String,
              zip: String
            ).returns(T.attached_class)
          end
          def self.new(
            address: nil,
            city: nil,
            city_of_birth: nil,
            country_id: nil,
            country_of_birth_id: nil,
            country_of_residence_id: nil,
            dob: nil,
            first_name: nil,
            issuing_country_id: nil,
            last_name: nil,
            state: nil,
            status: nil,
            tax_id: nil,
            type: nil,
            vat_number: nil,
            zip: nil
          )
          end

          sig do
            override.returns(
              {
                address: String,
                city: String,
                city_of_birth: String,
                country_id: Integer,
                country_of_birth_id: Integer,
                country_of_residence_id: Integer,
                dob: String,
                first_name: String,
                issuing_country_id: Integer,
                last_name: String,
                state: String,
                status: String,
                tax_id: String,
                type: String,
                vat_number: String,
                zip: String
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
