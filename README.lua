-- test.lua
local HttpService = game:GetService("HttpService")
local request = request or http_request or (syn and syn.request)

local API_URL = "https://SEU_REPLIT.repl.co/api/validate"
local KEY = _G.KEY

local res = request({Url = API_URL .. "?key=" .. KEY, Method = "GET"})
print("Status:", res.StatusCode)
print("Resposta:", res.Body)

local data = HttpService:JSONDecode(res.Body)
if data.valid then
    print("KEY VÁLIDA! Webhook:", data.webhook)
else
    print("KEY INVÁLIDA")
end
