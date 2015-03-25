$(function(){
   $(".btn").button({
      icons: {
         primary: "ui-icon-plus"
      }
   });


   $(".j-image-add").click(function(e){
      e.preventDefault();

      var option_name = Math.random();
      var row = $(".imagesEditTable .copyMe").clone().removeClass('copyMe');
      row.appendTo(".imagesEditTable tbody");

      row.find(".j-title").attr('name', 'images['+option_name+'][title]');
      row.find(".j-description").attr('name', 'images['+option_name+'][description]');
      row.find(".j-link").attr('name', 'images['+option_name+'][link]');
      row.find(".j-image").attr('name', 'images['+option_name+'][image]');

      return false;
   });


   // Delete row
   $(".imagesEditTable").delegate(".deleteRow", "click", function(){
      $(this).parent().parent().remove();

      if($(".imagesEditTable tbody tr").length == 1)
      {
         $(".imagesEditTable .plusOne").click();
      }
      return false;
   });


   // Enable table rows sorting
   $(".imagesEditTable tbody").sortable();

});