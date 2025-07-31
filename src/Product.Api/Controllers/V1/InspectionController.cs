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
    /// <param name="inspectionRuleCoverageAppService"></param>
    /// <param name="inspectionAppService"></param>
    public class InspectionController(IInspectionRuleCoverageAppService inspectionRuleCoverageAppService,
        IInspectionAppService inspectionAppService) : BaseController
    {
        private readonly IInspectionAppService _inspectionAppService = inspectionAppService;
        private readonly IInspectionRuleCoverageAppService _inspectionRuleCoverageAppService = inspectionRuleCoverageAppService;

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("get-inspection-reason")]
        [ProducesResponseType(typeof(BaseDataResponseModel<InspectionReasonModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetReasoAsync()
        {
            var response = await _inspectionAppService.ListReasoAsync(RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="productVersionId"></param>
        /// <param name="contractTypeId"></param>
        /// <param name="profileId"></param>
        /// <param name="activityId"></param>
        /// <param name="coverageId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("get-inspection-rule-coverage/{productVersionId}/{contractTypeId}/{profileId}/{activityId}/{coverageId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<InspectionRuleCoverageModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetRuleCoverageAsync(int productVersionId, int contractTypeId, int profileId, int activityId, int coverageId)
        {
            var response = await _inspectionRuleCoverageAppService.ListAsync(productVersionId, contractTypeId, profileId, activityId, coverageId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }
    }
}
