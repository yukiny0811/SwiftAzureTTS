//
//  Voice.swift
//  SwiftAzureTTS
//
//  Created by Yuki Kuwashima on 2025/02/02.
//

public struct AzureTTSVoice: Hashable, Equatable, Sendable {
    public var lang: String
    public var gender: String
    public var name: String
}
