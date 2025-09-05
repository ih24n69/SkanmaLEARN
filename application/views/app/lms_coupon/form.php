<!-- Modal -->
<form id="form-master" data-action="<?php echo base_url('app/lms_coupon/process') ?>" method="POST">
    <div class="c-modal c-modal--medium modal fade" id="modal" tabindex="-1">
        <div class="c-modal__dialog modal-dialog" role="document">
            <div class="c-modal__content">
                <div class="c-modal__header">
                    <h3 class="c-modal__title cst-modal-title"></h3>
                    <span class="c-modal__close" data-dismiss="modal" aria-label="Close">
                        <i class="fa fa-close"></i>
                    </span>
                </div>
                <div class="c-modal__body row">

                    <div class="c-field u-mb-small col-6">
                        <label class="c-field__label">Kode : </label>
                        <input autocomplete="off" required class="c-input" name="code" type="text" placeholder="Kode">
                    </div>

                    <div class="c-field u-mb-small col-6">
                        <label class="c-field__label">Kadaluarsa : </label>
                        <input id="datetimepicker" autocomplete="off" required class="c-input" name="expired" type="text" placeholder="Kadaluarsa">
                    </div>

                    <div class="c-field u-mb-small col-6">
                        <label class="c-field__label">Tipe : </label>
                        <select id="coupon-type" required name="type" class="select2" data-placeholder='Pilih tipe'>
                            <option></option>
                            <option value="Price">Harga</option>                            
                            <option value="Percent">Persentase Diskon</option>
                        </select>
                    </div>

                    <div class="c-field u-mb-small col-6">
                        <label class="c-field__label">Produk : </label>
                        <select id="coupon-for" required name="for" class="select2" data-placeholder='Pilih produk'>
                            <option></option>
                            <option value="all-product">Semua Produk</option>
                        </select>
                    </div>


                    <div class="c-field u-mb-small col-12">
                        <label class="c-field__label">Data : </label>
                        <input autocomplete="off" required class="c-input" name="data" type="text" placeholder="Data" onkeyup="FormatCurrency(this)">
                    </div>

                </div>

                <div class="c-modal__footer">
                    <input type="hidden" name="id">
                    <button class="c-btn c-btn--info" name="submit" type="submit">
                        <i class="fa fa-send-o"></i>
                    </button>
                </div>

            </div><!-- // .c-modal__content -->

        </div><!-- // .c-modal__dialog -->
    </div><!-- // .c-modal -->
</form>
