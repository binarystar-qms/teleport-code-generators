import { Validator } from '@teleporthq/teleport-uidl-validator'
// import helloWorldUIDL from './hello-world-uidl.json'
import helloWorldUIDL from './test.uidl.json'
import { createBinaryStarProjectGenerator } from '../src'
import { createReactComponentGenerator } from '@teleporthq/teleport-component-generator-react'
const validator = new Validator()

describe('Hello World UIDL Validation', () => {
  it('should validate the Hello World UIDL without errors', () => {
    const result = validator.validateComponentSchema(helloWorldUIDL)
    expect(result.valid).toBe(true)
    expect(result.errorMsg).toBe('')
  })
})

describe('Convert UIDL to React Component', () => {
  it('should convert the UIDL to a React component and log it', async () => {
    const generator = createReactComponentGenerator()
    const { files } = await generator.generateComponent(helloWorldUIDL)

    const helloWorldComponent = files[0]
    console.log(files)
    if (helloWorldComponent) {
      console.log(helloWorldComponent.content)
    } else {
      console.error('Component not found')
    }

    expect(helloWorldComponent).toBeDefined()
  })
})

