# Allow http
resource "google_compute_firewall" "my-allow-http" {
  name    = "tudprojfw-allow-http"
  project = "tudproj-380715"
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["http"] 
}


resource "google_compute_firewall" "my-allow-mysql" {
  name    = "tudprojfw-allow-mysql"
  project = "tudproj-380715"
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["3306"]
  }
  
  source_ranges = ["0.0.0.0/0"]
}
