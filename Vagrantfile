Vagrant.configure("2") do |config|
  config.vm.box = "fedora/29-cloud-base"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.provision "shell" do |s|
    s.inline = "which python35 || dnf install -y python35"
  end
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "main.yml"
    ansible.install_mode = "pip"
    ansible.version = "2.6.2"
    ansible.extra_vars = { ansible_python_interpreter:"/usr/bin/env python3" }
  end
end
