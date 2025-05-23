using Microsoft.AspNetCore.Mvc;
using Product.Api.Controllers.V1.Base;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace Product.Api.Controllers.V1
{
    /// <summary>
    /// 
    /// </summary>
    /// <param name="legalRecourseTypeAppService"></param>
    public class LegalRecourseTypeController(ILegalRecourseTypeAppService legalRecourseTypeAppService) : BaseController
    {
        private readonly ILegalRecourseTypeAppService _legalRecourseTypeAppService = legalRecourseTypeAppService;

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("get-all")]
        [ProducesResponseType(typeof(BaseDataResponseModel<LegalRecourseTypeModel>), StatusCodes.Status200OK)]        
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetAllAsync()
        {
            var response = await _legalRecourseTypeAppService.GetAllAsync(RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return ReturnSuccess(response);
        }
    }
}
