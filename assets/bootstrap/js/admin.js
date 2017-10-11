/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function(){
 var current_url = window.location.href;
        var segments    = current_url.split( '/' );
        var controller  = segments[4];
        var fn          = segments[5];
        
//        var link        = controller+'/';
//        var id = '#'+link;
 //console.log($('#'+fn).parents());  
   // console.log(link).parents(':eq(1)'));
        $('#parentsub').click(function () {
            if ($('#parentsub').hasClass('active')) {
                $('#parentsub').removeClass('active');
                $('#parentsub').removeClass('toggled');
                $('#parentsub').addClass('active');
                $('#parentsub').removeClass('toggled');
                $('#'+fn).parents(':eq(0)').css('display','none');
            }
        })
        if (document.getElementById(fn)) {
            $('#'+fn).parents(':eq(1)').addClass('active');
            $('#'+fn).parents(':eq(1)').addClass('menu-open');
            $('#'+fn).parents(':eq(1)').children(':eq(0)').addClass('toggled');
            $('#'+fn).parents(':eq(0)').css('display','block');
            $('#'+fn).addClass('active');
        }
        }
        )