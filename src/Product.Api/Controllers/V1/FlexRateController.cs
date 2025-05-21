using Microsoft.AspNetCore.Mvc;
using Product.Api.Controllers.V1.Base;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Models;

namespace Product.Api.Controllers.V1
{
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="flexRateAppService"></param>

    public class FlexRateController(IFlexRateAppService flexRateAppService) : BaseController
    {
        private readonly IFlexRateAppService _flexRateAppService = flexRateAppService;

        [HttpGet]
        [Route("get-flexRate/{flexRateid}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<FlexRateModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<FlexRateModel>), StatusCodes.Status400BadRequest)]
        [ProducesResponseType(typeof(BaseDataResponseModel<FlexRateModel>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetAsync(int flexRateid)
        {
            var response = await _flexRateAppService.GetAsync(flexRateid);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="productVersionId"></param>
        /// <param name="statusId"></param>
        /// <returns></returns>

        [HttpPost]
        [Route("get-flex-rate{productVersionId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<FlexRateModel>?>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<FlexRateModel>?>), StatusCodes.Status400BadRequest)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<FlexRateModel>?>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetAllAsync(int productVersionId, int? statusId)
        {
            var response = await _flexRateAppService.ListAsync(productVersionId, statusId);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);

        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="brokerId"></param>
        /// <returns></returns>

        //[HttpPost]
        //[Route("get-flex-rate-broker{brokerId}")]
        //[ProducesResponseType(typeof(BaseDataResponseModel<FlexRateModel>), StatusCodes.Status200OK)]
        //[ProducesResponseType(typeof(BaseDataResponseModel<FlexRateModel>), StatusCodes.Status400BadRequest)]
        //[ProducesResponseType(typeof(BaseDataResponseModel<FlexRateModel>), StatusCodes.Status404NotFound)]
        //public async Task<IActionResult> GetBrokerAsync(int brokerId)
        //{
        //    var response = await _flexRateAppService.ListAsync(brokerId);
        //    if (response == null)
        //        return ReturnNotFound();

        //    return base.ReturnSuccess(response);

        //}

        ///// <summary>
        ///// 
        ///// </summary>
        ///// <param name="borrowerId"></param>
        ///// <returns></returns>

        //[HttpPost]
        //[Route("get-flex-rate-borrower/{borrowerId}")]
        //[ProducesResponseType(typeof(BaseDataResponseModel<FlexRateModel>), StatusCodes.Status200OK)]
        //[ProducesResponseType(typeof(BaseDataResponseModel<FlexRateModel>), StatusCodes.Status400BadRequest)]
        //[ProducesResponseType(typeof(BaseDataResponseModel<FlexRateModel>), StatusCodes.Status404NotFound)]
        //public async Task<IActionResult> GetBorrowerAsync(int borrowerId)
        //{
        //    var response = await _flexRateAppService.ListAsync(request);
        //    if (response == null)
        //        return ReturnNotFound();

        //    return base.ReturnSuccess(response);

        //}
    }
}
