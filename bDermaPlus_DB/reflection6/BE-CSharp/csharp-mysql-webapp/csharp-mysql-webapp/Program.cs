var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "Hello World"
);

app.MapGet("/customer", () =>
{
    string mycon = "Server =127.0.0.1; Port=3306; User=root; Password =LoveGod2021* ; Database =bdermaplus";
    using var connection = new MySql.Data.MySqlClient.MySqlConnection(mycon);
    connection.Open();
    using var command = new MySql.Data.MySqlClient.MySqlCommand("SELECT field FROM table;", connection);
    using var reader = command.ExecuteReader();
    while (reader.Read())
        Console.WriteLine(reader.GetString(0));
}
);

app.Run();
