# MovieExplorer iOS Application

## Project Description
This repository contains a native iOS application developed in **Swift** using the **UIKit** framework. The app implements a classic Master-Detail interface where users can browse a list of movies and view comprehensive details for each selection.



## Features
* **Dynamic Movie List:** Utilizes `UITableView` with custom prototype cells to display movie posters and metadata.
* **Detailed View Controller:** A dedicated `MovieDescriptionVC` that renders high-resolution images and long-form plot descriptions using `UITextView`.
* **Auto Layout Integration:** Responsive design that adapts to various screen sizes, ensuring the text and images remain aligned across all iPhone models.
* **Navigation Stack:** Uses `UINavigationController` for a native "Back" button experience and smooth transitions.

## Application Screens

### 1. Main View (Movie List)
The initial screen displays a list of available movies. Each cell contains:
* **UIImageView:** Displays the movie's thumbnail.
* **Title:** The name of the movie.
* **Popularity Score:** A numerical ranking of the movie's current trend.
* **Release Year:** The official launch date of the film.

### 2. Movie Description VC
When a cell is tapped, the app transitions to this detail screen:
* **Large Poster View:** A prominent image at the top of the screen.
* **Synopsis:** A scrollable text area containing the full movie description.
* **Metadata Footer:** Displays popularity and release information for quick reference.

## Technical Details
* **Language:** Swift 5.0+
* **Framework:** UIKit
* **Architecture:** MVC (Model-View-Controller)
* **Data Passing:** Implemented via `prepare(for:sender:)` using Storyboard Segues.

## Installation
1.  **Clone the project:**
    ```bash
    git clone [https://github.com/your-username/your-repo-name.git](https://github.com/your-username/your-repo-name.git)
    ```
2.  **Open in Xcode:**
    Open the `.xcodeproj` file.
3.  **Build and Run:**
    Select your target device and press `Command + R`.

## Future Enhancements
* [ ] Connect to a live API (like TMDB) to fetch real-time data.
* [ ] Add a search bar to filter the movie list.
* [ ] Implement a "Favorites" feature using Core Data.

## Demo
![Simulator Screen Recording - iPhone 17 Pro - 2026-02-03 at 12 36 39](https://github.com/user-attachments/assets/3c9337d2-1b3d-4ce2-8081-ba23351fea61)



---
