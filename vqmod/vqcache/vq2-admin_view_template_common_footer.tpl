<footer id="footer"><?php echo $text_footer; ?><br /><?php echo $text_version; ?></footer></div>

                                <script>
                                    /*
                                    #input-name1: đây là field dùng để nhập tên sản phẩm
                                    #input-keyword: đây là field SEO keywords của sản phẩm
                                    #input-meta-title1: đây là field title của sản phẩm

                                    #input-name: đây là field dùng để nhập tên nhà sản xuất
                                    */
                                   
                                    $(document).ready(function($) {
                                            function removeUTF8(str, id)
                                                {
                                                  str = str.toLowerCase();
                                                  str = str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g, "a");
                                                  str = str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g, "e");
                                                  str = str.replace(/ì|í|ị|ỉ|ĩ/g, "i");
                                                  str = str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g, "o");
                                                  str = str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g, "u");
                                                  str = str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g, "y");
                                                  str = str.replace(/đ/g, "d");
                                                  str= str.replace(/\\|\||\}|\{|\$|\!|@|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\;|\'| |\"|\&|\#|\[|\]|~|$|_/g,"-");  
                                                  /* tìm và thay thế các kí tự đặc biệt trong chuỗi sang kí tự - */
                                                  str= str.replace(/-+-/g,"-"); //thay thế 2- thành 1-  
                                                  str = str.replace(/^\-+|\-+$/g, "");
                                                  //cắt bỏ ký tự - ở đầu và cuối chuỗi 
                                                  $("#"+id).val(str);
                                                }

                                        

                                        //Add product
                                        $("#input-name1").keyup(function(e) {
                                              var str = $("#input-name1").val();
                                              $("#input-meta-title1").val(str);
                                              removeUTF8(str,'input-keyword');
                                                  });

                                       
                                        //Add manufacture
                                            $("#input-name").keyup(function(e) {
                                                  var str2 = $("#input-name").val();
                                                  removeUTF8(str2,'input-keyword');
                                                      });
										
										
                                        //Add infomation
                                        $("#input-title1").keyup(function(e) {
                                              var str3 = $("#input-title1").val();
                                              $("#input-meta-title1").val(str3);
                                              removeUTF8(str3,'input-keyword');
                                                  });


                                    });//end ready 
                                </script>
</body></html>
                        