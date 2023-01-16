import UIKit


class CountriesTableViewController: UITableViewController {
    


    // MARK: - Table view data source
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
            // #warning Incomplete implementation, return the number of sections
            return continents.count
            
        }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return continents[Array(continents.keys)[section]]!    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
        
        let country = groupByContinent[Array(continents.keys)[indexPath.section]]![indexPath.row]
                cell.textLabel?.text = country.name
                cell.detailTextLabel?.text = country.isoCode
                cell.imageView?.image = UIImage(named: country.isoCode)

                return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            
            return " \(Array(continents.keys)[section])"
        }
    
    
   
    
    
    
    
}
