class Rodape < SitePrism::Page
        element :lblSobreCompraUnilever, :xpath, '//*[@id="article-page"]/main/div/div/aside[2]/div/div/h1'
        element :vidComoComprarOverlay, :xpath, '//*[@id="cboxOverlay"]'
        element :btnFecharVideo, :xpath, '//*[@id="cboxClose"]'
        def validaSobreCompra(sublink)
            lblSobreCompraUnilever.text.upcase.should include(sublink.upcase)
        end
        def validarVideo()
            btnFecharVideo.visible?.should be true
            vidComoComprarOverlay.visible?.should be true
        end
end