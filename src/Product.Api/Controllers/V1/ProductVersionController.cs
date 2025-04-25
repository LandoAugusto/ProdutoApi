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
    /// <param name="productVersionService"></param>
    /// <param name="productVersionInsuredObjectService"></param>
    /// <param name="productVersionClauseService"></param>
    /// <param name="productVersionLawsuitTypeService"></param>
    /// <param name="productVersionTermTypeService"></param>
    /// <param name="productVersionPaymentMethodService"></param>
    /// <param name="productVersionPaymentInstallmentService"></param>
    /// <param name="productVersionPaymentFrequencyService"></param>
    /// <param name="productVersionCoverageAppService"></param>
    public class ProductVersionController  (IProductVersionAcceptanceService productVersionService, IProductVersionInsuredObjectService productVersionInsuredObjectService,
        IProductVersionClauseService productVersionClauseService, IProductVersionLawsuitTypeService productVersionLawsuitTypeService, IProductVersionTermTypeService productVersionTermTypeService,
        IProductVersionPaymentMethodService productVersionPaymentMethodService, IProductVersionPaymentInstallmentService productVersionPaymentInstallmentService,
        IProductVersionPaymentFrequencyService productVersionPaymentFrequencyService, IProductVersionCoverageAppService productVersionCoverageAppService) : BaseController
    {
        private readonly IProductVersionAcceptanceService _productVersionService = productVersionService;
        private readonly IProductVersionInsuredObjectService _productVersionInsuredObjectService = productVersionInsuredObjectService;
        private readonly IProductVersionClauseService _productVersionClauseService = productVersionClauseService;
        private readonly IProductVersionLawsuitTypeService _productVersionLawsuitTypeService = productVersionLawsuitTypeService;
        private readonly IProductVersionTermTypeService _productVersionTermTypeService = productVersionTermTypeService;
        private readonly IProductVersionPaymentMethodService _productVersionPaymentMethodService = productVersionPaymentMethodService;
        private readonly IProductVersionPaymentInstallmentService _productVersionPaymentInstallmentService = productVersionPaymentInstallmentService;
        private readonly IProductVersionPaymentFrequencyService _productVersionPaymentFrequencyService = productVersionPaymentFrequencyService;
        private readonly IProductVersionCoverageAppService _productVersionCoverageAppService = productVersionCoverageAppService;    


        /// <summary>
        /// 
        /// </summary>
        /// <param name="productId"></param>
        /// <param name="coverageId"></param>
        /// <param name="profileId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("get-product-version-acceptance/{productId}/{coverageId}/{profileId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProductVersionAcceptancesAsync(int productId, int coverageId, int profileId)
        {
            var response = await _productVersionService.GetAsync(productId, coverageId, profileId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="productVersionId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("get-product-version-insured-object/{productVersionId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetInsuredObjectAsync(int productVersionId)
        {
            var response = await _productVersionInsuredObjectService.GetAsync(productVersionId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="productVersionId"></param>
        /// <param name="coverageId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("get-product-version-coverage/{productVersionId}/{coverageId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetByCoverageIdsync(int productVersionId, int coverageId)
        {
            var response = await _productVersionCoverageAppService.GetAsync(productVersionId, coverageId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>        
        /// <param name="productVersionId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("list-product-version-coverage/{productVersionId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> ListCoverageIdsync(int productVersionId)
        {
            var response = await _productVersionCoverageAppService.ListAsync(productVersionId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="productVersionId"></param>
        /// <param name="insuredAmountValue"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("get-product-version-clause/{productVersionId}/{insuredAmountValue}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> ListClauseAsync(int productVersionId, decimal insuredAmountValue)
        {
            var response = await _productVersionClauseService.ListAsync(productVersionId, insuredAmountValue, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="productVersionId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("get-product-version-term-type/{productVersionId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> ListTermTypeAsync(int productVersionId)
        {
            var response = await _productVersionTermTypeService.ListAsync(productVersionId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="productVersionId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("get-product-version-lawsuit-type/{productVersionId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> ListLawsuitTypeAsync(int productVersionId)
        {
            var response = await _productVersionLawsuitTypeService.ListAsync(productVersionId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="productVersionId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("get-product-version-payment-method/{productVersionId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> ListPaymentMethodAsync(int productVersionId)
        {
            var response = await _productVersionPaymentMethodService.ListAsync(productVersionId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="productVersionId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("get-product-version-payment-frequency/{productVersionId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> ListPaymentFrequencyAsync(int productVersionId)
        {
            var response = await _productVersionPaymentFrequencyService.ListAsync(productVersionId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="productVersionId"></param>
        /// <param name="paymentMethodId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("get-product-version-payment-installment/{productVersionId}/{paymentMethodId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductModel>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> ListPaymentInstallmentAsync(int productVersionId, int paymentMethodId)
        {
            var response = await _productVersionPaymentInstallmentService.ListAsync(productVersionId, paymentMethodId);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }
    }
}