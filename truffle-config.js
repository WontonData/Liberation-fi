module.exports = {
  compilers: {
    solc: {
      version: '0.8.0',
      docker: false,
      parser:'solcjs',
      settings: {
        optimizer: {
          enabled: true,
          runs: 200
        },
      }
    }
  }
}