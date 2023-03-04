# README

# **LightHouse Scan Result**

Task description:
Attached is a lighthouse scan for one of our customer's pages. This JSON is from our lighthouse service, but for this
exercise you can load it from a file, fixture, or even inline it as a variable. We want to see ruby objects that can ingest this
data and displays the following information in the console (eg. irb):
* Total page score and status
* List of issues found (there can be multiple issues of the same type)
* Human-readable label (image-alt => ‘Alt text missing’)
* CSS selector for each issue

We’re intentionally leaving this vague as we’re interested in your design and how you structure your code and business
logic. Also, plain old Ruby is fine, but Rails is cool if you’d rather use that.
Ignore the lighthouse score provided in the JSON payload and create your own business logic to determine a page score.
Start with a score of 100 and deduct points for each issue found. Use the score mapping provided to also return the page
status (Excellent, Good, Fair, etc.). Here's how to map and score each issue:

_[-4 points]_
* image-alt: Alt text missing

_[-3 points]_
* color-contrast: Color Contrast issues
* heading-order: Heading Order

_[-2 points]_
* duplicate-id-active: Duplicate ID
* link-name: Link name issue
* label: Missing form label
* frame-title: Missing iframe title

_[-1 point]_
* Everything else: Requires Investigation

### **Page Score - Status**

1. 100: Excellent
2. 99-90: Good
3. 89-80: Fair
4. 79-70: Poor
5. 69-0: Failed





This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instruction
