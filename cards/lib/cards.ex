defmodule Cards do
  @moduledoc"""
    Provides methods for creating and handling a deck of cards
  """
  @doc """
  Create a new deck
  """
  def create_deck do
    values = ["Ace","Two","Three","Four"]
    suits = ["Spades","Clubs","Hearts","Diamonds"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  @doc """
  Shuffle a deck. Need the argument `deck`

  ## Examples

    iex> shuffled_deck = Cards.shuffle(deck)

  """
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck,hand) do
    Enum.member?(deck,hand)
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  def save(deck,filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename,binary)
  end

  def load(filename) do
    case File.read(filename) do
      {:ok,binary} -> :erlang.binary_to_term(binary)
      {:error,reason} -> "Error ocurred: #{reason}"
    end
  end

  def create_hand(hand_size) do
    Cards.create_deck
    |>Cards.shuffle
    |>Cards.deal(hand_size)
  end

end
