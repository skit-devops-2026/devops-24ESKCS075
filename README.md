# BILLBOOK

> Replace every angle-bracket placeholder below. The hygiene check in CI will
> fail until you do.

## Author

| Roll No. | Name | GitHub username |
|---|---|---|
| 24ESKCS075 | Ayush Mehta | ayushmehta29 |

## About

BILLBOOK is a web-based personal expense tracking application designed specifically for students and young adults.
Managing small daily expenses can become difficult when spending happens across different categories such as food, transportation, shopping, entertainment, subscriptions, and college-related expenses. Many existing financial applications provide features that are more suitable for detailed personal finance management rather than quick everyday tracking.

## Tech stack

- Frontend: HTML, CSS, JS
- Backend: Not yet
- Database: Not yet

## Running locally

```bash
make install
make run
```

## Live URL

[https://devops-24eskcs075.onrender.com/](https://devops-24eskcs075.onrender.com/)
## Features

- Track daily expenses.
- Organize spending by category.
- Manage budgets.
- View expense information through a simple web interface.

## Project Structure

- `index.html` — Main application page
- `add-expense.html` — Add expenses
- `budget.html` — Budget management
- `css/` — Stylesheets
- `js/` — JavaScript files

<Add once M5 is done. Until then, leave as is.>

## Health endpoint

`GET /health` returns the running commit SHA. See `Makefile` and the milestone
sheet for why this is required.


## Future Improvements

- Add automated tests for project functionality.
- Containerize the application using Docker.
- Set up continuous integration with GitHub Actions.
- Deploy the application and monitor its availability.
