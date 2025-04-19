using ProductApi.Core.Extensions;
using System.ComponentModel;

namespace ProductApi.Core.Entities.Enumerators
{
    public enum TextTypeEnum
    {
        [Description("Cláusula")]
        Clausula = 0,
    }

    public static class TextTypeEnumUtil
    {

        /// <summary>
        /// Retorna lista com todos os itens do enum
        /// </summary>
        public static IEnumerable<KeyValuePair<string, string>> GetList()
        {
            return from status in System.Enum.GetValues(typeof(TextTypeEnum)).Cast<TextTypeEnum>()
                   select new KeyValuePair<string, string>(((int)status).ToString(),
                                                            status.GetEnumDescription());
        }
    }
}
