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
    /// <param name="productVersionAcceptanceAppService"></param>
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
    /// <param name="productVersionConstructionTypeAppService"></param>
    /// <param name="productVersionActivityAppService"></param>
    /// <param name="productVersionPlanActivityAppService"></param>
    /// <param name="productVersionPlanCoverageAppService"></param>
    /// <param name="productVersionCoverageActivityLimitAppService"></param>
    /// <param name="productVersionLocalizationAppService"></param>
    /// <param name="productVersionCoverageFranchiseAppService"></param>
    public class ProductVersionController(IProductVersionAppService productVersionAppService, IProductVersionAcceptanceAppService productVersionAcceptanceAppService, IProductVersionInsuredObjectAppService productVersionInsuredObjectService,
        IProductVersionClauseAppService productVersionClauseService, IProductVersionLawsuitTypeAppService productVersionLawsuitTypeService, IProductVersionTermTypeAppService productVersionTermTypeService,
        IProductVersionPaymentMethodAppService productVersionPaymentMethodService, IProductVersionPaymentInstallmentAppService productVersionPaymentInstallmentService,
        IProductVersionPaymentFrequencyAppService productVersionPaymentFrequencyService, IProductVersionCoverageAppService productVersionCoverageAppService,
        IProductVersionContractTypeAppService productVersionContractTypeAppService, IProductVersionCalculationTypeAppService productVersionCalculationTypeAppService,
        IProductVersionCalculationTypeAcceptanceAppService productVersionCalculationTypeAcceptanceAppService, IProductVersionConstructionTypeAppService productVersionConstructionTypeAppService,
        IProductVersionActivityAppService productVersionActivityAppService, IProductVersionPlanActivityAppService productVersionPlanActivityAppService,
        IProductVersionPlanCoverageAppService productVersionPlanCoverageAppService, IProductVersionCoverageActivityLimitAppService productVersionCoverageActivityLimitAppService,
        IProductVersionLocalizationAppService productVersionLocalizationAppService, IProductVersionCoverageFranchiseAppService productVersionCoverageFranchiseAppService,
        IProductVersionPlanAssistanceAppService productVersionPlanAssistanceAppService, IProductVersionQuestionnaireAppService productVersionQuestionnaireAppService)
        : BaseController
    {
        private readonly IProductVersionAppService _productVersionAppService = productVersionAppService;
        private readonly IProductVersionAcceptanceAppService _productVersionAcceptanceAppService = productVersionAcceptanceAppService;
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
        private readonly IProductVersionConstructionTypeAppService _productVersionConstructionTypeAppService = productVersionConstructionTypeAppService;
        private readonly IProductVersionActivityAppService _productVersionActivityAppService = productVersionActivityAppService;
        private readonly IProductVersionPlanActivityAppService _productVersionPlanActivityAppService = productVersionPlanActivityAppService;
        private readonly IProductVersionPlanCoverageAppService _productVersionPlanCoverageAppService = productVersionPlanCoverageAppService;
        private readonly IProductVersionCoverageActivityLimitAppService _productVersionCoverageActivityLimitAppService = productVersionCoverageActivityLimitAppService;
        private readonly IProductVersionLocalizationAppService _productVersionLocalizationAppService = productVersionLocalizationAppService;
        private readonly IProductVersionCoverageFranchiseAppService _productVersionCoverageFranchiseAppService = productVersionCoverageFranchiseAppService;
        private readonly IProductVersionPlanAssistanceAppService _productVersionPlanAssistanceAppService = productVersionPlanAssistanceAppService;
        private readonly IProductVersionQuestionnaireAppService _productVersionQuestionnaireAppService = productVersionQuestionnaireAppService;


       /// <summary>
       /// 
       /// </summary>
       /// <param name="productId"></param>                        
       /// <returns></returns>
       [HttpGet]
        [Route("get-product-version/{productId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductVersionAcceptanceModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProductVersionAcceptancesAsync(int productId)
        {
            var response = await _productVersionAppService.GetAsync(productId, RecordStatusEnum.Active);
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
        [Route("get-product-version-acceptance/{productVersionId}/{profileId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<ProductVersionAcceptanceModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProductVersionAcceptancesAsync(int productVersionId, int profileId)
        {
            var response = await _productVersionAcceptanceAppService.GetAsync(productVersionId, profileId, RecordStatusEnum.Active);
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
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
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
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
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
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
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
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
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
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
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
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
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
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
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
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
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
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
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
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProductVersionContractTypeAsync(int productVersionId)
        {
            var response = await _productVersionContractTypeAppService.GetAsync(productVersionId, RecordStatusEnum.Active);
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
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProductVersionCalculationTypeAsync(int productVersionId, int profileId)
        {
            var response = await _productVersionCalculationTypeAppService.GeAsync(productVersionId, profileId, RecordStatusEnum.Active);
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
        [ProducesResponseType(typeof(BaseDataResponseModel<CalculationTypeAcceptanceModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProductVersionContractTypeAcceptanceAsync(int productVersionId, int profileId, int calculationTypeId)
        {
            var response = await _productVersionCalculationTypeAcceptanceAppService.GetAsync(productVersionId, profileId, calculationTypeId, RecordStatusEnum.Active);
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
        [Route("get-product-version-construction-type/{productVersionId}/{profileId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<ConstructionTypeModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProductVersionConstructionTypeAsync(int productVersionId, int profileId)
        {
            var response = await _productVersionConstructionTypeAppService.GetAsync(productVersionId, profileId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="productVersionId"></param>
        /// <param name="profileid"></param>
        /// <param name="name"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("get-product-version-activity/{productVersionId}/{profileid}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<ActivityModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProductVersionActivityAsync(int productVersionId, int profileid, string? name)
        {
            var response = await _productVersionActivityAppService.ListAsync(productVersionId, profileid, name, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="productVersionId"></param>
        /// <param name="activityId"></param>        
        /// <returns></returns>
        [HttpGet]
        [Route("get-product-version-plan-activity/{productVersionId}/{activityId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<PlanModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProductVersionPlanActivityAsync(int productVersionId, int activityId)
        {
            var response = await _productVersionPlanActivityAppService.ListAsync(productVersionId, activityId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="productVersionId,"></param>
        /// <param name="planId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("get-product-version-plan-coverage/{productVersionId}/{planId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<CoverageModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProductVersionPlanCoverageAsync(int productVersionId, int planId)
        {
            var response = await _productVersionPlanCoverageAppService.ListAsync(productVersionId, planId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="productVersionId"></param>
        /// <param name="planId"></param>        
        /// <returns></returns>
        [HttpGet]
        [Route("get-product-version-plan-assistance/{productVersionId}/{planId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<AssistanceModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProductVersionPlanAssistanceAsync(int productVersionId, int planId)
        {
            var response = await _productVersionPlanAssistanceAppService.GetAsync(productVersionId, planId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }
        /// <summary>
        /// s
        /// </summary>
        /// <param name="productVersionId"></param>
        /// <param name="coverageId"></param>
        /// <param name="activityId"></param>
        /// <param name="profileId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("get-product-version-coverage-activity-limit/{productVersionId}/{coverageId}/{activityId}/{profileId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<CoverageActivityLimitModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProductVersionCoverageActivityLimitAsync(int productVersionId, int coverageId, int activityId, int profileId)
        {
            var response = await _productVersionCoverageActivityLimitAppService.GetAsync(productVersionId, coverageId, activityId, profileId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }

        /// <summary>        
        /// </summary>
        /// <param name="productVersionId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("get-product-version-localization/{productVersionId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<LocalizationModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProductVersionLocalizationAsync(int productVersionId)
        {
            var response = await _productVersionLocalizationAppService.ListAsync(productVersionId, RecordStatusEnum.Active);
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
        [Route("get-product-version-coverage-franchise/{productVersionId}/{coverageId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<FranchiseModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProductVersionLocalizationAsync(int productVersionId, int coverageId)
        {
            var response = await _productVersionCoverageFranchiseAppService.GetAsync(productVersionId, coverageId, RecordStatusEnum.Active);
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
        [Route("get-product-version-questionnaire/{productVersionId}")]
        [ProducesResponseType(typeof(BaseDataResponseModel<IEnumerable<FranchiseModel>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status500InternalServerError)]
        [ProducesResponseType(typeof(BaseDataResponseModel<>), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetProductVersionQuestionnaireAsync(int productVersionId)
        {
            var response = await _productVersionQuestionnaireAppService.GetAsync(productVersionId, RecordStatusEnum.Active);
            if (response == null)
                return ReturnNotFound();

            return base.ReturnSuccess(response);
        }
    }
}