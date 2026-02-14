using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.Base64EncoderDecoder
{
    /// <summary>
    /// Query options for the Base64 Encoder/Decoder API
    /// </summary>
    public class Base64EncoderDecoderQueryOptions
    {
        /// <summary>
        /// The text to encode
        /// </summary>
        [JsonProperty("text")]
        public string Text { get; set; }

        /// <summary>
        /// The action to perform
        /// </summary>
        [JsonProperty("action")]
        public string Action { get; set; }
    }
}
