# typed: strong

module Onlyfansapi
  module Models
    class PayoutRetrieveEarningStatisticsResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta
          )
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta:
            Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(
            Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta:
            Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::OrHash,
          data:
            Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta:
              Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta,
            data:
              Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Cache,
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
                Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Credits,
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
            override.returns({ balance: Integer, note: String, used: Integer })
          end
          def to_hash
          end
        end

        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::RateLimits,
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
              Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List
            )
          )
        end
        attr_reader :list

        sig do
          params(
            list:
              Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::OrHash
          ).void
        end
        attr_writer :list

        sig do
          params(
            list:
              Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::OrHash
          ).returns(T.attached_class)
        end
        def self.new(list: nil)
        end

        sig do
          override.returns(
            {
              list:
                Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List
            }
          )
        end
        def to_hash
        end

        class List < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months
              )
            )
          end
          attr_reader :months

          sig do
            params(
              months:
                Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::OrHash
            ).void
          end
          attr_writer :months

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total
              )
            )
          end
          attr_reader :total

          sig do
            params(
              total:
                Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::OrHash
            ).void
          end
          attr_writer :total

          sig do
            params(
              months:
                Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::OrHash,
              total:
                Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::OrHash
            ).returns(T.attached_class)
          end
          def self.new(months: nil, total: nil)
          end

          sig do
            override.returns(
              {
                months:
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months,
                total:
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total
              }
            )
          end
          def to_hash
          end

          class Months < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661
                )
              )
            end
            attr_reader :number_1735689661

            sig do
              params(
                number_1735689661:
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::OrHash
              ).void
            end
            attr_writer :number_1735689661

            sig do
              params(
                number_1735689661:
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::OrHash
              ).returns(T.attached_class)
            end
            def self.new(number_1735689661: nil)
            end

            sig do
              override.returns(
                {
                  number_1735689661:
                    Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661
                }
              )
            end
            def to_hash
            end

            class Const1735689661 < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661,
                    Onlyfansapi::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Subscribe
                    ]
                  )
                )
              end
              attr_reader :subscribes

              sig do
                params(
                  subscribes:
                    T::Array[
                      Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Subscribe::OrHash
                    ]
                ).void
              end
              attr_writer :subscribes

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Tip
                    ]
                  )
                )
              end
              attr_reader :tips

              sig do
                params(
                  tips:
                    T::Array[
                      Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Tip::OrHash
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
                      Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Subscribe::OrHash
                    ],
                  tips:
                    T::Array[
                      Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Tip::OrHash
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
                        Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Subscribe
                      ],
                    tips:
                      T::Array[
                        Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Tip
                      ],
                    total_gross: Integer,
                    total_net: Integer
                  }
                )
              end
              def to_hash
              end

              class Subscribe < Onlyfansapi::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Subscribe,
                      Onlyfansapi::Internal::AnyHash
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

              class Tip < Onlyfansapi::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Tip,
                      Onlyfansapi::Internal::AnyHash
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

          class Total < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::All
                )
              )
            end
            attr_reader :all

            sig do
              params(
                all:
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::All::OrHash
              ).void
            end
            attr_writer :all

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::ChatMessages
                )
              )
            end
            attr_reader :chat_messages

            sig do
              params(
                chat_messages:
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::ChatMessages::OrHash
              ).void
            end
            attr_writer :chat_messages

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Post
                )
              )
            end
            attr_reader :post

            sig do
              params(
                post:
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Post::OrHash
              ).void
            end
            attr_writer :post

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Subscribes
                )
              )
            end
            attr_reader :subscribes

            sig do
              params(
                subscribes:
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Subscribes::OrHash
              ).void
            end
            attr_writer :subscribes

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Tips
                )
              )
            end
            attr_reader :tips

            sig do
              params(
                tips:
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Tips::OrHash
              ).void
            end
            attr_writer :tips

            sig do
              params(
                all:
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::All::OrHash,
                chat_messages:
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::ChatMessages::OrHash,
                post:
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Post::OrHash,
                subscribes:
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Subscribes::OrHash,
                tips:
                  Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Tips::OrHash
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
                    Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::All,
                  chat_messages:
                    Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::ChatMessages,
                  post:
                    Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Post,
                  subscribes:
                    Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Subscribes,
                  tips:
                    Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Tips
                }
              )
            end
            def to_hash
            end

            class All < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::All,
                    Onlyfansapi::Internal::AnyHash
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

            class ChatMessages < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::ChatMessages,
                    Onlyfansapi::Internal::AnyHash
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

            class Post < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Post,
                    Onlyfansapi::Internal::AnyHash
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

            class Subscribes < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Subscribes,
                    Onlyfansapi::Internal::AnyHash
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

            class Tips < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Tips,
                    Onlyfansapi::Internal::AnyHash
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
