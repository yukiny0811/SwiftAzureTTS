//
//  File.swift
//  SwiftAzureTTS
//
//  Created by Yuki Kuwashima on 2025/02/02.
//

import Foundation

public enum SwiftAzureTTS {
    public func getAudioDataAsync(text: String, language: Language, subscriptionKey: String, region: String = "japaneast") async throws -> Data {
        
        guard let url = URL(string: "https://\(region).tts.speech.microsoft.com/cognitiveservices/v1") else {
            throw URLError(.badURL)
        }
        
        let ssml = """
        <speak version='1.0' xml:lang='en-US'>
            <voice xml:lang='\(language.voice.lang)' xml:gender='\(language.voice.gender)' name='\(language.voice.name)'>
                \(text)
            </voice>
        </speak>
        """
        
        guard let bodyData = ssml.data(using: .utf8) else {
            throw NSError(domain: "SSMLError", code: -1, userInfo: [NSLocalizedDescriptionKey: "SSMLのエンコードに失敗しました"])
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue(subscriptionKey, forHTTPHeaderField: "Ocp-Apim-Subscription-Key")
        request.addValue("application/ssml+xml", forHTTPHeaderField: "Content-Type")
        request.addValue("riff-24khz-16bit-mono-pcm", forHTTPHeaderField: "X-Microsoft-OutputFormat")
        request.addValue("MyApp", forHTTPHeaderField: "User-Agent")
        request.httpBody = bodyData
        
        let (data, response) = try await URLSession.shared.data(for: request)
        if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode != 200 {
            throw NSError(domain: "HTTPError", code: httpResponse.statusCode, userInfo: nil)
        }
        return data
    }
}
