using Microsoft.AspNetCore.Authorization;
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
    /// <param name="vehicleBrandService"></param>
    /// <param name="vehicleModelAppService"></param>
    /// <param name="vehicleVersionAppService"></param>
    public class VehicleController(IRegisterVehicleBrandAppService vehicleBrandService, IRegisterVehicleModelAppService vehicleModelAppService,
         IRegisterVehicleVersionAppService vehicleVersionAppService) : BaseController
    {
        private readonly IRegisterVehicleBrandAppService _vehicleBrandService = vehicleBrandService;
        private readonly IRegisterVehicleModelAppService _vehicleModelAppService = vehicleModelAppService;
        private readonly IRegisterVehicleVersionAppService _vehicleVersionAppService = vehicleVersionAppService;

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>        
        [HttpGet]
        [Route("get-search-brand")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<RegisterVehicleBrandModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<RegisterVehicleBrandModel>?>), StatusCodes.Status400BadRequest)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<RegisterVehicleBrandModel>?>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetSearchBrandAsync(string name)
        {
            var response = await _vehicleBrandService.GetSearchBrandAsync(name, RecordStatusEnum.Active);

            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="vehicleBranchId"></param>
        /// <param name="name"></param>
        /// <returns></returns>
        [AllowAnonymous]
        [HttpGet]
        [Route("get-search-model/{branchId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<RegisterVehicleBrandModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<RegisterVehicleBrandModel>?>), StatusCodes.Status400BadRequest)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<RegisterVehicleBrandModel>?>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetSearchModelAsync(int vehicleBranchId, string? name)
        {
            var response = await _vehicleModelAppService.GetSearchModelAsync(vehicleBranchId, name, RecordStatusEnum.Active);

            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="vehicleModelId"></param>
        /// <param name="name"></param>
        /// <returns></returns>
        [AllowAnonymous]
        [HttpGet]
        [Route("get-search-version/{vehicleModelId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<RegisterVehicleBrandModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<RegisterVehicleBrandModel>?>), StatusCodes.Status400BadRequest)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<RegisterVehicleBrandModel>?>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetSearchVersionlAsync(int vehicleModelId, string? name)
        {
            var response = await _vehicleVersionAppService.GetSearchVersionAsync(vehicleModelId, name, RecordStatusEnum.Active);

            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }
    }
}
