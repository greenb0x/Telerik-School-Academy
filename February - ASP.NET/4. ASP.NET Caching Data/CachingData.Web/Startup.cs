using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CachingData.Web.Startup))]
namespace CachingData.Web
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
