defmodule Ticker do
  @moduledoc """
  Timer to schedule jobs in small intervals.
  """

  use GenServer

  def start_link(state) do
    GenServer.start_link(__MODULE__, state)
  end

  def init(state) do
    send(self, :tick)
    {:ok, state}
  end

  def handle_info(:tick, state) do
    schedule_tick(state)
    work(state)
    {:noreply, state}
  end

  defp work(%{module: module, function: function}) do
    apply(module, function, [])
  end

  defp schedule_tick(%{interval: interval}) do
    Process.send_after(self, :tick, interval)
  end
end
