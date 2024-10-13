const { environment } = require('@rails/webpacker')
const babelLoader = environment.loaders.get('babel')

babelLoader.use[0].options = {
  presets: ['@babel/preset-env'],
  plugins: ['@babel/plugin-proposal-class-properties'], // プラグインを追加
}

module.exports = environment