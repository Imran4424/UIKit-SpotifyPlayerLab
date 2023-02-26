//
//  ViewController.swift
//  SpotifyPlayerLab
//
//  Created by Shah Md Imran Hossain on 26/2/23.
//

import UIKit

class ViewController: UIViewController {
    let spaceBetween: CGFloat = 8

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViews()
    }

    func setupViews() {
        let albumImage = makeImageView(named: "rush")
        let trackLabel = makeTrackLabel(withText: "Tom Sawyer")
        let albumLabel = makeAlbumLabel(withText: "Rush • Moving Pictures (2011 Remaster)")
        
        let playButton = makePlayButton()
        let previewStartLabel = makePreviewLabel(withText: "0:00")
        let previewEndLabel = makePreviewLabel(withText: "0:30")
        let progressView = makeProgressView()

        let spotifyButton = makeSpotifyButton(withText: "PLAY ON SPOTIFY")
        
        view.addSubview(albumImage)
        view.addSubview(trackLabel)
        view.addSubview(albumLabel)

        view.addSubview(playButton)
        view.addSubview(previewStartLabel)
        view.addSubview(progressView)
        view.addSubview(previewEndLabel)

        view.addSubview(spotifyButton)
        
        // albumImage
        // this does not work
//        NSLayoutConstraint.activate([
//            albumImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            albumImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            albumImage.trailingAnchor.constraint(equalTo: view.trailingAnchor)
//        ])
        
        NSLayoutConstraint.activate([
            albumImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            albumImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            albumImage.widthAnchor.constraint(equalToConstant: view.bounds.width),
            albumImage.heightAnchor.constraint(equalTo: albumImage.widthAnchor, multiplier: 1)
        ])
        
        // trackLabel
        NSLayoutConstraint.activate([
            trackLabel.topAnchor.constraint(equalTo: albumImage.bottomAnchor, constant: 8),
            trackLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        // albumLabel
        NSLayoutConstraint.activate([
            albumLabel.topAnchor.constraint(equalTo: trackLabel.bottomAnchor, constant: 8),
            albumLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        // playbutton
        NSLayoutConstraint.activate([
            playButton.topAnchor.constraint(equalTo: albumLabel.bottomAnchor, constant: 8),
            playButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            playButton.heightAnchor.constraint(equalToConstant: buttonHeight),
            playButton.widthAnchor.constraint(equalToConstant: buttonHeight)
        ])
        
        // preview start label
        NSLayoutConstraint.activate([
            previewStartLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            previewStartLabel.leadingAnchor.constraint(equalTo: playButton.trailingAnchor, constant: spaceBetween)
        ])
        
        // progress view
        NSLayoutConstraint.activate([
            progressView.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            progressView.leadingAnchor.constraint(equalTo: previewStartLabel.trailingAnchor, constant: spaceBetween)
        ])
        
        // preview end label
        NSLayoutConstraint.activate([
            previewEndLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            previewEndLabel.leadingAnchor.constraint(equalTo: progressView.trailingAnchor, constant: spaceBetween),
            view.trailingAnchor.constraint(equalTo: previewEndLabel.trailingAnchor, constant: 8)
        ])
        
        // spotifyButton
        NSLayoutConstraint.activate([
            spotifyButton.topAnchor.constraint(equalTo: playButton.bottomAnchor, constant: 32),
            spotifyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            spotifyButton.heightAnchor.constraint(equalToConstant: buttonHeight),
            spotifyButton.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
}


