﻿using ProductApi.Core.Entities.Enumerators;

namespace ProductApi.Core.Models.Product
{
    public class ClauseTextModel
    {
        public int? TextId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public TextTypeEnum? TextType { get; set; }
    }
}
