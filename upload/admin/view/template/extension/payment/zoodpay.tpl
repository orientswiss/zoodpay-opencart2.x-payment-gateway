
<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form_payment" data-toggle="tooltip" title="<?php echo $button_save; ?>"
                        class="btn btn-primary"><i class="fa fa-save"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i
                            class="fa fa-reply"></i></a>
            </div>
            <h1><?php echo $heading_title; ?></h1>
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container-fluid">
        <?php if ($error_warning): ?>
            <div class="alert alert-danger alert-dismissible"><i
                        class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
                <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
        <?php endif; ?>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
            </div>
            <div class="panel-body">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form_payment"
                      class="form-horizontal">
                    <ul class="nav nav-tabs">
                        <li class="nav-tab active"><a href="#tab_general" data-toggle="tab"><?php echo $text_general; ?></a></li>
                        <li class="nav-tab "><a href="#tab_additional" data-toggle="tab"><?php echo $text_additional_tab; ?></a></li>

                        <li class="nav-tab "><a href="#tab_order_status" data-toggle="tab"><?php echo $text_order_status_tab; ?></a></li>
                    </ul>

                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_general">
                            <div class="form-group">
                                <label class="col-sm-2 control-label"
                                       for="input_environment"><?php echo $entry_environment; ?></label>
                                <div class="col-sm-10">
                                    <input name="payment_zoodpay_environment" id="input_environment"
                                           placeholder="<?php echo $entry_environment; ?>" value="<?php echo $environment; ?>"
                                           class="form-control"/>
                                </div>

                            </div>


                            <div class="form-group">
                                <label class="col-sm-2 control-label"
                                       for="button_healthcheck"><?php echo $healthcheck; ?></label>
                                <div class="col-sm-2 control-label" style = "text-align: left">
                                    <input  type="button" id="button_healthcheck" value="<?php echo $healthcheck; ?>"
                                            class="button "/>
                                </div>
                                <div class="col-sm-8">
                                    <input  type="text" disabled id="help_healthcheck" placeholder="please check server before getting configuration"
                                            class="form-control"/>
                                </div>

                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input_merchant_key"><span
                                            data-toggle="tooltip"
                                            title="<?php echo $help_merchant_key; ?>"><?php echo $entry_merchant_key; ?></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="payment_zoodpay_merchant_key" value="<?php echo $merchant_key; ?>"
                                           placeholder="<?php echo $entry_merchant_key; ?>" id="input_merchant_key"
                                           class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input_merchant_secret"><span
                                            data-toggle="tooltip"
                                            title="<?php echo $help_merchant_secret; ?>"><?php echo $entry_merchant_secret; ?></span></label>
                                <div class="col-sm-10">
                                    <input type="password" name="payment_zoodpay_merchant_secret"
                                           value="<?php echo $merchant_secret; ?>" placeholder="<?php echo $entry_merchant_secret; ?>"
                                           id="input_merchant_secret" class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input_salt_key"><span><?php echo $entry_merchant_salt_key; ?></span></label>
                                <div class="col-sm-10">
                                    <input type="password" name="payment_zoodpay_salt_key" value="<?php echo $salt_key; ?>"
                                           placeholder="<?php echo $entry_merchant_salt_key; ?>" id="input_salt_key"
                                           class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input_merchant_tc"><span
                                            data-toggle="tooltip"
                                            title="<?php echo $help_merchant_tc; ?>"><?php echo $entry_merchant_tc; ?></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="payment_zoodpay_merchant_tc" value="<?php echo $merchant_tc; ?>"
                                           placeholder="<?php echo $entry_merchant_tc; ?>" id="input_merchant_tc"
                                           class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input_status"><?php echo $entry_status; ?></label>
                                <div class="col-sm-10">
                                    <select name="zoodpay_status" id="input_status" class="form-control">
                                        <?php if ($status): ?>
                                            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                            <option value="0"><?php echo $text_disabled; ?></option>
                                        <?php else: ?>
                                            <option value="1"><?php echo $text_enabled; ?></option>
                                            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                        <?php endif; ?>
                                    </select>
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="col-sm-2 control-label text-right"
                                       for="input_status"><?php echo $text_get_configuration; ?></label>
                                <div class="col-sm-10">
                                    <div id="zoodpay_form">
                                        <input type="button" id="button-configure" class="button" value="<?php echo $text_get_configuration; ?>">
                                    </div>
                                </div>
                            </div>

                            <input type = "hidden" name="payment_zoodpay_should_match_limit" value="1"/>


                        </div>
                        <div class="tab-pane" id="tab_additional">


                            <div class="form-group">
                                <label class="col-sm-2 control-label"
                                       for="label_success"><?php echo $entry_success; ?></label>
                                <div class="col-sm-10">
                                    <span  id="label_success" class="form-control">
                                        <?php echo $success_url; ?>
                                    </span>
                                </div>

                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label"
                                       for="label_error"><?php echo $entry_error; ?></label>
                                <div class="col-sm-10">
                                    <span  id="label_error" class="form-control">
                                        <?php echo $error_url; ?>
                                    </span>
                                </div>

                            </div>

                        </div>


                        <div class="tab-pane" id="tab_order_status">

                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo $entry_complete_status; ?></label>
                                <div class="col-sm-10">
                                    <select name="payment_zoodpay_complete_status_id" class="form-control">
                                        <?php foreach ($order_statuses as $order_status) { ?>
                                        <?php if ($order_status['order_status_id'] == $payment_zoodpay_complete_status_id) { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                                        <?php } else { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                                        <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo $entry_processing_status; ?></label>
                                <div class="col-sm-10">
                                    <select name="payment_zoodpay_processing_status_id" class="form-control">
                                        <?php foreach ($order_statuses as $order_status) { ?>
                                        <?php if ($order_status['order_status_id'] == $payment_zoodpay_processing_status_id) { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                                        <?php } else { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                                        <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo $entry_failed_status; ?></label>
                                <div class="col-sm-10">
                                    <select name="payment_zoodpay_failed_status_id" class="form-control">
                                        <?php foreach ($order_statuses as $order_status) { ?>
                                        <?php if ($order_status['order_status_id'] == $payment_zoodpay_failed_status_id) { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                                        <?php } else { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                                        <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo $entry_cancelled_status; ?></label>
                                <div class="col-sm-10">
                                    <select name="payment_zoodpay_cancelled_status_id" class="form-control">
                                        <?php foreach ($order_statuses as $order_status) { ?>
                                        <?php if ($order_status['order_status_id'] == $payment_zoodpay_cancelled_status_id) { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                                        <?php } else { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                                        <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo $entry_pending_status; ?></label>
                                <div class="col-sm-10">
                                    <select name="payment_zoodpay_pending_status_id" class="form-control">
                                        <?php foreach ($order_statuses as $order_status) { ?>
                                        <?php if ($order_status['order_status_id'] == $payment_zoodpay_pending_status_id) { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                                        <?php } else { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                                        <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo $entry_refund_initiated_status; ?></label>
                                <div class="col-sm-10">
                                    <select name="payment_zoodpay_refund_initiated_status_id" class="form-control">
                                        <?php foreach ($order_statuses as $order_status) { ?>
                                        <?php if ($order_status['order_status_id'] == $payment_zoodpay_refund_initiated_status_id) { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                                        <?php } else { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                                        <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo $entry_refund_approved_status; ?></label>
                                <div class="col-sm-10">
                                    <select name="payment_zoodpay_refund_approved_status_id" class="form-control">
                                        <?php foreach ($order_statuses as $order_status) { ?>
                                        <?php if ($order_status['order_status_id'] == $payment_zoodpay_refund_approved_status_id) { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                                        <?php } else { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                                        <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>



                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo $entry_refund_declined_status; ?></label>
                                <div class="col-sm-10">
                                    <select name="payment_zoodpay_refund_declined_status_id" class="form-control">
                                        <?php foreach ($order_statuses as $order_status) { ?>
                                        <?php if ($order_status['order_status_id'] == $payment_zoodpay_refund_declined_status_id) { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                                        <?php } else { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                                        <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>


                        </div>


                    </div>
                </form>


            </div>
        </div>

    </div>
</div>
<script type="text/javascript">
    $('#button-configure').on('click', function () {
        $.ajax({
            url: 'index.php?route=extension/payment/zoodpay/buildConfiguration&token=<?php echo $token; ?>',
            data: {
                'merchant_secret': $('#input_merchant_secret').val(),
                'merchant_key': $('#input_merchant_key').val(),
                'environment': $('#input_environment').val(),
                'salt_key': $('#input_salt_key').val()
            },
            type: 'post',
            dataType: 'json',
            beforeSend: function () {
                $('#button-configure').button('loading');
            },
            success: function (json) {
                $('.alert-dismissible').remove();
                $('#button-configure').button('reset');
                if (json['success']) {
                    $('#zoodpay_form').prepend('<div id="message_error" class="alert alert-success alert-dismissible"><i class="fa fa-info-circle"></i> ' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }
                if (json['error']) {
                    for (const [key, value] of Object.entries(json['error'])) {
                        if (key === 'details') {
                            for (const [key1, value1] of Object.entries(value)){
                                $('#zoodpay_form').prepend('<div id="message_error3" class="alert alert-dismissible alert-warning"><i class="fa fa-info-circle"></i> ' + value1.field +' : '+value1.error + '</div>');
                            }
                        } else if (key === 'message') {
                            $('#zoodpay_form').prepend('<div id="message_error3" class="alert alert-dismissible alert-warning"><i class="fa fa-info-circle"></i> ' + value + '</div>');
                        }
                    }
                }
                if (json['error1']) {
                    for (const [key, value] of Object.entries(json['error1'])) {
                        $('#zoodpay_form').prepend('<div id="message_error3" class="alert alert-dismissible alert-warning"><i class="fa fa-info-circle"></i> ' + value+ '</div>');
                    }
                }

            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });
    $('.button-zoodpay').on('click', function (e) {
        e.preventDefault();
        $.ajax({
            url: 'index.php?route=extension/payment/zoodpay/modal&token=<?php echo $token; ?>',
            data: 'amount=' + $(this).parents("tr").children('.orderTotal') + '&method=' + $(this).data("method") + '&order_id=' + $(this).parents("tr").children('.orderID').text(),
            type: 'post',
            dataType: 'html',
            success: function (html) {
                $('#modal-developer').remove();

                $('.alert-dismissible').remove();

                $('body').prepend('<div id="modal-developer" class="modal">' + html + '</div>');

                $('#modal-developer').modal('show');
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    var entry_healthcheck = '<?php echo $entry_healthcheck; ?>';
    var text_configuration = '<?php echo $text_get_configuration; ?>';
    var server_succes = '<?php echo $healthcheck_success; ?>';
    $('#input_environment').on ('keyup', function (e) {
        $('#help_healthcheck').removeClass('alert-error');
        $('#help_healthcheck').removeClass('alert-success');
        $('#help_healthcheck').val(entry_healthcheck);
    });
    $('#button_healthcheck').on ('click', function (e) {
        $.ajax({
            url: 'index.php?route=extension/payment/zoodpay/healthcheck&token=<?php echo $token; ?>',
            data: 'url='+$('#input_environment').val(),
            type: 'post',
            dataType: 'json',
            success: function (json) {
                console.log(json);
                if (json['response']) {
                    $('#help_healthcheck').val(json['response']);
                    $('#help_healthcheck').removeClass('alert-success');
                    $('#help_healthcheck').addClass('alert-error');
                } else {
                    $('#help_healthcheck').val(server_succes);
                    $('#help_healthcheck').removeClass('alert-error');
                    $('#help_healthcheck').addClass('alert-success');
                }

            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

</script>
<?php echo $footer; ?>

