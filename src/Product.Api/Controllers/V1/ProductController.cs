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
    /// <param name="productService"></param>

    public class ProductController(IProductAppService productService) : BaseController
    {

        private readonly IProductAppService _productService = productService;

        // <summary>        
        /// </summary>
        /// <remarks>
        /// remark goes here.
        /// </remarks>
        /// <param name="id">Required </param>
        /// <return>Returns comment</return>
        /// <response code="200">Ok</response>        
        [HttpGet]
        [Route("get-all")]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status400BadRequest)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProductAsync()
        {
            var response = await _productService.GetAllAsync(RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }
    }
}
