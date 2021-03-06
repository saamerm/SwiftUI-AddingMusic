import Foundation
import AVFAudio

var backgroundAudioPlayer: AVAudioPlayer?

/// plays a file looping indefinitely
///
/// - Parameters:
///     - sound: name of the audio file in your xcode project
///     - type: type of file for sound parameter (ex: "mp3")
/// - Returns:
///     - plays music if possible
func startBackgroundMusic(sound: String, type: String) {
    if let bundle = Bundle.main.path(forResource: sound, ofType: type) {
        let backgroundMusic = NSURL(fileURLWithPath: bundle)
        do {
            backgroundAudioPlayer = try AVAudioPlayer(contentsOf:backgroundMusic as URL)
            guard let backgroundAudioPlayer = backgroundAudioPlayer else { return }
            backgroundAudioPlayer.numberOfLoops = -1
            backgroundAudioPlayer.prepareToPlay()
            backgroundAudioPlayer.play()
        } catch {
            print(error)
        }
    }
}

/// stops the file associated with this audio player
func stopBackgroundMusic() {
    guard let backgroundAudioPlayer = backgroundAudioPlayer else { return }
    backgroundAudioPlayer.stop()
}
