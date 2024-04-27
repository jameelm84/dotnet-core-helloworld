using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace dotnet_core_helloworld.Controllers
{
    [Route("kubernetes")]
    [ApiController]
    public class KubernetesController : ControllerBase
    {
        [HttpGet]
        public ActionResult<string> Get()
        {
            return "Hello World! - Kubernetes";
        }
    }
}
