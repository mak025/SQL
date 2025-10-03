using PunchlinePatterns.Repo;

namespace PunchlinePatterns
{
    internal class Program
    {
        static void Main(string[] args)
        {
            IJokeRepository jokeRepo = new JokeRepository("Server=mssql.mkhansen.dk;Database=JokeDB;User Id=sa;Password=HfP*9pxXF_;Encrypt=true;TrustServerCertificate=True;");
            //var jokes = jokeRepo.GetAll();
            jokeRepo.Add(new Models.Joke { Setup = "Why did the scarecrow win an award?", Punchline = "Because he was outstanding in his field!" });
        }
    }
}
