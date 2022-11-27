//
//  ToomasKitPlugin.swift
//  
//
//  Created by Toomas Vahter on 2022/11/25.
//

import Foundation
import PackagePlugin

@main
struct ToomasKitPlugin: BuildToolPlugin {
    func createBuildCommands(context: PackagePlugin.PluginContext, target: PackagePlugin.Target) async throws -> [PackagePlugin.Command] {
        
        let inputJSON = target.directory.appending("Source.json")
        let output = context.pluginWorkDirectory.appending("GeneratedEnum.swift")
        return [
            .buildCommand(displayName: "Generate Code",
                          executable: try context.tool(named: "CodeGenerator").path,
                          arguments: [inputJSON, output],
                          environment: [:],
                          inputFiles: [inputJSON],
                          outputFiles: [output])
        ]
    }
}
