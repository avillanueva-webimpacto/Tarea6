{** * 2007-2017 PrestaShop * * NOTICE OF LICENSE *

 * This source file is subject to the Academic Free License 3.0 (AFL-3.0) * that is bundled with this package in the file LICENSE.txt. * It is also available through the world-wide-web at this URL: * https://opensource.org/licenses/AFL-3.0

* If you did not receive a copy of the license and are unable to * obtain it through the world-wide-web, please send an email * to license@prestashop.com so we can send you a copy immediately. * * DISCLAIMER * * Do not edit or add to this file if you wish to upgrade PrestaShop to newer * versions in the future. 

If you wish to customize PrestaShop for your * needs please refer to http://www.prestashop.com for more information. * * @author PrestaShop SA
<contact@prestashop.com>

* @copyright 2007-2017 PrestaShop SA * @license https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0) * International Registered Trademark & Property of PrestaShop SA *} 

{extends file=$layout} 
{block name='head_seo' prepend}
    <link rel="canonical" href="{$product.canonical_url}"> {/block} {block name='content' }
    <div class="row  nowrap">
        <div class="col-lg-6">
            {block name='page_content_container'}
            <section class="page-content--product" id="content">
                {block name='page_content'} {block name='product_flags'} {include file='catalog/_partials/product-flags.tpl'} {/block} {block name='product_cover_thumbnails'} {include file='catalog/_partials/product-cover-thumbnails.tpl'} {/block} {/block}
            </section>
            {/block}
        </div>
        <div class="col-lg-6">
            {block name='page_header_container'} {block name='page_header'}
            <h1 class="" style="color: #444;">
                {block name='page_title'} {$product.name}{/block}
            </h1>
            {/block} {/block}
             {*bloque precios CAMBIAR EN PLANTILLA PRODUCT-PRICES.tpl*} 

             {block name='product_prices'} {include file='catalog/_partials/product-prices.tpl'} {/block} {block name='manufacturer'}
            <div class="product-information">
                <div class="row">
                    <div class="p-1 col-xs-12 col-sm-3">
                        <b class="ml-2" style="font-weight: 600; color: black;">Marca:</b>
                    </div>
                    <div class="p-1 col-xs-12 col-sm-9">
                        <span content="939-001531">  {$product.reference}</span>
                    </div>
                </div>
              {/block} 
            {block name='shipping'}
                    <div id="shipping{$product.id}">
                        <div class="row">
                            <div class="p-1 col-xs-12 col-sm-3">
                                <b class="ml-2" style="font-weight: 600; color: black;">Envío:</b>
                            </div>
                            <div class="p-1 col-xs-12 col-sm-9">
                                  Desde {$product.additional_shipping_cost}<strong> GRATIS</strong> con webImpacto Premium
                            </div>
                        </div>
                    </div>
                    {/block} {block name='product_buy'}
                    <div class="product-actions">
                        <div class="row">
                            <div class="p-1 col-xs-12 col-sm-3">
                                <b style="font-weight: 600; color: black;" class="ml-2">{l s='Cantidad'
                                                d='Shop.Theme.Catalog'}</b>
                            </div>
                            <div class="p-1 col-xs-12 col-sm-9">
                                <div class="d-inline-flex flex-column bd-highlight mb-3">
                                    <div class="bd-highlight ml-2">
                                        {block name='product_add_to_cart'} {include file='catalog/_partials/product-add-to-cart.tpl'} {/block}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                {block name='prom'}
                <div class="row">
                    <div class="col-xs-12 col-sm-3">
                        <b style="font-weight: 600; color: black;">Promoción:</b>
                    </div>
                    <div class="col-xs-12 col-sm-9">
                        <h6 class="tabPromo p-1 font-weight-bold" role="tab">
                            <a href="#" style="color: #ff6000; font-size: 14px;">
                                                Ofertas especiales de la semana
                                            </a>
                        </h6>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-3">
                        <b style="font-weight: 600; color: black;">Disponibilidad:</b>
                    </div>
                    <div class="col-xs-12 col-sm-9">
                        <div class="accordion">
                            <div class="contentBx">
                                <div class="label-wrapper font-weight-bold p-1" style="font-size: 14px;">¡En stock {$product.quantity} artículos! ¡Recíbelo mañana!</div>
                                <div class="content">
                                    <p style="font-size: 14px;">Plazo de entrega estimado para envíos a península
                                    </p>
                                </div>
                            </div>
                            <div class="contentBx">
                                <div class="label-wrapper2 shadow-sm mb-2 bg-white rounded p-1" style="font-size: 14px;">¿Recoges en tienda? Comprueba disponibilidad
                                </div>
                                <div class="content2">
                                    <p style="font-size: 14px;">* Te recomendamos que realices la compra antes de acudir a la tienda para asegurar la disponibilidad del producto.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-3">
                        <b style="font-weight: 600; color: black;">Financiación:</b>
                    </div>
                    <div class="col-xs-12 col-sm-9">
                        <div class="ficha-product mt-1" style="font-size: 14px;">
                            <img src="https://i.imgur.com/dW0YMo3.png">
                            <b>Aplazame</b>   De 2 a 30 Meses (inmediata)<span class="ml-sm-5" style="color:#f60; position: relative">+Info</span>
                        </div>
                    </div>
                </div>
                <div class="d-flex flex-row mt-2">
                    <div class="col-md-2 p-1 d-none d-sm-block">
                        <div class="button-general button-dolar">
                            <p class="texto-boton">$</p>
                        </div>
                    </div>
                    <div class="col-md-5 p-1 d-none d-sm-block">
                        <div class="button-general button-shop">
                            <p class="texto-boton-shop">}      Añadir al carrito</p>
                        </div>
                    </div>
                    <div class="col-md-5 p-1 d-none d-sm-block">
                        <div class="button-buy">
                            <p class="texto-boton-buy">Comprar</p>
                        </div>
                    </div>
                </div>
                
                <div class = "mobile-section d-block d-sm-none">
                <div class="d-flex flex-row">
                <div class="p-2">
                <div class = "button-movil button-dolar-movil">
                  <p class= "texto-boton-movil">$</p>
                    </div>
                  </div>
                <div class="p-2">
                <div class="button-ws">
                      <p class="texto-boton-ws">j</p>
                    </div>
                  </div>
                <div class="col-sm-2 p-2"> 
                <div class="button-buy-movil">
                      <p class="texto-boton-buy-ws">Comprar</p>
                  </div>
                  </div>
                </div> 
                </div>
            </div>
        </div>
    </div>
    {/block} {/block} {block name='product_accessories'} {if $accessories}
    <section class="product-accessories mt-3">
        <p class="products-section-title">{l s='You might also like' d='Shop.Theme.Catalog'}</p>
        <div class="products">
            {foreach from=$accessories item="product_accessory"} {block name='product_miniature'} {include file='catalog/_partials/miniatures/product.tpl' product=$product_accessory} {/block} {/foreach}
        </div>
    </section>
    {/if} {/block} {block name='product_footer'} {hook h='displayFooterProduct' product=$product category=$category} {/block} {block name='product_images_modal'} {include file='catalog/_partials/product-images-modal.tpl'} {/block} {block name='page_footer_container'}
    <footer class="page-footer">{block name='page_footer'}{/block}</footer>
    {/block} {/block}