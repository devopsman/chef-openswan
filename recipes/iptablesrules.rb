iptables_file "/tmp/iptables.sh" do
  source "iptables.sh"
  mode "0644"
end

execute "updateiptables" do
    command "/tmp/iptables.sh"
end
