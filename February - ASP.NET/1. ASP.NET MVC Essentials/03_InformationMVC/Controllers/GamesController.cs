using _03_InformationMVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace _03_InformationMVC.Controllers
{
    public class GamesController : Controller
    {
        private List<Game> gameList = new List<Game> 
        {
            new Game{Id = 1, Name = "Order and Chaos", Price = null},
            new Game{Id = 2, Name = "Dungeon Hunter V", Price = 2},
            new Game{Id = 3, Name = "Heroes of Order and Chaos", Price = 3}
        };

        public List<Game> Games
        {
            get { return this.gameList; }
        }

        public ActionResult GameDetails(int id)
        {
            var game = this.Games[id-1];

            return View(game);
        }

        public ActionResult Index()
        {
            var games = this.Games;

            return View(games);
        }
	}
}