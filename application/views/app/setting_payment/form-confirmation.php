<!-- Modal -->
<form action="<?php echo base_url('app/setting_payment/process/form-confirmation') ?>" method="POST">
    <div class="c-modal c-modal--medium modal fade" id="form-confirmation" tabindex="-1">
        <div class="c-modal__dialog modal-dialog" role="document">
            <div class="c-modal__content">
                <div class="c-modal__header">
                    <h3 class="c-modal__title">
                        Konfirmasi
                    </h3>
                    <span class="c-modal__close" data-dismiss="modal" aria-label="Close">
                        <i class="fa fa-close"></i>
                    </span>
                </div>
                <div class="c-modal__body row">

                    <div class="c-field u-mb-small col-6">
                        <label class="c-field__label">Tipe : </label>
                        <select required="" name="type" class="c-select select2 input-confirmation-type" data-placeholder='Pilih'>
                            <option value=""></option>
                            <option value="whatsapp">Whatsapp</option>
                            <option value="facebook">Facebook</option>
                        </select>
                    </div>                    

                    <div class="c-field u-mb-small col-12">
                        <label class="c-field__label">Data : </label>
                        <input autocomplete="off" required class="c-input input-confirmation-data" name="data" type="text" placeholder="Data">
                    </div>

                </div>

                <div class="c-modal__footer">
                    <input class="input-confirmation-identity" type="hidden" name="identity">
                    <button class="c-btn c-btn--info c-btn--custom" name="submit" type="submit">
                        <i class="fa fa-save"></i>
                    </button>
                </div>

            </div><!-- // .c-modal__content -->

        </div><!-- // .c-modal__dialog -->
    </div><!-- // .c-modal -->
</form>
