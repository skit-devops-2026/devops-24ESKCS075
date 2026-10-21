
from pathlib import Path
import unittest

ROOT = Path(__file__).resolve().parents[1]


class BillbookTests(unittest.TestCase):

    def test_main_page_exists(self):
        self.assertTrue((ROOT / "index.html").is_file())

    def test_expense_page_exists(self):
        self.assertTrue((ROOT / "add-expense.html").is_file())

    def test_budget_page_exists(self):
        self.assertTrue((ROOT / "budget.html").is_file())

    def test_javascript_exists(self):
        self.assertTrue((ROOT / "js" / "app.js").is_file())

    def test_stylesheets_exist(self):
        self.assertTrue((ROOT / "css" / "style.css").is_file())
        self.assertTrue((ROOT / "css" / "shared.css").is_file())

    def test_main_page_has_content(self):
        content = (ROOT / "index.html").read_text(encoding="utf-8")
        self.assertGreater(len(content.strip()), 0)


if __name__ == "__main__":
    unittest.main()
