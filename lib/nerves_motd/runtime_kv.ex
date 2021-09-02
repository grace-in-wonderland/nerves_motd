defmodule NervesMotd.RuntimeKV do
  @moduledoc false
  @callback get(binary) :: any
  @callback get_active(binary) :: any
end

defmodule NervesMotd.RuntimeKV.Prod do
  @moduledoc false
  @behaviour NervesMotd.RuntimeKV

  @impl NervesMotd.RuntimeKV
  def get(key) do
    Nerves.Runtime.KV.get(key)
  end

  @impl NervesMotd.RuntimeKV
  def get_active(key) do
    Nerves.Runtime.KV.get_active(key)
  end
end

defmodule NervesMotd.RuntimeKV.Test do
  @moduledoc false
  @behaviour NervesMotd.RuntimeKV

  @impl NervesMotd.RuntimeKV
  def get(key) do
    fake_kv()[key]
  end

  @impl NervesMotd.RuntimeKV
  def get_active(key) do
    get("a.#{key}")
  end

  defp fake_kv do
    %{
      "a.nerves_fw_application_part0_devpath" => "/dev/mmcblk0p3",
      "a.nerves_fw_application_part0_fstype" => "f2fs",
      "a.nerves_fw_application_part0_target" => "/root",
      "a.nerves_fw_architecture" => "arm",
      "a.nerves_fw_author" => "Frank Hunleth and Elixir friends",
      "a.nerves_fw_description" => "Livebook for Nerves Devices",
      "a.nerves_fw_misc" => "",
      "a.nerves_fw_platform" => "rpi4",
      "a.nerves_fw_product" => "nerves_livebook",
      "a.nerves_fw_uuid" => "0540f0cd-f95a-5596-d152-221a70c078a9",
      "a.nerves_fw_vcs_identifier" => "",
      "a.nerves_fw_version" => "0.2.17",
      "b.nerves_fw_application_part0_devpath" => "/dev/mmcblk0p3",
      "b.nerves_fw_application_part0_fstype" => "f2fs",
      "b.nerves_fw_application_part0_target" => "/root",
      "b.nerves_fw_architecture" => "arm",
      "b.nerves_fw_author" => "Frank Hunleth and Elixir friends",
      "b.nerves_fw_description" => "Livebook for Nerves Devices",
      "b.nerves_fw_misc" => "",
      "b.nerves_fw_platform" => "rpi4",
      "b.nerves_fw_product" => "nerves_livebook",
      "b.nerves_fw_uuid" => "8b23e71c-28f4-5dd4-faf7-63704e6e8586",
      "b.nerves_fw_vcs_identifier" => "",
      "b.nerves_fw_version" => "0.2.17",
      "nerves_fw_active" => "a",
      "nerves_fw_devpath" => "/dev/mmcblk0",
      "nerves_fw_validated" => "1",
      "nerves_serial_number" => ""
    }
  end
end
