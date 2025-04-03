#ENV['VAGRANT_SERVER_URL'] = 'https://vagrant.elab.pro'
Vagrant.configure("2") do |config|
    # Базовая конфигурация для всех машин
    config.vm.box = "ubuntu/jammy64"
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"  # 4GB RAM
      vb.cpus = 1         # 1 CPU
    end    
    # Машина hacker
    config.vm.define "hacker" do |hacker|
      hacker.vm.hostname = "hacker"
      
      # Адаптер 1: NAT для интернета
      hacker.vm.network "public_network", bridge: "eth0" # Укажите ваш адаптер
      
      # Адаптер 2: Виртуальный адаптер хоста (приватная сеть)
      hacker.vm.network "private_network", ip: "192.168.56.102"
  
      # Первонвчальная конфигурация с созданием польователя и добавлением ключей авторизации
      hacker.vm.provision "shell", path: "presetup-machine.bash"
    end
  
    # Машина server
    config.vm.define "server" do |server|
      server.vm.hostname = "server"
      
      # Адаптер 1: NAT для интернета
      server.vm.network "public_network", bridge: "eth0" # Укажите ваш адаптер
      
      # Адаптер 2: Приватная сеть 1 (192.168.56.0)
      server.vm.network "private_network", ip: "192.168.56.101"
      
      # Адаптер 3: Приватная сеть 2 (192.168.57.0)
      server.vm.network "private_network", ip: "192.168.57.101"

      # Первонвчальная конфигурация с созданием польователя и добавлением ключей авторизации
      server.vm.provision "shell", path: "presetup-machine.bash"
    end
  
    # Машина www
    config.vm.define "www" do |www|
      www.vm.hostname = "www"
      
      # Адаптер 1: NAT для интернета
      www.vm.network "public_network", bridge: "eth0" # Укажите ваш адаптер
      
      # Адаптер 2: Приватная сеть 2 (192.168.57.0)
      www.vm.network "private_network", ip: "192.168.57.102"

      # Первонвчальная конфигурация с созданием польователя и добавлением ключей авторизации
      www.vm.provision "shell", path: "presetup-machine.bash"
    end
  
    # Машина www2
    config.vm.define "www2" do |www2|
      www2.vm.hostname = "www2"
      
      # Адаптер 1: NAT для интернета
      www2.vm.network "public_network", bridge: "eth0" # Укажите ваш адаптер
      
      # Адаптер 2: Приватная сеть 2 (192.168.57.0)
      www2.vm.network "private_network", ip: "192.168.57.103"

      # Первонвчальная конфигурация с созданием польователя и добавлением ключей авторизации
      www2.vm.provision "shell", path: "presetup-machine.bash"
    end
  end
  