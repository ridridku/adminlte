<?php
  foreach ($dataEcom as $ecom) {
   
    ?>
    <tr>
      <td style="min-width:230px;"><?php echo $ecom->ORDER_SN; ?></td>
      <td><?php echo $ecom->ITEM_NAME; ?></td>
      <td><?php echo $ecom->QTY; ?></td>
      <td><?php echo $ecom->ORDER_VALUE; ?></td>
      <td><?php echo $ecom->ORDER_SN; ?></td>
      <td class="text-center" style="min-width:230px;">
        <button class="btn btn-warning update-dataPegawai" data-id="<?php echo $ecom->ORDER_SN; ?>"><i class="glyphicon glyphicon-repeat"></i> Update</button>
        <button class="btn btn-danger konfirmasiHapus-pegawai" data-id="<?php echo $ecom->ORDER_SN; ?>" data-toggle="modal" data-target="#konfirmasiHapus"><i class="glyphicon glyphicon-remove-sign"></i> Delete</button>
      </td>
    </tr>
    <?php
  }
?>