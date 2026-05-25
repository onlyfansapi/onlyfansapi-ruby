# typed: strong

module Onlyfans
  module Models
    class PayoutRetrieveEarningStatisticsResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta
          )
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta:
            Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(
            Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta:
            Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::OrHash,
          data:
            Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta:
              Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta,
            data:
              Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Cache,
              _credits:
                Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Credits,
              _rate_limits:
                Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Cache,
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
                Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Credits,
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
                Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Meta::RateLimits,
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
              Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List
            )
          )
        end
        attr_reader :list

        sig do
          params(
            list:
              Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::OrHash
          ).void
        end
        attr_writer :list

        sig do
          params(
            list:
              Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::OrHash
          ).returns(T.attached_class)
        end
        def self.new(list: nil)
        end

        sig do
          override.returns(
            {
              list:
                Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List
            }
          )
        end
        def to_hash
        end

        class List < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months
              )
            )
          end
          attr_reader :months

          sig do
            params(
              months:
                Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::OrHash
            ).void
          end
          attr_writer :months

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total
              )
            )
          end
          attr_reader :total

          sig do
            params(
              total:
                Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::OrHash
            ).void
          end
          attr_writer :total

          sig do
            params(
              months:
                Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::OrHash,
              total:
                Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::OrHash
            ).returns(T.attached_class)
          end
          def self.new(months: nil, total: nil)
          end

          sig do
            override.returns(
              {
                months:
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months,
                total:
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total
              }
            )
          end
          def to_hash
          end

          class Months < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661
                )
              )
            end
            attr_reader :number_1735689661

            sig do
              params(
                number_1735689661:
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::OrHash
              ).void
            end
            attr_writer :number_1735689661

            sig do
              params(
                number_1735689661:
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::OrHash
              ).returns(T.attached_class)
            end
            def self.new(number_1735689661: nil)
            end

            sig do
              override.returns(
                {
                  number_1735689661:
                    Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661
                }
              )
            end
            def to_hash
            end

            class Const1735689661 < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Subscribe
                    ]
                  )
                )
              end
              attr_reader :subscribes

              sig do
                params(
                  subscribes:
                    T::Array[
                      Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Subscribe::OrHash
                    ]
                ).void
              end
              attr_writer :subscribes

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Tip
                    ]
                  )
                )
              end
              attr_reader :tips

              sig do
                params(
                  tips:
                    T::Array[
                      Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Tip::OrHash
                    ]
                ).void
              end
              attr_writer :tips

              sig { returns(T.nilable(Integer)) }
              attr_reader :total_gross

              sig { params(total_gross: Integer).void }
              attr_writer :total_gross

              sig { returns(T.nilable(Integer)) }
              attr_reader :total_net

              sig { params(total_net: Integer).void }
              attr_writer :total_net

              sig do
                params(
                  subscribes:
                    T::Array[
                      Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Subscribe::OrHash
                    ],
                  tips:
                    T::Array[
                      Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Tip::OrHash
                    ],
                  total_gross: Integer,
                  total_net: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                subscribes: nil,
                tips: nil,
                total_gross: nil,
                total_net: nil
              )
              end

              sig do
                override.returns(
                  {
                    subscribes:
                      T::Array[
                        Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Subscribe
                      ],
                    tips:
                      T::Array[
                        Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Tip
                      ],
                    total_gross: Integer,
                    total_net: Integer
                  }
                )
              end
              def to_hash
              end

              class Subscribe < Onlyfans::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Subscribe,
                      Onlyfans::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :gross

                sig { params(gross: Integer).void }
                attr_writer :gross

                sig { returns(T.nilable(Integer)) }
                attr_reader :net

                sig { params(net: Integer).void }
                attr_writer :net

                sig { returns(T.nilable(Integer)) }
                attr_reader :time

                sig { params(time: Integer).void }
                attr_writer :time

                sig do
                  params(gross: Integer, net: Integer, time: Integer).returns(
                    T.attached_class
                  )
                end
                def self.new(gross: nil, net: nil, time: nil)
                end

                sig do
                  override.returns(
                    { gross: Integer, net: Integer, time: Integer }
                  )
                end
                def to_hash
                end
              end

              class Tip < Onlyfans::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Tip,
                      Onlyfans::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :gross

                sig { params(gross: Integer).void }
                attr_writer :gross

                sig { returns(T.nilable(Integer)) }
                attr_reader :net

                sig { params(net: Integer).void }
                attr_writer :net

                sig { returns(T.nilable(Integer)) }
                attr_reader :time

                sig { params(time: Integer).void }
                attr_writer :time

                sig do
                  params(gross: Integer, net: Integer, time: Integer).returns(
                    T.attached_class
                  )
                end
                def self.new(gross: nil, net: nil, time: nil)
                end

                sig do
                  override.returns(
                    { gross: Integer, net: Integer, time: Integer }
                  )
                end
                def to_hash
                end
              end
            end
          end

          class Total < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::All
                )
              )
            end
            attr_reader :all

            sig do
              params(
                all:
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::All::OrHash
              ).void
            end
            attr_writer :all

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::ChatMessages
                )
              )
            end
            attr_reader :chat_messages

            sig do
              params(
                chat_messages:
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::ChatMessages::OrHash
              ).void
            end
            attr_writer :chat_messages

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Post
                )
              )
            end
            attr_reader :post

            sig do
              params(
                post:
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Post::OrHash
              ).void
            end
            attr_writer :post

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Subscribes
                )
              )
            end
            attr_reader :subscribes

            sig do
              params(
                subscribes:
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Subscribes::OrHash
              ).void
            end
            attr_writer :subscribes

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Tips
                )
              )
            end
            attr_reader :tips

            sig do
              params(
                tips:
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Tips::OrHash
              ).void
            end
            attr_writer :tips

            sig do
              params(
                all:
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::All::OrHash,
                chat_messages:
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::ChatMessages::OrHash,
                post:
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Post::OrHash,
                subscribes:
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Subscribes::OrHash,
                tips:
                  Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Tips::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              all: nil,
              chat_messages: nil,
              post: nil,
              subscribes: nil,
              tips: nil
            )
            end

            sig do
              override.returns(
                {
                  all:
                    Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::All,
                  chat_messages:
                    Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::ChatMessages,
                  post:
                    Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Post,
                  subscribes:
                    Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Subscribes,
                  tips:
                    Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Tips
                }
              )
            end
            def to_hash
            end

            class All < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::All,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Float)) }
              attr_reader :total_gross

              sig { params(total_gross: Float).void }
              attr_writer :total_gross

              sig { returns(T.nilable(Float)) }
              attr_reader :total_net

              sig { params(total_net: Float).void }
              attr_writer :total_net

              sig do
                params(total_gross: Float, total_net: Float).returns(
                  T.attached_class
                )
              end
              def self.new(total_gross: nil, total_net: nil)
              end

              sig { override.returns({ total_gross: Float, total_net: Float }) }
              def to_hash
              end
            end

            class ChatMessages < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::ChatMessages,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Float)) }
              attr_reader :total_gross

              sig { params(total_gross: Float).void }
              attr_writer :total_gross

              sig { returns(T.nilable(Float)) }
              attr_reader :total_net

              sig { params(total_net: Float).void }
              attr_writer :total_net

              sig do
                params(total_gross: Float, total_net: Float).returns(
                  T.attached_class
                )
              end
              def self.new(total_gross: nil, total_net: nil)
              end

              sig { override.returns({ total_gross: Float, total_net: Float }) }
              def to_hash
              end
            end

            class Post < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Post,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Float)) }
              attr_reader :total_gross

              sig { params(total_gross: Float).void }
              attr_writer :total_gross

              sig { returns(T.nilable(Float)) }
              attr_reader :total_net

              sig { params(total_net: Float).void }
              attr_writer :total_net

              sig do
                params(total_gross: Float, total_net: Float).returns(
                  T.attached_class
                )
              end
              def self.new(total_gross: nil, total_net: nil)
              end

              sig { override.returns({ total_gross: Float, total_net: Float }) }
              def to_hash
              end
            end

            class Subscribes < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Subscribes,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Float)) }
              attr_reader :total_gross

              sig { params(total_gross: Float).void }
              attr_writer :total_gross

              sig { returns(T.nilable(Float)) }
              attr_reader :total_net

              sig { params(total_net: Float).void }
              attr_writer :total_net

              sig do
                params(total_gross: Float, total_net: Float).returns(
                  T.attached_class
                )
              end
              def self.new(total_gross: nil, total_net: nil)
              end

              sig { override.returns({ total_gross: Float, total_net: Float }) }
              def to_hash
              end
            end

            class Tips < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Tips,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Float)) }
              attr_reader :total_gross

              sig { params(total_gross: Float).void }
              attr_writer :total_gross

              sig { returns(T.nilable(Float)) }
              attr_reader :total_net

              sig { params(total_net: Float).void }
              attr_writer :total_net

              sig do
                params(total_gross: Float, total_net: Float).returns(
                  T.attached_class
                )
              end
              def self.new(total_gross: nil, total_net: nil)
              end

              sig { override.returns({ total_gross: Float, total_net: Float }) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
