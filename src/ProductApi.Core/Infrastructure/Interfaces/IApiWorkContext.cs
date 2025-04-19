using ProductApi.Core.Infrastructure.Configuration;

namespace ProductApi.Core.Infrastructure.Interfaces
{
    public interface IApiWorkContext
    {
        BaseHeader BaseHeader { get; set; }
    }
}
