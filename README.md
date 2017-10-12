# Cog-Automation

### Instalando Ambiente Ruby no MAC

```ruby
a. Instalar o Homebrew:
   ruby -e “$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”
   
b. Instalar JDK para o Mac:
   http://www.oracle.com/technetwork/java/javase/downloads/index.html

c. Instalando e configurando o rbenv:
   brew install rbenv
   echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
   rbenv install -l
   rbenv install 2.3.1
   rbenv local 2.3.1

d. Instalar Android Studio:
   https://developer.android.com/studio/index.html?hl=pt-br
```

### Instalando Gems do Ruby

```ruby
gem install bundler
gem install calabash-android
```

### Executando o Projeto :dart:

```ruby
1. Faça um clone do projeto:
   git clone https://github.com/Thialison/Cog_automation.git

2. Emulando android virtual device: 
   emulator @"<Nome do seu emulator>"&

3. Executando feature: 
   calabash-android run Consulta_Placa.apk features/consultar_veiculo.feature
```
