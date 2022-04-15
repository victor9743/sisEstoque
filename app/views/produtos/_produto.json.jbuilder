json.extract! produto, :id, :nomeproduto, :dtavalidade, :codbarras, :created_at, :updated_at
json.url produto_url(produto, format: :json)
