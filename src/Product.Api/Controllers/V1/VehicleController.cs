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
    /// <param name="vehicleYearService"></param>
    public class VehicleController(IRegisterVehicleBrandAppService vehicleBrandService, IRegisterVehicleModelAppService vehicleModelAppService,
         IRegisterVehicleVersionAppService vehicleVersionAppService, IRegisterVehicleYearAppService vehicleYearService) : BaseController
    {
        private readonly IRegisterVehicleBrandAppService _vehicleBrandService = vehicleBrandService;
        private readonly IRegisterVehicleModelAppService _vehicleModelAppService = vehicleModelAppService;
        private readonly IRegisterVehicleVersionAppService _vehicleVersionAppService = vehicleVersionAppService;
        private readonly  IRegisterVehicleYearAppService _vehicleYearService = vehicleYearService;

        /// <summary> 
        [AllowAnonymous]
        [HttpGet]
        [Route("get-vehicle-brand/{name}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<RegisterVehicleBrandModel>>), StatusCodes.Status200OK)]        
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetVehicleBrandAsync(string name)
        {
            var response = await _vehicleBrandService.GetVehicleBrandAsync(name, RecordStatusEnum.Active);
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
        [Route("get-vehicle-model/{vehicleBranchId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<RegisterVehicleModelModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetVehicleModelAsync(int vehicleBranchId, string? name)
        {
            var response = await _vehicleModelAppService.GetVehicleModelAsync(vehicleBranchId, name, RecordStatusEnum.Active);
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
        [Route("get-vehicle-version/{vehicleModelId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<RegisterVehicleVersionModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetVehicleVersionAsync(int vehicleModelId, string? name)
        {
            var response = await _vehicleVersionAppService.GetVehicleVersionAsync(vehicleModelId, name, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>                
        /// <returns></returns>
        [AllowAnonymous]
        [HttpGet]
        [Route("get-vehicle-year")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<RegisterVehicleYearModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetVehicleYearAsync()
        {
            var response = await _vehicleYearService.GetAllAsync(RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }
    }
}
