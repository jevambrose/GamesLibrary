using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GamesLibrary.Models
{
    public class Game
    {
        public int GameID { get; set; }
        public string Title { get; set; }
        public decimal Price { get; set; }
        public DateTime YearPublished { get; set; }
        public string Genre { get; set; }
        public int Rating { get; set; }

    }
}