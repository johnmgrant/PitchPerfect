//
//  RecordSoundsViewController+Audio.swift
//  PitchPerfect
//
//  Created by John Grant on 5/11/18.
//  Copyright © 2018 John Grant. All rights reserved.
//

import UIKit
import AVFoundation

extension RecordSoundsViewController: AVAudioRecorderDelegate {
    
    // MARK: PlayingState (raw values correspond to sender tags)
    
    enum RecordingState { case recording, notRecording }
    
    // MARK: UI Functions
    
    func configureUI(_ recordState: RecordingState) {
        switch recordState {
        case .recording:
            print("recording")
            recordingLabel.text = "Recording in Progress"
            recordButton.isEnabled = false
            stopRecordingButton.isEnabled = true
            break
        case .notRecording:
            print("notRecording")
            recordingLabel.text = "Tap to Record"
            recordButton.isEnabled = true
            stopRecordingButton.isEnabled = false
            break
        }
    }
}
