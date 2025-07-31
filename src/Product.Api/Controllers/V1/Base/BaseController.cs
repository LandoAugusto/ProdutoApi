using Asp.Versioning;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using ProductApi.Core.Models;

namespace Product.Api.Controllers.V1.Base
{
    /// <summary>
    /// 
    /// </summary>
  //  [Authorize]
    [ApiController]
    [Route("api/v{version:apiVersion}/[controller]")]
    [ApiVersion("1.0")]
    public abstract class BaseController : ControllerBase
    {

        /// <summary>
        /// 
        /// </summary>
        /// <param name="data"></param>
        /// <returns></returns>
        protected ActionResult ReturnSuccess(object data)
        {
            return Ok(new BaseDataResponseModel<object>
            {
                Data = data,
                TransactionStatus = new StatusResponseModel
                {
                    Sucess = true,
                    Code = (int)StatusCodes.Status200OK
                }
            });
        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        protected ActionResult ReturnNotFound()
        {
            return NotFound(new BaseDataResponseModel<object>
            {
                TransactionStatus = new StatusResponseModel
                {
                    Code = (int)StatusCodes.Status404NotFound,
                    Message = "Não encontrado nenhum registro para os parametros informados."
                }
            });
        }
    }
}
