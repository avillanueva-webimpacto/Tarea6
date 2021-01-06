{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{if $product.show_price}
    {block name='product_price'}
      <div class="product__product-price product-price {if $product.has_discount}has-discount{/if}">
          <span class="current-price-display price{if $product.has_discount} current-price-discount{/if}" style="color: #ff6000; font-size: 44px; line-height: 20px;"></span>
          
          {block name='product_discount'}
          {if $product.has_discount}
              <span class="product-discount">
                  {hook h='displayProductPriceBlock' product=$product type="old_price"}
                  <span class="regular-price" style="color: #bbb; font-size: 19px; line-height: 20px;"></span>
              </span>
               <div class="d-flex flex-row flex-wrap bd-highlight mb-3">
                        <div class="bd-highlight">
                            <p class="font-weight-bold" style="font-size: 45px; color: #ff6000;">{$product.price}
                            </p>
                        </div>
                        <div class="px-3 bd-highlight">
                            <p class="font-weight-bold mt-3" style="font-size: 10px;">PVP</p>
                            <p class="mt-n4" style="font-size: 25px;"><strike>{$product.regular_price}</strike></p>
                        </div>
                        <div class="px-3 bd-highlight">
                            <p class="font-weight-bold p-1" style="font-size: 10px; margin-top: 10px;">DTO.</p>
                            <p class="mt-n3 descuento" style="font-size: 15px;">{if $product.has_discount}
            {if $product.discount_type === 'percentage'}
              <span class="discount discount-percentage" style="background-color: #ee413d; border-radius: 4px;">{l s='%percentage%' d='Shop.Theme.Catalog' sprintf=['%percentage%' => $product.discount_percentage_absolute]}</span>
            {else}
              <span class="discount discount-amount">
                  {l s='%amount%' d='Shop.Theme.Catalog' sprintf=['%amount%' => $product.discount_to_display]}
              </span>
            {/if}
          {/if}
        </div>
       {/if}
      {/block}
      <p class="mt-3" style="font-size: 30px; color: #bababa; position: relative;">¾</p>
    </div>
    {/block}
    
       
         {*  *}

        {* {block name='product_unit_price'}
          {if $displayUnitPrice}
              <p class="product-unit-price sub">{l s='(%unit_price%)' d='Shop.Theme.Catalog' sprintf=['%unit_price%' => $product.unit_price_full]}</p>
          {/if}
        {/block} *}
          <div class="row mt-n10">
            <div class="col-xs-6 p-2">
              <div class="rating-holder">
                <img src = "https://i.imgur.com/7AL3S4A.png" class=""/>
                </div>
              </div>
              <div class="col-xs-6 p-2 mt-1" style="font-size: small;">
                <a href="#" class="enlace-secundario">73 Opiniones | Review</a>
              </div>
            </div>
          </div>
           <div class="col-xs-12 ml-n3 mt-n2 text-md-left">
              Vendido y enviado por
              <b> webImpacto</b>
            <a href="#" style="color: #e1600a">¿Qué es esto?</a>
           </div>
           <br>

    {hook h='displayProductPriceBlock' product=$product type="weight" hook_origin='product_sheet'}

{/if}

