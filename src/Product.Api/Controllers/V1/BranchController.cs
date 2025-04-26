using Microsoft.AspNetCore.Mvc;
using Product.Api.Controllers.V1.Base;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Model;

namespace Product.Api.Controllers.V1
{
    /// <summary>
    /// 
    /// </summary>
    public class BranchController(IBranchAppService branchAppService) : BaseController
    {

        private readonly IBranchAppService _branchAppService = branchAppService;

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("get-branch-type")]
        [ProducesResponseType(typeof(BaseDataResponseModel<StateModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<StateModel>), StatusCodes.Status400BadRequest)]
        [ProducesResponseType(typeof(BaseDataResponseModel<StateModel>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> ListBranchTypeAsync()
        {
            var response = await _branchAppService.ListBranchTypeAsync(RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("get-branch")]
        [ProducesResponseType(typeof(BaseDataResponseModel<StateModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<StateModel>), StatusCodes.Status400BadRequest)]
        [ProducesResponseType(typeof(BaseDataResponseModel<StateModel>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> ListBranchAsync(int? brachTypeId)
        {
            var response = await _branchAppService.ListBranchAsync(brachTypeId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("get-insurance-branch")]
        [ProducesResponseType(typeof(BaseDataResponseModel<StateModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<StateModel>), StatusCodes.Status400BadRequest)]
        [ProducesResponseType(typeof(BaseDataResponseModel<StateModel>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> ListInsuranceBranchAsync(int? brachId)
        {
            var response = await _branchAppService.ListInsuranceBranchAsync(brachId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }
    }
}
