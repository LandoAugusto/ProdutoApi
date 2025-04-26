using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class BranchAppService(IMapper mapper, IBranchRepository branchRepository, IBranchTypeRepository branchTypeRepository, 
        IInsuranceBranchRepository insuranceBranchRepository) : IBranchAppService
    {
        private readonly IBranchRepository _branchRepository = branchRepository;
        private readonly IBranchTypeRepository _branchTypeRepository = branchTypeRepository;
        private readonly IInsuranceBranchRepository _insuranceBranchRepository = insuranceBranchRepository;
        private readonly IMapper _mapper = mapper;

    }
}
