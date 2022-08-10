// see types of prompts:
// https://github.com/enquirer/enquirer/tree/master/examples
//
module.exports = [
  {
    type: 'input',
    name: 'subgraph_name',
    message: "What's the name of your subgraph?",
  },
  {
    type: 'input',
    name: 'repo_name',
    message:
      "What's the name of your subgraph's repo? This is used by the chart to pull the image",
  },
  {
    type: 'input',
    name: 'default_tag',
    message: "What's the default tag for your image?",
    result: (input) => {
      if (!input) {
        return 'main';
      }
      return input;
    },
  },
];
