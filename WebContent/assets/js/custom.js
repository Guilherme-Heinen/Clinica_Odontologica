$(document).ready(function () {
	
    /*mascara para matricula*/
        $("#ID").keyup(function() {
           	  $("#ID").val(this.value.match(/[0-9]*/));
          });    

    /*mascara para letra maiuscula*/
        $("#NOME").keyup(function() {
              $("#NOME").val(this.value.toUpperCase());
          });    


        


    /*mascara para telefone*/
    	$("#TELEFONE").keyup(function() {
      		  $("#TELEFONE").mask("(00) 0000-0000"); 
          });  

      $("#CELULAR").keyup(function() {
            $("#CELULAR").mask("(00) 00000-0000"); 
          });  

    /*mascara para data*/	
    	$("#DATA").keyup(function() {
      		  $("#DATA").mask("00/00/0000"); 
          }); 

      $("#NASCIMENTO").keyup(function() {
            $("#NASCIMENTO").mask("00/00/0000"); 
          }); 

    /*mascara para cpf*/		
    	$("#CPF").keyup(function() {
      		  $("#CPF").mask("000.000.000-00"); 
          }); 

    /*mascara para cpf*/    
      $("#CEP").keyup(function() {
            $("#CEP").mask("00000-000"); 
          }); 

    
  /*calendario*/

      $(function(){
          $("#calendario").datepicker({
              dateFormat: 'dd/mm/yy',
              dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado','Domingo'
                  ],
              dayNamesMin: [
              'D','S','T','Q','Q','S','S','D'
              ],
              dayNamesShort: [
              'Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'
              ],
              monthNames: [  'Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro',
              'Outubro','Novembro','Dezembro'
              ],
              monthNamesShort: [
              'Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set',
              'Out','Nov','Dez'
              ],
              nextText: 'Próximo',
              prevText: 'Anterior'
              });
      });
     

    	
});