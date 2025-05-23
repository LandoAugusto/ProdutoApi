using Microsoft.AspNetCore.Mvc;
using Product.Api.Controllers.V1.Base;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;
using ProductApi.Core.Models.Product;

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
    /// <param name="productVersionContractTypeAppService"></param>
    /// <param name="productVersionCalculationTypeAppService"></param>
    /// <param name="productVersionCalculationTypeAcceptanceAppService"></param>
    public class ProductVersionController(IProductVersionAcceptanceAppService productVersionService, IProductVersionInsuredObjectAppService productVersionInsuredObjectService,
        IProductVersionClauseAppService productVersionClauseService, IProductVersionLawsuitTypeAppService productVersionLawsuitTypeService, IProductVersionTermTypeAppService productVersionTermTypeService,
        IProductVersionPaymentMethodAppService productVersionPaymentMethodService, IProductVersionPaymentInstallmentAppService productVersionPaymentInstallmentService,
        IProductVersionPaymentFrequencyAppService productVersionPaymentFrequencyService, IProductVersionCoverageAppService productVersionCoverageAppService,
        IProductVersionContractTypeAppService productVersionContractTypeAppService, IProductVersionCalculationTypeAppService productVersionCalculationTypeAppService,
        IProductVersionCalculationTypeAcceptanceAppService productVersionCalculationTypeAcceptanceAppService) : BaseController
    {
        private readonly IProductVersionAcceptanceAppService _productVersionService = productVersionService;
        private readonly IProductVersionInsuredObjectAppService _productVersionInsuredObjectService = productVersionInsuredObjectService;
        private readonly IProductVersionClauseAppService _productVersionClauseService = productVersionClauseService;
        private readonly IProductVersionLawsuitTypeAppService _productVersionLawsuitTypeService = productVersionLawsuitTypeService;
        private readonly IProductVersionTermTypeAppService _productVersionTermTypeService = productVersionTermTypeService;
        private readonly IProductVersionPaymentMethodAppService _productVersionPaymentMethodService = productVersionPaymentMethodService;
        private readonly IProductVersionPaymentInstallmentAppService _productVersionPaymentInstallmentService = productVersionPaymentInstallmentService;
        private readonly IProductVersionPaymentFrequencyAppService _productVersionPaymentFrequencyService = productVersionPaymentFrequencyService;
        private readonly IProductVersionCoverageAppService _productVersionCoverageAppService = productVersionCoverageAppService;
        private readonly IProductVersionContractTypeAppService _productVersionContractTypeAppService = productVersionContractTypeAppService;
        private readonly IProductVersionCalculationTypeAppService _productVersionCalculationTypeAppService = productVersionCalculationTypeAppService;
        private readonly IProductVersionCalculationTypeAcceptanceAppService _productVersionCalculationTypeAcceptanceAppService = productVersionCalculationTypeAcceptanceAppService;


        /// <summary>
        /// 
        /// </summary>
        /// <param name="productId"></param>        
        /// <param name="profileId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("get-product-version-acceptance/{productId}/{profileId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductVersionAcceptanceModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductVersionAcceptanceModel>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductVersionAcceptanceModel>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProductVersionAcceptancesAsync(int productId, int profileId)
        {
            var response = await _productVersionService.GetAsync(productId, profileId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="productVersionCoverageId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("get-product-version-insured-object/{productVersionCoverageId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<InsuredObjectModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<InsuredObjectModel>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<InsuredObjectModel>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetInsuredObjectAsync(int productVersionCoverageId)
        {
            var response = await _productVersionInsuredObjectService.GetAsync(productVersionCoverageId, RecordStatusEnum.Active);
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
        [ProducesResponseType(typeof(BaseDataResponseModel<CoverageModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<CoverageModel?>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<CoverageModel?>), StatusCodes.Status404NotFound)]
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
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<CoverageModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<CoverageModel>?>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<CoverageModel>?>), StatusCodes.Status404NotFound)]
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
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<ProductVersionClauseModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<ProductVersionClauseModel>?>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<ProductVersionClauseModel>?>), StatusCodes.Status404NotFound)]
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
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<TermTypeModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<TermTypeModel>?>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<TermTypeModel>?>), StatusCodes.Status404NotFound)]
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
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<ProductVersionLawsuitTypeModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<ProductVersionLawsuitTypeModel>?>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<ProductVersionLawsuitTypeModel>?>), StatusCodes.Status404NotFound)]
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
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<PaymentMethodModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<PaymentMethodModel>?>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<PaymentMethodModel>?>), StatusCodes.Status404NotFound)]
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
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<PaymentFrequencyModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<PaymentFrequencyModel?>>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<PaymentFrequencyModel?>>), StatusCodes.Status404NotFound)]
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
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<PaymentInstallmentModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<PaymentInstallmentModel?>>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<PaymentInstallmentModel?>>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> ListPaymentInstallmentAsync(int productVersionId, int paymentMethodId)
        {
            var response = await _productVersionPaymentInstallmentService.ListAsync(productVersionId, paymentMethodId);
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
        [Route("get-product-version-contract-type/{productVersionId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<ContractTypeModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<ContractTypeModel?>>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<ContractTypeModel?>>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProductVersionContractTypeAsync(int productVersionId)
        {
            var response = await _productVersionContractTypeAppService.GetProductVersionContractTypeAsync(productVersionId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="productVersionId"></param>
        /// <param name="profileId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("get-product-version-calculation-type/{productVersionId}/{profileId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<CalculationTypeModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<CalculationTypeModel?>>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<CalculationTypeModel?>>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProductVersionContractTypeAsync(int productVersionId, int profileId)
        {
            var response = await _productVersionCalculationTypeAppService.GetProductVersionCalculationTypeAsync(productVersionId, profileId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="productVersionId"></param>
        /// <param name="profileId"></param>
        /// <param name="calculationTypeId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("get-product-version-calculation-type-acceptance/{productVersionId}/{profileId}/{calculationTypeId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<CalculationTypeModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<CalculationTypeModel?>>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<CalculationTypeModel?>>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProductVersionContractTypeAcceptanceAsync(int productVersionId, int profileId, int calculationTypeId)
        {
            var response = await _productVersionCalculationTypeAcceptanceAppService.GetAsync(productVersionId, profileId, calculationTypeId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }
    }
}