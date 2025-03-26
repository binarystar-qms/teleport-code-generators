module.exports = {
  preset: 'ts-jest',
  testEnvironment: 'node',
  moduleNameMapper: {
    '^@teleporthq/(.*)$': '<rootDir>/../$1',
  },
  transform: {
    '^.+\\.tsx?$': 'ts-jest',
  },
} 