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
    public class CoverageController(IProductService productService) :  BaseController
    {
        private readonly IProductService _productService = productService;


        /// <summary>
        /// 
        /// </summary>
        /// <param name="branchId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("get-product-branch{branchId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status400BadRequest)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetByBranchIdAsync(int branchId)
        {
            var response = await _productService.GetAllAsync(RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="productId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("get-product-coverage{productId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status400BadRequest)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetByProductIdAsync(int productId)
        {
            var response = await _productService.GetAllAsync(RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }
    }
}
