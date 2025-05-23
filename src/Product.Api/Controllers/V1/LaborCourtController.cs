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
    /// <param name="laborCourtAppService"></param>
    public class LaborCourtController(ILaborCourtAppService laborCourtAppService) : BaseController
    {
        private readonly ILaborCourtAppService _laborCourtAppService = laborCourtAppService;

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("get-all")]
        [ProducesResponseType(typeof(BaseDataResponseModel<LaborCourtModel>), StatusCodes.Status200OK)]        
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetAllAsync()
        {
            var response = await _laborCourtAppService.GetAllAsync(RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Route("get-search-labor-court")]
        [ProducesResponseType(typeof(BaseDataResponseModel<CivilCourtModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<CivilCourtModel>), StatusCodes.Status400BadRequest)]
        [ProducesResponseType(typeof(BaseDataResponseModel<CivilCourtModel>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> ListAsync(LaborCourtFilterModel request)
        {
            var response = await _laborCourtAppService.ListAsync(request);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }
    }
}
