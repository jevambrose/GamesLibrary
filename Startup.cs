using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GamesLibrary.Startup))]
namespace GamesLibrary
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
