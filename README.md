# Interactive Responsibility Matrix

The org chart remains unchanged in `index.html`.

The new matrix lives in `matrix.html` and is designed for leadership review:

- People are columns.
- Tasks are rows.
- Any `X`, `Yes`, `TRUE`, or `1` marks responsibility.
- Clicking a person highlights only the rows they own while keeping the full matrix visible.
- The page refreshes from Google Sheets automatically every 30 seconds.

## Google Sheet Format

Create a sheet with headers like this:

| Task | Category | Type | Notes | Alice | Ben | Cara |
| --- | --- | --- | --- | --- | --- | --- |
| Staff scheduling | Operations | Core | Weekly coverage | X | X | |
| Supervise Ben | Leadership | Supervision | 1:1 and coaching | X | | |
| Cabin inspections | Compliance | Core | Tuesday and Friday | | X | X |

Rules:

- `Task` is required.
- `Category`, `Type`, and `Notes` are optional metadata columns.
- Every column after those is treated as a person's name.
- Supervision rows can just be regular tasks, or you can mark them with `Type = Supervision`.

## Connect Google Sheets

1. Open your Google Sheet.
2. Share it so it can be read publicly or by anyone with the link as a viewer.
3. Copy the CSV export URL.

The easiest format is:

```text
https://docs.google.com/spreadsheets/d/YOUR_SHEET_ID/gviz/tq?tqx=out:csv&sheet=Sheet1
```

Then open `matrix.html` and replace:

```js
csvUrl: "PASTE_GOOGLE_SHEET_CSV_URL_HERE"
```

with your real sheet URL.
