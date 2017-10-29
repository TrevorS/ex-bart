defmodule ExBart.Client do
  use HTTPoison.Base

  alias ExBart.Config

  @user_agent [{"User-agent", "ExBart"}]
  @xml_start ~s(<?xml version="1.0" encoding="utf-8"?>)

  def request(path_name, cmd, options \\ []) do
    {path, params} = request_config(path_name, cmd, options)

    path |> get!([], params: params) |> process_response
  end

  defp request_config(path_name, cmd, options) do
    path = Config.api_path(path_name)

    params =
      case cmd do
        nil -> options
        _ -> Keyword.merge(options, cmd: cmd)
      end

    {path, params}
  end

  defp process_response(%HTTPoison.Response{status_code: 200, body: body}) do
    body
  end

  defp process_response(%HTTPoison.Response{status_code: status_code, body: body}) do
    {status_code, body}
  end

  defp process_url(path) do
    Config.api_url() <> path
  end

  defp process_request_headers(headers) do
    headers ++ @user_agent
  end

  defp process_request_options(options) do
    params =
      options[:params]
      |> Keyword.put(:key, Config.api_key())
      |> Keyword.put(:json, :y)

    Keyword.put(options, :params, params)
  end

  # TODO: Raise error here.
  defp process_response_body(@xml_start <> _ = body) do
    body
  end

  defp process_response_body(body) do
    Poison.decode!(body)["root"]
  end
end
