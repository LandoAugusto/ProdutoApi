using Product.Core.Infrastructure.Configuration;

namespace Product.Core.Infrastructure.Interfaces
{
    public interface IApiWorkContext
    {
        BaseHeader BaseHeader { get; set; }
    }
}
