
module SplitFlapDisplay
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("jl/sfd_splitflapdisplay.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "split_flap_display",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "async-SplitFlapDisplay.js",
    external_url = "https://unpkg.com/split_flap_display@0.0.1/split_flap_display/async-SplitFlapDisplay.js",
    dynamic = nothing,
    async = :true,
    type = :js
),
DashBase.Resource(
    relative_package_path = "async-SplitFlapDisplay.js.map",
    external_url = "https://unpkg.com/split_flap_display@0.0.1/split_flap_display/async-SplitFlapDisplay.js.map",
    dynamic = true,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "split_flap_display.min.js",
    external_url = "https://unpkg.com/split_flap_display@0.0.1/split_flap_display/split_flap_display.min.js",
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "split_flap_display.min.js.map",
    external_url = "https://unpkg.com/split_flap_display@0.0.1/split_flap_display/split_flap_display.min.js.map",
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
