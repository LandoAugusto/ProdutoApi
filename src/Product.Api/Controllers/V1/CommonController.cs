using Microsoft.AspNetCore.Mvc;
using Product.Api.Controllers.V1.Base;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Model;

namespace Product.Api.Controllers.V1
{

    public class CommonController(ICommonAppService commonService) : BaseController
    {

        private readonly ICommonAppService _commonService = commonService;

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("get-state-all")]
        [ProducesResponseType(typeof(BaseDataResponseModel<StateModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<StateModel>), StatusCodes.Status400BadRequest)]
        [ProducesResponseType(typeof(BaseDataResponseModel<StateModel>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetStateAllAsync()
        {
            var response = await _commonService.GetStateAsync(RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("get-address-type")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<AddressTypeModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<AddressTypeModel>>), StatusCodes.Status400BadRequest)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<AddressTypeModel>>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetAddressTypeAsync()
        {
            var response = await _commonService.GetAddressTypeAsync(RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("get-document-type")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<DocumentTypeModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<DocumentTypeModel>>), StatusCodes.Status400BadRequest)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<DocumentTypeModel>>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetDocumentypeAsync()
        {
            var response = await _commonService.GetDocumentypeAsync(RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }


        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("get-insured-type")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<InsuredTypeModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<InsuredTypeModel>>), StatusCodes.Status400BadRequest)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<InsuredTypeModel>>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetInsuredTypeModelAsync()
        {
            var response = await _commonService.GetInsuredTypeAsync(RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }
    }
}
