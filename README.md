## Marketapp
Aplicação que cadastra produtos de supermercado, cria pedidos via API, retorna os dados, gera uma lista de pedidos e sua visualização.

## Como utilizar

Home
```bash
https://marketapp202105.herokuapp.com/
```

Cadastrar produtos
```bash
https://marketapp202105.herokuapp.com/products
```
Visualizar produtos na API
```bash
# Método HTTP GET
Endpoint https://marketapp202105.herokuapp.com/api/v1/products/
```
Criar pedido na API
```bash
# Método HTTP POST
Endpoint https://marketapp202105.herokuapp.com/api/v1/orders/

Exemplo:
{
	"order": {
		"delivery_tax": "9",
		"items_attributes": [
			{ 
				"product_id": 1,
				"amount": "5"

			},
			{ 
				"product_id": 2,
				"amount": "11"

			}
		] 
	}
}
```

Visualizar pedidos
```bash
https://marketapp202105.herokuapp.com/orders

