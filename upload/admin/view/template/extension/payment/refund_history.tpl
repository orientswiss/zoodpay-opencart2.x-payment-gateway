<?php if ($error): ?>
    <div class="alert alert-danger alert-dismissible"><?php echo $error; ?></div>
<?php endif; ?>
<?php if ($success): ?>
    <div class="alert alert-success alert-dismissible"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
        <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
<?php endif; ?>
<table class="table table-bordered">
    <thead>
    <tr>
        <td class="text-left"><?php echo $column_date_added; ?></td>
        <td class="text-left"><?php echo $column_comment; ?></td>
        <td class="text-left"><?php echo $column_name; ?></td>
        <td class="text-left"><?php echo $column_quantity; ?></td>
        <td class="text-left"><?php echo $column_status; ?></td>
    </tr>
    </thead>
    <tbody>
    <?php if ($histories): ?>
        <?php foreach ($histories as $history) { ?>
            <tr>
                <td class="text-left"><?php echo $history['date_added']; ?></td>
                <td class="text-left"><?php echo $history['comment']; ?></td>
                <td class="text-left"><?php echo $history['product']; ?></td>
                <td class="text-left"><?php echo $history['quantity']; ?></td>
                <td class="text-left"><?php echo $history['status']; ?></td>
            </tr>
        <?php } ?>
    <?php else: ?>
        <tr>
            <td class="text-center" colspan="5"><?php echo $text_no_results; ?></td>
        </tr>
    <?php endif; ?>
    </tbody>
</table>
<div class="row">
    <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
    <div class="col-sm-6 text-right"><?php echo $results; ?></div>
</div>

