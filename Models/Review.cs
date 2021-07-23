using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GamesLibrary.Models
{
    public class Review
    {
        public int ReviewID { get; set; }
        public string GameTitle { get; set; }
        public string ReviewTxt { get; set; }
        public int Rating { get; set; }
    }
}