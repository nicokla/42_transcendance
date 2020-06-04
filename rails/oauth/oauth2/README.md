

https://blog.capsens.eu/how-to-write-javascript-in-rails-6-webpacker-yarn-and-sprockets-cdf990387463


----------------

https://api.intra.42.fr/apidoc/guides/getting_started

require "oauth2"
UID = "fbaaaa311741ccfec9e4c576bad7a05d9ae9e7bd2368e2f66179c3a666e74ce0"
SECRET = "eaaf127f113e1045061392d9ee152150e1f5c31285381e1e8dab4248ca6bff48"
client = OAuth2::Client.new(UID, SECRET, site: "https://api.intra.42.fr")
token = client.client_credentials.get_token
token.get("/v2/cursus").parsed
users_in_cursus = token.get("/v2/cursus/42/users").parsed
users_in_cursus.count
second_page = token.get("/v2/cursus/42/users", params: {page: {number: 2}})
second_page.parsed
second_page.headers["Link"]

---------------------
https://api.intra.42.fr/apidoc/guides/web_application_flow

1) get code with GET https://api.intra.42.fr/oauth/authorize

https://api.intra.42.fr/oauth/authorize?client_id=0f57929c100ba2dd2e17064c1de2727b7907a125d382ca3d74e25d1db25a1f15&redirect_uri=http%3A%2F%2Flocalhost:3000/main&response_type=code

2) get the token using the code of step 1, with POST https://api.intra.42.fr/oauth/token

curl -F grant_type=authorization_code \
-F client_id=0f57929c100ba2dd2e17064c1de2727b7907a125d382ca3d74e25d1db25a1f15 \
-F client_secret=5cc7b6a4b7af7ac4ec21635509b6096745c3cf81447c1cb5fc4df524bda8cf02 \
-F code=... \
-F redirect_uri=https://myawesomeweb.site/callback \
-X POST https://api.intra.42.fr/oauth/token

3) use the token to make requests
curl -H "Authorization: Bearer MY_TOKEN" https://api.intra.42.fr/v2/me
curl -H "Authorization: Bearer YOUR_ACCESS_TOKEN" https://api.intra.42.fr/oauth/token/info
# {"resource_owner_id":74,"scopes":["public"],"expires_in_seconds":7174,"application":{"uid":"3089cd94d72cc9109800a5eea5218ed4c3e891ec1784874944225878b95867f9"},"created_at":1439460680}%

-------------------


https://blog.saeloun.com/2019/10/10/rails-6-adds-support-for-multi-environment-credentials.html
EDITOR=vim rails credentials:edit

----------------------------

0f57929c100ba2dd2e17064c1de2727b7907a125d382ca3d74e25d1db25a1f15
5cc7b6a4b7af7ac4ec21635509b6096745c3cf81447c1cb5fc4df524bda8cf02