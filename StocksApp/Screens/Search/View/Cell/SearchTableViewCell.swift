import UIKit

class SearchTableViewCell: UITableViewCell {

    @IBOutlet private weak var symbolLabel: UILabel!
    @IBOutlet private weak var typeLabel: UILabel!
    @IBOutlet private weak var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(with searchResult: SearchResult) {
        nameLabel.text = searchResult.name
        symbolLabel.text = searchResult.symbol
        typeLabel.text = searchResult.type
            .appending(" ")
            .appending(searchResult.currency)
    }
    
}
