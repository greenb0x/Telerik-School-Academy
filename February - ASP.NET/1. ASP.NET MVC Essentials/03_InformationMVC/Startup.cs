using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(_03_InformationMVC.Startup))]
namespace _03_InformationMVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
