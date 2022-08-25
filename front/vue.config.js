const CompressionWebpackPlugin = require('compression-webpack-plugin')

let proxyObj = {}

proxyObj["/api"] = {
    ws: false,
    secure: false,
    changeOrigin: true,
    target: "http://127.0.0.1:8087",
    pathRewrite: {
        "^/api": ""
    }
}

module.exports = {
    publicPath: process.env.NODE_ENV === 'production' ? '' : '/',
    outputDir: "ishell",
    assetsDir: "static",
    productionSourceMap: false,
    lintOnSave: false,
    devServer: {
        host: "localhost",
        port: 80,
        proxy: proxyObj
    },
    configureWebpack: config => {
        if (process.env.NODE_ENV !== 'development') {
            const productionGzipExtensions = ['html', 'js', 'css']
            config.plugins.push(
                new CompressionWebpackPlugin({
                    filename: '[path].gz[query]',
                    algorithm: 'gzip',
                    test: /\.(js|css|json|txt|html|ico|svg)(\?.*)?$/i,
                    threshold: 2048, // 只有大小大于该值的资源会被处理
                    minRatio: 0.7, // 只有压缩率小于这个值的资源才会被处理
                    deleteOriginalAssets: false, // 删除原文件
                }),
            );
        }
    }
}