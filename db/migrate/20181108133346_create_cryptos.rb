class CreateCryptos < ActiveRecord::Migration[5.2]
  def change
    create_table :cryptos do |t|
      t.string :crypto_name
      t.string :cours

      t.timestamps
    end
  end
end
