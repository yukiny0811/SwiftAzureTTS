//
//  File.swift
//  SwiftAzureTTS
//
//  Created by Yuki Kuwashima on 2025/02/02.
//

public enum Language: String, Hashable, Equatable, CaseIterable, Sendable {
    case afrikaans
    case amharic
    case arabicEgypt
    case armenian
    case azerbaijani
    case bengaliIndia
    case bulgarian
    case catalan
    case chineseSimplified
    case chineseTraditionalTaiwan
    case croatian
    case czech
    case danish
    case dutch
    case englishUS
    case englishUK
    case englishAU
    case englishCA
    case estonian
    case finnish
    case frenchFrance
    case frenchCanada
    case german
    case greek
    case gujaratiIndia
    case hebrew
    case hindi
    case hungarian
    case icelandic
    case indonesian
    case irish
    case italian
    case japanese
    case javanese
    case kannada
    case kazakh
    case khmer
    case korean
    case lao
    case latvian
    case lithuanian
    case macedonian
    case malay
    case malayalam
    case maltese
    case marathi
    case myanmar
    case norwegianBokmal
    case pashto
    case persian
    case polish
    case portugueseBrazil
    case portuguesePortugal
    case romanian
    case russian
    case serbianCyrillic
    case slovak
    case slovenian
    case spanishSpain
    case spanishMexico
    case sundanese
    case swedish
    case tamil
    case telugu
    case thai
    case turkish
    case ukrainian
    case urdu
    case uzbekLatin
    case vietnamese
    case welsh
    case zulu

    public var languageNameInJapanese: String {
        switch self {
        case .afrikaans:              return "アフリカーンス語"
        case .amharic:                return "アムハラ語"
        case .arabicEgypt:            return "アラビア語（エジプト）"
        case .armenian:               return "アルメニア語"
        case .azerbaijani:            return "アゼルバイジャン語"
        case .bengaliIndia:           return "ベンガル語（インド）"
        case .bulgarian:              return "ブルガリア語"
        case .catalan:                return "カタロニア語"
        case .chineseSimplified:      return "中国語（簡体字）"
        case .chineseTraditionalTaiwan: return "中国語（繁体字、台湾）"
        case .croatian:               return "クロアチア語"
        case .czech:                  return "チェコ語"
        case .danish:                 return "デンマーク語"
        case .dutch:                  return "オランダ語"
        case .englishUS:              return "英語（米国）"
        case .englishUK:              return "英語（英国）"
        case .englishAU:              return "英語（オーストラリア）"
        case .englishCA:              return "英語（カナダ）"
        case .estonian:               return "エストニア語"
        case .finnish:                return "フィンランド語"
        case .frenchFrance:           return "フランス語（フランス）"
        case .frenchCanada:           return "フランス語（カナダ）"
        case .german:                 return "ドイツ語（ドイツ）"
        case .greek:                  return "ギリシャ語"
        case .gujaratiIndia:          return "グジャラーティー語（インド）"
        case .hebrew:                 return "ヘブライ語"
        case .hindi:                  return "ヒンディー語"
        case .hungarian:              return "ハンガリー語"
        case .icelandic:              return "アイスランド語"
        case .indonesian:             return "インドネシア語"
        case .irish:                  return "アイルランド語"
        case .italian:                return "イタリア語"
        case .japanese:               return "日本語"
        case .javanese:               return "ジャワ語"
        case .kannada:                return "カンナダ語"
        case .kazakh:                 return "カザフ語"
        case .khmer:                  return "クメール語"
        case .korean:                 return "韓国語"
        case .lao:                    return "ラオ語"
        case .latvian:                return "ラトビア語"
        case .lithuanian:             return "リトアニア語"
        case .macedonian:             return "マケドニア語"
        case .malay:                  return "マレー語"
        case .malayalam:              return "マラヤーラム語"
        case .maltese:                return "マルタ語"
        case .marathi:                return "マラーティー語"
        case .myanmar:                return "ミャンマー語"
        case .norwegianBokmal:        return "ノルウェー語（Bokmål）"
        case .pashto:                 return "パシュトー語"
        case .persian:                return "ペルシア語"
        case .polish:                 return "ポーランド語"
        case .portugueseBrazil:       return "ポルトガル語（ブラジル）"
        case .portuguesePortugal:     return "ポルトガル語（ポルトガル）"
        case .romanian:               return "ルーマニア語"
        case .russian:                return "ロシア語"
        case .serbianCyrillic:        return "セルビア語（キリル文字）"
        case .slovak:                 return "スロバキア語"
        case .slovenian:              return "スロベニア語"
        case .spanishSpain:           return "スペイン語（スペイン）"
        case .spanishMexico:          return "スペイン語（メキシコ）"
        case .sundanese:              return "スンダ語"
        case .swedish:                return "スウェーデン語"
        case .tamil:                  return "タミル語"
        case .telugu:                 return "テルグ語"
        case .thai:                   return "タイ語"
        case .turkish:                return "トルコ語"
        case .ukrainian:              return "ウクライナ語"
        case .urdu:                   return "ウルドゥー語"
        case .uzbekLatin:             return "ウズベク語（ラテン文字）"
        case .vietnamese:             return "ベトナム語"
        case .welsh:                  return "ウェールズ語"
        case .zulu:                   return "ズールー語"
        }
    }

    public var voice: AzureTTSVoice {
        switch self {
        case .afrikaans:              return AzureTTSVoice(lang: "af-ZA", gender: "Female", name: "af-ZA-AdriNeural")
        case .amharic:                return AzureTTSVoice(lang: "am-ET", gender: "Female", name: "am-ET-MekdesNeural")
        case .arabicEgypt:            return AzureTTSVoice(lang: "ar-EG", gender: "Female", name: "ar-EG-SalmaNeural")
        case .armenian:               return AzureTTSVoice(lang: "hy-AM", gender: "Female", name: "hy-AM-AnahitNeural")
        case .azerbaijani:            return AzureTTSVoice(lang: "az-AZ", gender: "Female", name: "az-AZ-BanuNeural")
        case .bengaliIndia:           return AzureTTSVoice(lang: "bn-IN", gender: "Female", name: "bn-IN-TanishaaNeural")
        case .bulgarian:              return AzureTTSVoice(lang: "bg-BG", gender: "Female", name: "bg-BG-KalinaNeural")
        case .catalan:                return AzureTTSVoice(lang: "ca-ES", gender: "Female", name: "ca-ES-JoanaNeural")
        case .chineseSimplified:      return AzureTTSVoice(lang: "zh-CN", gender: "Female", name: "zh-CN-XiaoxiaoNeural")
        case .chineseTraditionalTaiwan: return AzureTTSVoice(lang: "zh-TW", gender: "Female", name: "zh-TW-HsiaoChenNeural")
        case .croatian:               return AzureTTSVoice(lang: "hr-HR", gender: "Female", name: "hr-HR-GabrijelaNeural")
        case .czech:                  return AzureTTSVoice(lang: "cs-CZ", gender: "Female", name: "cs-CZ-VlastaNeural")
        case .danish:                 return AzureTTSVoice(lang: "da-DK", gender: "Female", name: "da-DK-ChristelNeural")
        case .dutch:                  return AzureTTSVoice(lang: "nl-NL", gender: "Female", name: "nl-NL-ColetteNeural")
        case .englishUS:              return AzureTTSVoice(lang: "en-US", gender: "Female", name: "en-US-JennyNeural")
        case .englishUK:              return AzureTTSVoice(lang: "en-GB", gender: "Female", name: "en-GB-SoniaNeural")
        case .englishAU:              return AzureTTSVoice(lang: "en-AU", gender: "Female", name: "en-AU-NatashaNeural")
        case .englishCA:              return AzureTTSVoice(lang: "en-CA", gender: "Female", name: "en-CA-ClaraNeural")
        case .estonian:               return AzureTTSVoice(lang: "et-EE", gender: "Female", name: "et-EE-AnuNeural")
        case .finnish:                return AzureTTSVoice(lang: "fi-FI", gender: "Female", name: "fi-FI-SelmaNeural")
        case .frenchFrance:           return AzureTTSVoice(lang: "fr-FR", gender: "Female", name: "fr-FR-DeniseNeural")
        case .frenchCanada:           return AzureTTSVoice(lang: "fr-CA", gender: "Female", name: "fr-CA-SylvieNeural")
        case .german:                 return AzureTTSVoice(lang: "de-DE", gender: "Female", name: "de-DE-KatjaNeural")
        case .greek:                  return AzureTTSVoice(lang: "el-GR", gender: "Female", name: "el-GR-AthinaNeural")
        case .gujaratiIndia:          return AzureTTSVoice(lang: "gu-IN", gender: "Female", name: "gu-IN-DhwaniNeural")
        case .hebrew:                 return AzureTTSVoice(lang: "he-IL", gender: "Female", name: "he-IL-HilaNeural")
        case .hindi:                  return AzureTTSVoice(lang: "hi-IN", gender: "Female", name: "hi-IN-AnanyaNeural")
        case .hungarian:              return AzureTTSVoice(lang: "hu-HU", gender: "Female", name: "hu-HU-NoemiNeural")
        case .icelandic:              return AzureTTSVoice(lang: "is-IS", gender: "Female", name: "is-IS-GudrunNeural")
        case .indonesian:             return AzureTTSVoice(lang: "id-ID", gender: "Male",   name: "id-ID-ArdiNeural")
        case .irish:                  return AzureTTSVoice(lang: "ga-IE", gender: "Female", name: "ga-IE-OrlaNeural")
        case .italian:                return AzureTTSVoice(lang: "it-IT", gender: "Female", name: "it-IT-ElsaNeural")
        case .japanese:               return AzureTTSVoice(lang: "ja-JP", gender: "Female", name: "ja-JP-NanamiNeural")
        case .javanese:               return AzureTTSVoice(lang: "jv-ID", gender: "Male",   name: "jv-ID-RizkyNeural")
        case .kannada:                return AzureTTSVoice(lang: "kn-IN", gender: "Female", name: "kn-IN-SwaraNeural")
        case .kazakh:                 return AzureTTSVoice(lang: "kk-KZ", gender: "Male",   name: "kk-KZ-AibekNeural")
        case .khmer:                  return AzureTTSVoice(lang: "km-KH", gender: "Female", name: "km-KH-SreyNeural")
        case .korean:                 return AzureTTSVoice(lang: "ko-KR", gender: "Female", name: "ko-KR-SunHiNeural")
        case .lao:                    return AzureTTSVoice(lang: "lo-LA", gender: "Female", name: "lo-LA-SivilNeural")
        case .latvian:                return AzureTTSVoice(lang: "lv-LV", gender: "Female", name: "lv-LV-LieneNeural")
        case .lithuanian:             return AzureTTSVoice(lang: "lt-LT", gender: "Female", name: "lt-LT-AusmaNeural")
        case .macedonian:             return AzureTTSVoice(lang: "mk-MK", gender: "Female", name: "mk-MK-MajaNeural")
        case .malay:                  return AzureTTSVoice(lang: "ms-MY", gender: "Female", name: "ms-MY-AyishaNeural")
        case .malayalam:              return AzureTTSVoice(lang: "ml-IN", gender: "Female", name: "ml-IN-SobhanaNeural")
        case .maltese:                return AzureTTSVoice(lang: "mt-MT", gender: "Female", name: "mt-MT-ClaudiaNeural")
        case .marathi:                return AzureTTSVoice(lang: "mr-IN", gender: "Male",   name: "mr-IN-MadhurNeural")
        case .myanmar:                return AzureTTSVoice(lang: "my-MM", gender: "Female", name: "my-MM-AyeNeural")
        case .norwegianBokmal:        return AzureTTSVoice(lang: "nb-NO", gender: "Male",   name: "nb-NO-FinnNeural")
        case .pashto:                 return AzureTTSVoice(lang: "ps-AF", gender: "Female", name: "ps-AF-LatifaNeural")
        case .persian:                return AzureTTSVoice(lang: "fa-IR", gender: "Female", name: "fa-IR-DilaraNeural")
        case .polish:                 return AzureTTSVoice(lang: "pl-PL", gender: "Male",   name: "pl-PL-MarekNeural")
        case .portugueseBrazil:       return AzureTTSVoice(lang: "pt-BR", gender: "Female", name: "pt-BR-FranciscaNeural")
        case .portuguesePortugal:     return AzureTTSVoice(lang: "pt-PT", gender: "Female", name: "pt-PT-RaquelNeural")
        case .romanian:               return AzureTTSVoice(lang: "ro-RO", gender: "Female", name: "ro-RO-AlinaNeural")
        case .russian:                return AzureTTSVoice(lang: "ru-RU", gender: "Female", name: "ru-RU-SvetlanaNeural")
        case .serbianCyrillic:        return AzureTTSVoice(lang: "sr-RS", gender: "Female", name: "sr-RS-SophieNeural")
        case .slovak:                 return AzureTTSVoice(lang: "sk-SK", gender: "Female", name: "sk-SK-ViktoriaNeural")
        case .slovenian:              return AzureTTSVoice(lang: "sl-SI", gender: "Female", name: "sl-SI-PetraNeural")
        case .spanishSpain:           return AzureTTSVoice(lang: "es-ES", gender: "Female", name: "es-ES-ElviraNeural")
        case .spanishMexico:          return AzureTTSVoice(lang: "es-MX", gender: "Female", name: "es-MX-DaliaNeural")
        case .sundanese:              return AzureTTSVoice(lang: "su-ID", gender: "Male",   name: "su-ID-RafiNeural")
        case .swedish:                return AzureTTSVoice(lang: "sv-SE", gender: "Female", name: "sv-SE-SofieNeural")
        case .tamil:                  return AzureTTSVoice(lang: "ta-IN", gender: "Female", name: "ta-IN-PallaviNeural")
        case .telugu:                 return AzureTTSVoice(lang: "te-IN", gender: "Female", name: "te-IN-ShrutiNeural")
        case .thai:                   return AzureTTSVoice(lang: "th-TH", gender: "Female", name: "th-TH-PremwadeeNeural")
        case .turkish:                return AzureTTSVoice(lang: "tr-TR", gender: "Female", name: "tr-TR-EmelNeural")
        case .ukrainian:              return AzureTTSVoice(lang: "uk-UA", gender: "Female", name: "uk-UA-PolinaNeural")
        case .urdu:                   return AzureTTSVoice(lang: "ur-PK", gender: "Female", name: "ur-PK-UzmaNeural")
        case .uzbekLatin:             return AzureTTSVoice(lang: "uz-UZ", gender: "Female", name: "uz-UZ-MadinaNeural")
        case .vietnamese:             return AzureTTSVoice(lang: "vi-VN", gender: "Female", name: "vi-VN-HoaiMyNeural")
        case .welsh:                  return AzureTTSVoice(lang: "cy-GB", gender: "Female", name: "cy-GB-NiaNeural")
        case .zulu:                   return AzureTTSVoice(lang: "zu-ZA", gender: "Female", name: "zu-ZA-ThandoNeural")
        }
    }
}
