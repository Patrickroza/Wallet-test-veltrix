import requests

def test_veltrix_api():
    # Altere este endpoint para o que você deseja testar
    api_url = "https://api.veltrix.com.br/some_endpoint"  # Exemplo de endpoint
    headers = {
        "Authorization": "Bearer 9e061ef9466c43beb0a4698ec7e7fe26"
    }

    try:
        # Fazendo a requisição GET
        response = requests.get(api_url, headers=headers)

        # Verificando o status do resultado
        if response.status_code == 200:
            print("Sucesso:", response.json())  # Mostra o resultado em JSON
        else:
            print("Erro ao acessar a API:", response.status_code, response.text)

    except Exception as e:
        print("Erro de conexão:", e)

if __name__ == "__main__":
    test_veltrix_api()
