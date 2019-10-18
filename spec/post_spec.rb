
describe "cadastro" do
    it "novo usuario" do
        result = HTTParty.post("https://api-de-tarefas.herokuapp.com/users",
        body: { full_name: "Fabi Carvalho", email: "fabininja2@yahoo.com",
        password: "123456" }.to_json, headers: { 
            "Content-Type" => "application/json",
        },
    )
        puts result
        expect(result.response.code).to eql "200"
    end
end