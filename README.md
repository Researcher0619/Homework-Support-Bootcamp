# Kubernetes ile Basit Flask Uygulaması Dağıtımı

Bu proje, basit bir Flask web uygulamasının Kubernetes kullanılarak nasıl dağıtılacağını göstermektedir. Uygulama, bir HTTP endpoint üzerinden "Hello World!" mesajını döner.

## Projeye Genel Bakış

- **Dockerfile**: Bu dosya, Flask uygulamasını bir Docker imajına dönüştürmek için kullanılır.
- **deployment.yaml**: Kubernetes üzerinde çalışacak olan Deployment nesnesini tanımlar.
- **service.yaml**: Kubernetes ortamında uygulamanın dış erişim için kullanılacak servisi tanımlar.
- **README.md**: Bu doküman, proje hakkında bilgi ve kurulum yönergelerini içerir.

## Önkoşullar

Projeyi çalıştırmak için aşağıdaki bileşenlerin yüklü olması gerekir:
- Kubernetes kurulumu ve yapılandırması yapılmış bir küme.
- `kubectl` komut satırı aracı.

## Kubernetes Üzerinde Uygulamayı Dağıtma

Aşağıdaki adımları izleyerek Flask uygulamanızı Kubernetes ortamında çalıştırabilirsiniz:

1. **Deployment Nesnesini Uygulama**

   Kubernetes üzerinde gerekli pod'ları oluşturmak için Deployment dosyasını kullanın:

   ```bash
   kubectl apply -f deployment.yaml

2.Servis Nesnesini Uygulama
Uygulamanın dış dünyadan erişilebilir olmasını sağlamak için Kubernetes servis nesnesini başlatın:

    ...bash

     kubectl apply -f service.yaml

Servislerin durumunu kontrol etmek ve dış IP adresini görmek için şu komutu çalıştırın:

    ...bash
    kubectl get services

Çıktıda görünen External IP adresini tarayıcınızda açarak uygulamanın doğru bir şekilde çalıştığını doğrulayabilirsiniz.
Uygulama Ölçeklendirme
Uygulamanın kapasitesini artırmak için pod sayısını çoğaltabilirsiniz. Bunun için deployment.yaml dosyasındaki replicas değerini artırın ve ardından değişiklikleri uygulayın:

    ...bash

    kubectl apply -f deployment.yaml


Dosyaların Açıklamaları

deployment.yaml: Kubernetes üzerinde Flask uygulamanız için pod'ların nasıl oluşturulacağını belirler.
service.yaml: Uygulamanın Kubernetes ortamında erişilebilir olmasını sağlar ve dış bağlantılara izin verir.
Bu README dosyası, basit bir Flask web uygulamasının Kubernetes ortamında nasıl dağıtılacağını adım adım açıklamaktadır. Proje, Docker Hub'da bulunan Docker imajını kullanır, bu yüzden odak noktası yalnızca Kubernetes dağıtımıdır.
