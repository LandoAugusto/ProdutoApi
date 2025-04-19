namespace ProductApi.Core.Infrastructure.Configuration
{
    public class ApiConfig
    {
        public string? Environment { get; set; }
        public string? ApplicationName { get; set; } = "Product.Api";
        public string? RoutePrefix { get; set; }
        public bool UseResponseCompression { get; set; }

        /// <summary>
        /// Gets or sets the JWT configuration.
        /// </summary>
        public JwtConfig Jwt { get; set; }
    }
}
