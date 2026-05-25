# typed: strong

module Onlyfans
  module Models
    class ChargebackListResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::ChargebackListResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Onlyfans::Models::ChargebackListResponse::Meta)) }
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfans::Models::ChargebackListResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig { returns(T.nilable(Onlyfans::Models::ChargebackListResponse::Data)) }
      attr_reader :data

      sig do
        params(
          data: Onlyfans::Models::ChargebackListResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfans::Models::ChargebackListResponse::Meta::OrHash,
          data: Onlyfans::Models::ChargebackListResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::ChargebackListResponse::Meta,
            data: Onlyfans::Models::ChargebackListResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::ChargebackListResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfans::Models::ChargebackListResponse::Meta::Cache)
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfans::Models::ChargebackListResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(Onlyfans::Models::ChargebackListResponse::Meta::Credits)
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::ChargebackListResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::ChargebackListResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfans::Models::ChargebackListResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfans::Models::ChargebackListResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::ChargebackListResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfans::Models::ChargebackListResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfans::Models::ChargebackListResponse::Meta::Cache,
              _credits: Onlyfans::Models::ChargebackListResponse::Meta::Credits,
              _rate_limits:
                Onlyfans::Models::ChargebackListResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::ChargebackListResponse::Meta::Cache,
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
                Onlyfans::Models::ChargebackListResponse::Meta::Credits,
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
            override.returns({ balance: Integer, note: String, used: Integer })
          end
          def to_hash
          end
        end

        class RateLimits < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::ChargebackListResponse::Meta::RateLimits,
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
              Onlyfans::Models::ChargebackListResponse::Data,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[Onlyfans::Models::ChargebackListResponse::Data::List]
            )
          )
        end
        attr_reader :list

        sig do
          params(
            list:
              T::Array[
                Onlyfans::Models::ChargebackListResponse::Data::List::OrHash
              ]
          ).void
        end
        attr_writer :list

        sig { returns(T.nilable(Integer)) }
        attr_reader :marker

        sig { params(marker: Integer).void }
        attr_writer :marker

        sig do
          params(
            list:
              T::Array[
                Onlyfans::Models::ChargebackListResponse::Data::List::OrHash
              ],
            marker: Integer
          ).returns(T.attached_class)
        end
        def self.new(list: nil, marker: nil)
        end

        sig do
          override.returns(
            {
              list:
                T::Array[Onlyfans::Models::ChargebackListResponse::Data::List],
              marker: Integer
            }
          )
        end
        def to_hash
        end

        class List < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::ChargebackListResponse::Data::List,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          sig { returns(T.nilable(String)) }
          attr_reader :created_at

          sig { params(created_at: String).void }
          attr_writer :created_at

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::ChargebackListResponse::Data::List::Payment
              )
            )
          end
          attr_reader :payment

          sig do
            params(
              payment:
                Onlyfans::Models::ChargebackListResponse::Data::List::Payment::OrHash
            ).void
          end
          attr_writer :payment

          sig { returns(T.nilable(String)) }
          attr_reader :payment_type

          sig { params(payment_type: String).void }
          attr_writer :payment_type

          sig do
            params(
              id: Integer,
              created_at: String,
              payment:
                Onlyfans::Models::ChargebackListResponse::Data::List::Payment::OrHash,
              payment_type: String
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            created_at: nil,
            payment: nil,
            payment_type: nil
          )
          end

          sig do
            override.returns(
              {
                id: Integer,
                created_at: String,
                payment:
                  Onlyfans::Models::ChargebackListResponse::Data::List::Payment,
                payment_type: String
              }
            )
          end
          def to_hash
          end

          class Payment < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::ChargebackListResponse::Data::List::Payment,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            sig { returns(T.nilable(Float)) }
            attr_reader :amount

            sig { params(amount: Float).void }
            attr_writer :amount

            sig { returns(T.nilable(String)) }
            attr_reader :created_at

            sig { params(created_at: String).void }
            attr_writer :created_at

            sig { returns(T.nilable(String)) }
            attr_reader :currency

            sig { params(currency: String).void }
            attr_writer :currency

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            sig { returns(T.nilable(Integer)) }
            attr_reader :fee

            sig { params(fee: Integer).void }
            attr_writer :fee

            sig { returns(T.nilable(Integer)) }
            attr_reader :media_tax_amount

            sig { params(media_tax_amount: Integer).void }
            attr_writer :media_tax_amount

            sig { returns(T.nilable(Float)) }
            attr_reader :net

            sig { params(net: Float).void }
            attr_writer :net

            sig { returns(T.nilable(Integer)) }
            attr_reader :payout_pending_days

            sig { params(payout_pending_days: Integer).void }
            attr_writer :payout_pending_days

            sig { returns(T.nilable(String)) }
            attr_reader :status

            sig { params(status: String).void }
            attr_writer :status

            sig { returns(T.nilable(Integer)) }
            attr_reader :tax_amount

            sig { params(tax_amount: Integer).void }
            attr_writer :tax_amount

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::ChargebackListResponse::Data::List::Payment::User
                )
              )
            end
            attr_reader :user

            sig do
              params(
                user:
                  Onlyfans::Models::ChargebackListResponse::Data::List::Payment::User::OrHash
              ).void
            end
            attr_writer :user

            sig { returns(T.nilable(Integer)) }
            attr_reader :vat_amount

            sig { params(vat_amount: Integer).void }
            attr_writer :vat_amount

            sig do
              params(
                id: String,
                amount: Float,
                created_at: String,
                currency: String,
                description: String,
                fee: Integer,
                media_tax_amount: Integer,
                net: Float,
                payout_pending_days: Integer,
                status: String,
                tax_amount: Integer,
                user:
                  Onlyfans::Models::ChargebackListResponse::Data::List::Payment::User::OrHash,
                vat_amount: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              amount: nil,
              created_at: nil,
              currency: nil,
              description: nil,
              fee: nil,
              media_tax_amount: nil,
              net: nil,
              payout_pending_days: nil,
              status: nil,
              tax_amount: nil,
              user: nil,
              vat_amount: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  amount: Float,
                  created_at: String,
                  currency: String,
                  description: String,
                  fee: Integer,
                  media_tax_amount: Integer,
                  net: Float,
                  payout_pending_days: Integer,
                  status: String,
                  tax_amount: Integer,
                  user:
                    Onlyfans::Models::ChargebackListResponse::Data::List::Payment::User,
                  vat_amount: Integer
                }
              )
            end
            def to_hash
            end

            class User < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::ChargebackListResponse::Data::List::Payment::User,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :id

              sig { params(id: Integer).void }
              attr_writer :id

              sig { returns(T.nilable(String)) }
              attr_accessor :avatar

              sig { returns(T.nilable(String)) }
              attr_accessor :avatar_thumbs

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_verified

              sig { params(is_verified: T::Boolean).void }
              attr_writer :is_verified

              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              sig { returns(T.nilable(String)) }
              attr_reader :username

              sig { params(username: String).void }
              attr_writer :username

              sig { returns(T.nilable(String)) }
              attr_reader :view

              sig { params(view: String).void }
              attr_writer :view

              sig do
                params(
                  id: Integer,
                  avatar: T.nilable(String),
                  avatar_thumbs: T.nilable(String),
                  is_verified: T::Boolean,
                  name: String,
                  username: String,
                  view: String
                ).returns(T.attached_class)
              end
              def self.new(
                id: nil,
                avatar: nil,
                avatar_thumbs: nil,
                is_verified: nil,
                name: nil,
                username: nil,
                view: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: Integer,
                    avatar: T.nilable(String),
                    avatar_thumbs: T.nilable(String),
                    is_verified: T::Boolean,
                    name: String,
                    username: String,
                    view: String
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
end
