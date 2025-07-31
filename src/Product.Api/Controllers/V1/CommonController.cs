using Microsoft.AspNetCore.Mvc;
using Product.Api.Controllers.V1.Base;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace Product.Api.Controllers.V1
{

    /// <summary>
    /// 
    /// </summary>
    /// <param name="commonAppService"></param>
    public class CommonController(ICommonAppService commonAppService) : BaseController
    {

        private readonly ICommonAppService _commonAppService = commonAppService;

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("get-state")]
        [ProducesResponseType(typeof(BaseDataResponseModel<StateModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetStateAllAsync(string? stateId = null)
        {
            var response = await _commonAppService.GetStateAsync(RecordStatusEnum.Active, stateId);
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
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetAddressTypeAsync()
        {
            var response = await _commonAppService.GetAddressTypeAsync(RecordStatusEnum.Active);
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
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetDocumentypeAsync()
        {
            var response = await _commonAppService.GetDocumentypeAsync(RecordStatusEnum.Active);
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
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetInsuredTypeModelAsync()
        {
            var response = await _commonAppService.GetInsuredTypeAsync(RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("get-record-status")]
        [ProducesResponseType(typeof(BaseDataResponseModel<RecordStatusModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetRecordStatusAsync()
        {
            var response = await _commonAppService.GetRecordStatusAsync();
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);

        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("get-term-type")]
        [ProducesResponseType(typeof(BaseDataResponseModel<TermTypeModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetTermTypeAllAsync()
        {
            var response = await _commonAppService.GetTermTypeAsync(RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("get-insurance-type")]
        [ProducesResponseType(typeof(BaseDataResponseModel<InsuranceTypeModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetInsuranceTypeAsync()
        {
            var response = await _commonAppService.GetInsuranceTypeAsync(RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("get-insurer")]
        [ProducesResponseType(typeof(BaseDataResponseModel<InsurerModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetInsurerAsync()
        {
            var response = await _commonAppService.GetInsurerAsync(RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("get-claims-experience-bonus")]
        [ProducesResponseType(typeof(BaseDataResponseModel<ClaimsExperienceBonusModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetClaimsExperienceBonusModelAsync()
        {
            var response = await _commonAppService.GetClaimsExperienceBonusAsync(RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("get-buildings-contents")]
        [ProducesResponseType(typeof(BaseDataResponseModel<BuildingsContentsModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetBuildingsContentsAsync()
        {
            var response = await _commonAppService.GetBuildingsContentsAsync(RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }



        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("get-person-type")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<PersonTypeModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetPersonTypeAsync()
        {
            var response = await _commonAppService.GetPersonTypeAsync(RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("get-quotation-status")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<QuotationStatusModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetQuotationStatusAsync()
        {
            var response = await _commonAppService.GetQuotationStatusAsync(RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("get-protective-devices/{protectiveDevicesTypeId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<ProtectiveDevicesModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProtectiveDevicesAsync(int protectiveDevicesTypeId)
        {
            var response = await _commonAppService.GetProtectiveDevicesAsync(protectiveDevicesTypeId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("get-gender")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<GenderModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetGenderAsync()
        {
            var response = await _commonAppService.GetGenderAsync(RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("get-profession-by-name")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<ProfessionModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProfessionAsync(string? name)
        {
            var response = await _commonAppService.GetProfessionAsync(name, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }
    }
}
