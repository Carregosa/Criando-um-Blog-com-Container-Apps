# Criando-um-Blog-com-Container-Apps

# 🚀 Azure App Service com Deploy Automático do GitHub (Terraform)

Este projeto cria uma aplicação no **Azure App Service**, vinculada ao seu repositório do **GitHub**, com deploy automático.

## 📌 Pré-requisitos

- Conta no Azure
- Azure CLI instalado e autenticado
- Terraform >= 1.0 instalado
- Repositório no GitHub (público ou privado com integração configurada)

## ⚙️ Como usar

### 1️⃣ Login no Azure
```bash
az login

2️⃣ Inicializar o Terraform
bash
Copiar
Editar
terraform init
3️⃣ Aplicar o plano
bash
Copiar
Editar
terraform apply -var="github_repo_url=https://github.com/seuusuario/seurepo" -var="github_branch=main"
💡 Modifique github_repo_url e github_branch conforme seu projeto.

4️⃣ Acesse o App Service
O Terraform exibirá a URL da aplicação:

makefile
Copiar
Editar
Outputs:

app_service_url = https://blog-demo-app-abc123.azurewebsites.net
Abra no navegador!

🧹 Para destruir os recursos
bash
Copiar
Editar
terraform destroy
📝 Dicas
✅ Altere o linux_fx_version para o runtime da sua aplicação:

NODE|16-lts

PYTHON|3.9

PHP|8.0

✅ Você pode configurar o App Service para apontar para um container se desejar no futuro.

✅ Para repositórios privados no GitHub, será necessário configurar um token ou integração de serviço.

📄 Licença
Este projeto é de uso livre para aprendizado e demonstração.

---

## 🚀 **Como executar**
### Exemplo prático:
```bash
terraform apply -var="github_repo_url=https://github.com/paulocarregosa/blog-sample" -var="github_branch=main"

