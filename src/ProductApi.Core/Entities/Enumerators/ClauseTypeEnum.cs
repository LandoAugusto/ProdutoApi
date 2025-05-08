using ProductApi.Core.Extensions;
using System.ComponentModel;

namespace ProductApi.Core.Entities.Enumerators
{
    public enum ClauseTypeEnum
    {
        [Description("Emissão")]
        Emissao = 0,
        //[Description("Questionário de cobertura")]
        //QuestionarioCobertura = 1,
        //[Description("Aplica sobre prêmio líquido total")]
        //AplicaSobrePremioLiquidoTotal = 2,
        //[Description("LMI x VR")]
        //LMIxVR = 3,
        //[Description("Aplica sobre todos os descontos")]
        //AplicaSobreTodosDescontos= 4,
        //[Description("Outras")]
        //Outras = 999,
    }

    public static class ClauseTypeEnumUtil
    {

        /// <summary>
        /// Retorna lista com todos os itens do enum
        /// </summary>
        public static IEnumerable<KeyValuePair<string, string>> GetList()
        {
            return from status in System.Enum.GetValues(typeof(ClauseTypeEnum)).Cast<ClauseTypeEnum>()
                   select new KeyValuePair<string, string>(((int)status).ToString(),
                                                            status.GetEnumDescription());
        }
    }
}
