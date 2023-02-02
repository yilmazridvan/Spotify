//
//  ViewController.swift
//  Spotify
//
//  Created by Rıdvan Yılmaz on 12.01.2023.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Browse"
        view.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .done, target: self, action: #selector(didTapSettings))
        fetchData()
    }
    
    @objc private func didTapSettings() {
        let vc = SettingsViewController()
        vc.title = "Settings"
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func fetchData() {
//        APICaller.shared.getNewReleases { result in
//            switch result {
//            case .success(let model): break
//            case .failure(let error): break
//            }
//        }
//        APICaller.shared.getFeaturedPlayslists { result in
//            switch result {
//            case .success(let model): break
//            case .failure(let error): break
//            }
//        }
        APICaller.shared.getRecommendedGenres { result in
            switch result {
            case .success(let model):
                let genres = model.genres
                var seeds = Set<String>()
                while seeds.count < 5 {
                    if let random = genres.randomElement() {
                        seeds.insert(random)
                    }
                }
                
                APICaller.shared.getRecommendations(genres: seeds) { _ in
                    
                }
                
            case .failure(let error): break
            }
        }
    }


}

