#include <iostream>
#include <string>

#include "libs/argparse.hpp"

#include "helpers/jsonHelper.h"
#include "helpers/debugHelper.h"

#include "misc/settings.hpp"

#include "extract/extractor.h"
#include "builder/builder.h"
#include "prebuild/prebuild.h"
#include "test/test.h"

/*******************************************************************************************************/

int main(int argc, char *argv[]) {
    argparse::ArgumentParser args(DKRAT_NAME, DKRAT_VERSION);
    
    DkrAssetsSettings settings;
    
    /*** Extract tool ***/ 
    argparse::ArgumentParser extract("extract");
    
    /*** Build tool ***/
    argparse::ArgumentParser builder("build");
    
    /*** Pre-Build tool ***/
    argparse::ArgumentParser prebuild("prebuild");
    
    /*** Test tool (For testing functionality) ***/
    argparse::ArgumentParser tester("test");
    
    builder.add_argument("-i", "--input")
        .required()
        .help("Input JSON filepath.");
    
    builder.add_argument("-o", "--output")
        .required()
        .help("Output path.");
    
    args.add_subparser(extract);
    args.add_subparser(builder);
    args.add_subparser(prebuild);
    args.add_subparser(tester);
        
    args.add_argument("-dkrv", "--dkr_version")
        .default_value(settings.dkrVersion)
        .help("Which version of DKR to use. Overrides default.");
        
    args.add_argument("-vb", "--verbose")
        .default_value(DEFAULT_VERBOSE_VALUE)
        .implicit_value(true)
        .help("Which version of DKR to use. Overrides default.");
    
    try {
        args.parse_args(argc, argv);
    } catch (const std::exception &err) {
        if(args.is_subcommand_used(extract)) {
            std::cout << extract << std::endl;
        } else if(args.is_subcommand_used(builder)) {
            std::cout << builder << std::endl;
        }
        DebugHelper::error(err.what());
    }
    
    settings.dkrVersion = args.get<std::string>("-dkrv");
    DebugHelper::get().set_verbose(args.get<bool>("-vb"));
    DebugHelper::get().set_asserts(USING_ASSERTS);
    
    if(args.is_subcommand_used(extract)) {
        //settings.print();
        DkrExtract extract(settings);
        return 0;
    }
    if(args.is_subcommand_used(builder)) {
        std::string inputPath = builder.get<std::string>("-i");
        std::string outputPath = builder.get<std::string>("-o");
        //settings.print();
        DkrAssetBuilder builder(settings, inputPath, outputPath);
        return 0;
    }
    if(args.is_subcommand_used(tester)) {
        //settings.print();
        TestDKRAT test(settings);
        return 0;
    }
    if(args.is_subcommand_used(prebuild)) {
        //settings.print();
        PreBuild prebuild(settings);
        return 0;
    }
    
    return 0;
}
