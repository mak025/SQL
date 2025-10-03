using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using PunchlinePatterns.Models;
using PunchlinePatterns.Repo;
using Microsoft.Data.SqlClient;
public class JokeRepository : IJokeRepository
{
    private string _connectionString;
    public JokeRepository(string connectionString)
    {
        _connectionString = "Server=mssql.mkhansen.dk;Database=JokeDB;User Id=sa;Password=HfP*9pxXF_;Encrypt=true;TrustServerCertificate=True;";
    }
    public List<Joke> GetAll()
    {
        var jokes = new List<Joke>();
        using (var connection = new SqlConnection(_connectionString))
        {
            var command = new SqlCommand("SELECT Id, Setup, Punchline FROM Jokes", connection);
            connection.Open();
            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    var joke = new Joke
                    {
                        Id = (int)reader["Id"],
                        Setup = (string)reader["Setup"],
                        Punchline = (string)reader["Punchline"]
                    };
                    jokes.Add(joke);
                }
            }
        }

        // Print all jokes in the list
        foreach (var joke in jokes)
        {
            Console.WriteLine($"Id: {joke.Id}, Setup: {joke.Setup}, Punchline: {joke.Punchline}");
        }

        return jokes;
    }
    public Joke GetById(int id)
    {
        Joke joke = null;
        using (var connection = new SqlConnection(_connectionString))
        {
            var command = new SqlCommand("SELECT Id, Setup, Punchline FROM Jokes WHERE Id = @Id", connection);
            command.Parameters.AddWithValue("@Id", id);
            connection.Open();
            using (var reader = command.ExecuteReader())
            {
                if (reader.Read())
                {
                    joke = new Joke
                    {
                        Id = (int)reader["Id"],
                        Setup = (string)reader["Setup"],
                        Punchline = (string)reader["Punchline"]
                    };
                }
            }
        }
        return joke;
    }
    public void Add(Joke joke)
    {
        using (var connection = new SqlConnection(_connectionString))
        {
            var command = new SqlCommand("INSERT INTO Jokes (Setup, Punchline) VALUES (@Setup, @Punchline)", connection);
            command.Parameters.AddWithValue("@Setup", joke.Setup);
            command.Parameters.AddWithValue("@Punchline", joke.Punchline);
            connection.Open();
            command.ExecuteNonQuery();
        }
    }
    public void Update(Joke joke)
    {
        using (var connection = new SqlConnection(_connectionString))
        {
            var command = new SqlCommand("UPDATE Jokes SET Setup = @Setup, Punchline = @Punchline WHERE Id = @Id", connection);
            command.Parameters.AddWithValue("@Id", joke.Id);
            command.Parameters.AddWithValue("@Setup", joke.Setup);
            command.Parameters.AddWithValue("@Punchline", joke.Punchline);
            connection.Open();
            command.ExecuteNonQuery();
        }
    }
    public void Delete(int id)
    {
        using (var connection = new SqlConnection(_connectionString))
        {
            var command = new SqlCommand("DELETE FROM Jokes WHERE Id = @Id", connection);
            command.Parameters.AddWithValue("@Id", id);
            connection.Open();
            command.ExecuteNonQuery();
        }
    }
}