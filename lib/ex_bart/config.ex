defmodule ExBart.Config do
  @api_url "http://api.bart.gov/api"
  @api_key_env_name "EX_BART_API_KEY"

  def api_url do
    @api_url
  end

  def api_key do
    System.get_env(@api_key_env_name) ||
      Application.get_env(:ex_bart, :api_key)
  end

  def api_path(path_name) do
    "/#{path_name}.aspx"
  end
end
