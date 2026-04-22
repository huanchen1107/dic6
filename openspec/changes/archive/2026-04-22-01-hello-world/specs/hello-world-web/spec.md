# Hello World Web Interface

## Overview
A basic web application that renders a visually appealing greeting to the user and includes a simple interactive element.

## ADDED Requirements

### Requirement: HTML Skeleton
- The application MUST have an `index.html` file at the root.
- The HTML MUST include a `<title>` tag and link to `style.css` and `app.js`.

#### Scenario: Verify boilerplate loading
When a user opens the index.html file
Then the document is successfully parsed as HTML5 with the correct title and external resources.

### Requirement: Styling
- The application MUST use `style.css` for styling.
- The design MUST be responsive.
- The design MUST center the main content on the screen.

#### Scenario: Verify styling application
When the page loads
Then the main content is centered horizontally and vertically
And the styles match the premium design specification.

### Requirement: Interactivity
- The application MUST display a greeting message (e.g., "Hello, World!").
- The application MUST include an interactive button.
- Clicking the button MUST dynamically change the greeting message via JavaScript.

#### Scenario: Verify greeting change
Given the user is on the main page
When they click the "Transform" button
Then the greeting text updates to a new message automatically.
