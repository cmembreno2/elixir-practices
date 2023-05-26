defmodule TutorialWebWeb.SearchFormLive do
  use TutorialWebWeb, :live_view

  def mount(_params, _session, socket) do
    assigns = [
      conn: socket,
      search_results: [],
      search_phrase: ""
    ]

    {:ok, assign(socket, assigns)}
  end

  def render(assigns) do
    ~L"""
    <div>
      <form phx-submit="search" phx-change="search">
        <input type="text" name="search_phrase" value="<%= assigns.search_phrase %>" />
        <input type="submit" value="Search" />
      </form>
      <ul>
        <%= for result <- assigns.search_results do %>
          <li phx-click="pick" phx-value-name="<%= result %>"><%= result %></li>
        <% end %>
      </ul>
    </div>
    """
  end

  def search(""), do: []
  def search(search_phrase) do
    states()
    |> Enum.filter(& matches?(&1, search_phrase))
  end

  def matches?(first, second) do
    String.starts_with?(
      String.downcase(first), String.downcase(second)
    )
  end

  def states do
    [
      "Alabama", "Alaska", "Arizona", "Arkansas", "California",
      "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii",
      "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana",
      "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota",
      "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire",
      "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota",
      "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island",
      "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont",
      "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"
    ]
  end

  def handle_event("search", %{"search_phrase" => search_phrase}, socket) do
    assigns = [
      search_results: search(search_phrase),
      search_phrase: search_phrase
    ]

    {:noreply, assign(socket, assigns)}
  end

  def handle_event("pick", %{"name" => search_phrase}, socket) do
    assigns = [
      search_results: [],
      search_phrase: search_phrase
    ]

    {:noreply, assign(socket, assigns)}
  end
end
