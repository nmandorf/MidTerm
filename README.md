# MidTerm

A SwiftUI project built by **Noa Mandorf** for CIS 137 – iOS App Development.  
This app displays a list of well-known EDM DJs, loaded dynamically from a local `Data.json` file.  
Users can browse the list and tap any DJ to view a detailed description and image.

---

## Features

- Loads structured data from a local JSON file  
- Uses Swift’s Codable and Identifiable protocols  
- Displays DJs with names, images, and short descriptions  
- Opens a detail view on tap showing the full description and larger image  
- Built with NavigationView and NavigationLink  
- Clean, responsive SwiftUI layout

---

## Project Structure

Midterm_NoaMandorf/
│
├── ContentView.swift          # Main list view that displays all DJs
├── DJ.swift                   # Model defining the DJ data structure
├── DJDetailView.swift         # Detail view shown when a DJ is tapped
├── Bundle+Decode.swift        # JSON decoding helper
├── Assets.xcassets/           # Contains app icons and DJ images
└── Data.json                  # Local JSON file with all DJ data

---

How It Works
	1.	The DJ model defines the structure for each JSON entry.
	2.	The Bundle+Decode.swift helper loads and decodes Data.json from the app bundle.
	3.	ContentView.swift displays all DJs in a SwiftUI List.
	4.	Each list item is a NavigationLink to DJDetailView.swift.
	5.	DJDetailView presents the full description and a larger image.

---

## Data.json Format

Each DJ entry in the JSON file follows this format:

```json
{
  "id": "aa32jj887hhg55",
  "name": "Martin Garrix",
  "description": "A Dutch prodigy known for his euphoric festival anthems...",
  "imageName": "Martin"
}

