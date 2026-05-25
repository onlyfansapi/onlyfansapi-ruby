# typed: strong

module Onlyfans
  module Models
    class SmartLinkListSpendersResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::SmartLinkListSpendersResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Onlyfans::Models::SmartLinkListSpendersResponse::Meta)
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfans::Models::SmartLinkListSpendersResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(
            T::Array[Onlyfans::Models::SmartLinkListSpendersResponse::Data]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Onlyfans::Models::SmartLinkListSpendersResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfans::Models::SmartLinkListSpendersResponse::Meta::OrHash,
          data:
            T::Array[
              Onlyfans::Models::SmartLinkListSpendersResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::SmartLinkListSpendersResponse::Meta,
            data:
              T::Array[Onlyfans::Models::SmartLinkListSpendersResponse::Data]
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::SmartLinkListSpendersResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SmartLinkListSpendersResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfans::Models::SmartLinkListSpendersResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SmartLinkListSpendersResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::SmartLinkListSpendersResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          params(
            _cache:
              Onlyfans::Models::SmartLinkListSpendersResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::SmartLinkListSpendersResponse::Meta::Credits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfans::Models::SmartLinkListSpendersResponse::Meta::Cache,
              _credits:
                Onlyfans::Models::SmartLinkListSpendersResponse::Meta::Credits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkListSpendersResponse::Meta::Cache,
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
                Onlyfans::Models::SmartLinkListSpendersResponse::Meta::Credits,
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
      end

      class Data < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::SmartLinkListSpendersResponse::Data,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :onlyfans_id

        sig { params(onlyfans_id: String).void }
        attr_writer :onlyfans_id

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SmartLinkListSpendersResponse::Data::Revenue
            )
          )
        end
        attr_reader :revenue

        sig do
          params(
            revenue:
              Onlyfans::Models::SmartLinkListSpendersResponse::Data::Revenue::OrHash
          ).void
        end
        attr_writer :revenue

        sig { returns(T.nilable(String)) }
        attr_reader :username

        sig { params(username: String).void }
        attr_writer :username

        sig do
          params(
            onlyfans_id: String,
            revenue:
              Onlyfans::Models::SmartLinkListSpendersResponse::Data::Revenue::OrHash,
            username: String
          ).returns(T.attached_class)
        end
        def self.new(onlyfans_id: nil, revenue: nil, username: nil)
        end

        sig do
          override.returns(
            {
              onlyfans_id: String,
              revenue:
                Onlyfans::Models::SmartLinkListSpendersResponse::Data::Revenue,
              username: String
            }
          )
        end
        def to_hash
        end

        class Revenue < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkListSpendersResponse::Data::Revenue,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :calculated_at

          sig { params(calculated_at: String).void }
          attr_writer :calculated_at

          sig { returns(T.nilable(Float)) }
          attr_reader :total

          sig { params(total: Float).void }
          attr_writer :total

          sig do
            params(calculated_at: String, total: Float).returns(
              T.attached_class
            )
          end
          def self.new(calculated_at: nil, total: nil)
          end

          sig { override.returns({ calculated_at: String, total: Float }) }
          def to_hash
          end
        end
      end
    end
  end
end
