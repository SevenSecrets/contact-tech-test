# Contact Tech Test

## Usage

In order to use the Talent Finder search you just need to call `TalentFinder.search(json_data, location)` where the json_data is json-formatted data in the same format as the example below, and location is a (case insensitive) string. The method will return an array of names which match the location.

## Summary

Contact holds a lot of data on the talent we work with – think their locations, ages, hair colour, eye colour, etc. We often need to filter a big list of talent based on certain criteria – for example, the location they're based in.

We'd like you to build a program that accepts two inputs:

- A JSON array of talent, containing objects with `name`, `location` and `date_of_birth` attributes
- A location to filter by

The program should then filter the array of supplied talent, and output the names of talent whose location matches the location supplied. The supplied location should be consider case-insensitive, and the order in which names are outputted is not important.

### Example

For example, given:

- The following JSON data:

```jsx
[
  {
    "name": "Homer Simpson",
    "location": "Springfield",
    "date_of_birth": "1956-05-12"
  },
  {
    "name": "Frank Reynolds",
    "location": "Philidelphia",
    "date_of_birth": "1944-11-17"
  },
  {
    "name": "Diane Nguyen",
    "location": "Los Angeles",
    "date_of_birth": "1980-03-19"
  },
  {
    "name": "Krusty the Clown",
    "location": "SpringField",
		"date_of_birth": "1957-10-29"
  }
]
```

- A location of `Springfield`

Your program should output:

```jsx
Homer Simpson
Krusty the Clown
```

## Personal Notes

- One search method, which takes data and location params (based on spec, better than taking both as params for each new instance and better than taking json data as init param then taking location param for search method)
- Searching through things involves Big O stuff usually, but bc this is Ruby that isn't as big a concern since it has all the inbuilt methods
- Make sure you include error handling
- Allow for extension of functionality (presumably search by name or dob might be implemented later, or different output)