defmodule Squareshop.Identity.User do
# adding in needed functions
	use Ecto.Schema
	import Ecto.Changeset
	require Logger
	schema "users" do
		field :fname, :string
		field :lname, :string
		field :phone, :string
		field :email, :string
		field :password, :string
		field :address, :string
		field :city, :string
    	field :country, :string
    	field :zip_code, :integer
		timestamps()
	end
	def changeset(user, attrs) do
		# Logger.debug("user #{inspect(user)}")
		Logger.debug("number 1 ran")
		user
		|> cast(attrs, [:fname, :lname, :phone, :email, :password, :address, :city, :country, :zip_code])
		|> validate_required([:fname, :lname, :email])
	    

	end

end
