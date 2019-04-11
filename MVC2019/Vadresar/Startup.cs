using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Vadresar.Startup))]
namespace Vadresar
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
