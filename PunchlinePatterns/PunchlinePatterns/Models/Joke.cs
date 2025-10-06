using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PunchlinePatterns.Models
{
    public class Joke
    {
        // Private fields
        private int _id;
        private string _setup;
        private string _punchline;

        // Public properties with getters and setters
        public int Id
        {
            get => _id;
            set => _id = value;
        }

        public string Setup
        {
            get => _setup;
            set => _setup = value;
        }

        public string Punchline
        {
            get => _punchline;
            set => _punchline = value;
        }

        // Constructor
        public Joke(int Id, string Setup, string Punchline)
        {
            _id = Id;
            _setup = Setup;
            _punchline = Punchline;
        }

        // Parameterless constructor for flexibility
        public Joke() { }
    }
}
