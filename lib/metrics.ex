defmodule Metrics do
  @moduledoc """
  Documentation for `Metrics`.
  """

  def emit(value) do
    :telemetry.execute([:metrics, :emit], %{value: value})
  end
end
