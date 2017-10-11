<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">

    <!-- Sidebar user panel (optional) -->
    <div class="user-panel">
      <div class="pull-left image">
        <img src="<?php echo base_url(); ?>assets/img/<?php echo $userdata->foto; ?>" class="img-circle" alt="User Image">
      </div>
      <div class="pull-left info">
        <p><?php echo $userdata->username; ?></p>
        <!-- Status -->
        <a href="<?php echo base_url(); ?>assets/#"><i class="fa fa-circle text-success"></i> Online</a>
      </div>
    </div>

    <!-- Sidebar Menu -->
   <ul class="sidebar-menu">
   <li class="header bg-blue-active">MAIN NAVIGATION</li>       
   <?php         
//$main = $this->db->get_where('tb_menu', array('kat_menu' => 0));
//$main=$this->db->query("SELECT * FROM tbl_sys_master_menu WHERE menu_parent='0'");

$main=$this->db->query("SELECT	a.*
FROM 	tbl_sys_master_menu AS a
INNER JOIN tbl_sys_master_privileges AS b ON a.menu_id = b.priv_menu_id
INNER JOIN tbl_sys_master_user AS c ON b.priv_user_id = c.user_id
WHERE 	a.menu_level = '0'
AND c.user_id = '$userdata->username'
AND a.menu_active = '1'
AND b.priv_view = '1'
ORDER BY a.menu_id ASC");


                foreach ($main->result() as $m) {
                    
                
                    // chek ada submenu atau tidak
                    $sub = $this->db->get_where('tbl_sys_master_menu', array('menu_parent' => $m->menu_id));
                    if ($sub->num_rows() > 0) {
                     
                        // buat menu + sub menu
                        echo '<li id="parentsub">' . anchor($m->menu_link, '<i class="' . $m->menu_normal_icon. '"></i>
                                                         <span class="treeview">' .$m->menu_label. '</span>
                                                         <b class="fa fa-angle-left pull-right"></b>', array('class' => 'dropdown-toggle'));
                        echo "<ul class='treeview-menu'>";
                        foreach ($sub->result() as $s) {
                            echo '<li id="'.$s->menu_link.'">' . anchor($s->menu_link, '<i class="'.$s->menu_normal_icon .'"></i>' . $s->menu_label) . '</li>';
                        }
                        echo "</ul>";
                        echo '</li>';
                   } else {
                        // single menu
                        echo '<li>' . anchor($m->menu_link, '<i class="' . $m->menu_normal_icon . ' fa-lg">
                                                         </i>  <span class="treeview">' . $m->menu_label . '</span>') . '</li>';
                    }                   
                } 
            ?>
        </ul><!--/.nav-list--> 
    <!-- /.sidebar-menu -->
  </section>
  <!-- /.sidebar -->
</aside>