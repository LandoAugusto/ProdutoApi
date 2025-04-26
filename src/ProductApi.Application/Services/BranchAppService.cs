using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Model;
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

        public async Task<IEnumerable<BranchTypeModel>?> ListBranchTypeAsync(RecordStatusEnum recordStatusEnum)
        {
            var response = await _branchTypeRepository.ListAsync(recordStatusEnum);
            if (response == null) return null;

            return _mapper.Map<IEnumerable<BranchTypeModel>>(response);
        }

        public async Task<IEnumerable<BranchModel>?> ListBranchAsync(int? brachTypeId, RecordStatusEnum recordStatusEnum)
        {
            var response = await _branchRepository.ListAsync(brachTypeId, recordStatusEnum);
            if (response == null) return null;

            return _mapper.Map<IEnumerable<BranchModel>>(response);
        }
    }
}
