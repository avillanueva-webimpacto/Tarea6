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

<div class="block_newsletter col-md-12">
  <div class="row">
  <div class="col-md-6 px-2 mt-4">
    <img src = "https://i.imgur.com/wcVZ2Y4.jpg" class="rounded mx-auto img-fluid">
  </div>
    <div class="col-lg-6">
    <p id="block-newsletter-label" class="col-lg-6">
    <h1 class="font-weight-bold mt-4" style="color: black;">Boletin de Ofertas</h1>
    </p>
    <p class="mt-n2">Suscríbete para disfrutar de las mejores ofertas.</p>
      <form action="{$urls.pages.index}#footer" method="post" class="needs-validation">
        <input type="hidden" name="action" value="0">
        <div class="input-group">
          <input
                  name="email"
                  class="form-control{if isset($nw_error) and $nw_error} is-invalid{/if}"
                  type="email"
                  value="{$value}"
                  aria-labelledby="block-newsletter-label"
                  autocomplete="email"
          >
          <div class="input-group-append px-2">
            <button class="btn btn-primary" type="submit" name="submitNewsletter"><span class="d-none d-sm-inline">{l s='Enviar' d='Shop.Theme.Actions'}</span><span class="d-inline d-sm-none">{l s='OK' d='Shop.Theme.Actions'}</span></button>
          </div>
        </div>

        <div class="clearfix">
        <div class="d-inline-flex">
        <div class="custom-control custom-checkbox mt-2">
        <input type="checkbox" class="custom-control-input" id="defaultUnchecked">
        <label class="custom-control-label" for="defaultUnchecked"></label>
        </div>
            {if $msg}
              <p class="alert mt-2 {if $nw_error}alert-danger{else}alert-success{/if}">
                  {$msg}
              </p>
            {/if}
            {if $conditions}
              <p class="small mt-2">He leído y acepto las <a href="#" style="color: #ff6000">condiciones generales</a> y la <a href="#" style="color :#ff6000">política de privacidad</a> de webImpacto.</p>
            {/if}
            {if isset($id_module)}
                {hook h='displayGDPRConsent' id_module=$id_module}
            {/if}
            </div>
        </div>
      </form>
    </div>
  </div>
</div>
