using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PunchlinePatterns.Models;

namespace PunchlinePatterns.Repo
{
    public interface IJokeRepository
    {
        List<Joke> GetAll();
        Joke GetById(int id);
        void Add(Joke joke);
        void Update(Joke joke);
        void Delete(int id);
    }
}
