class DatatablesController < ApplicationController
  def datatable_i18n
      locale = {
          'sEmptyTable' =>     'Nenhum dado encontrado na tabela',
          'sInfo' =>           'Mostrando de _START_ ate _END_ de _TOTAL_ registros',
          'sInfoEmpty' =>      'Mostrando de 0 ate 0 de 0 registros',
          'sInfoFiltered' =>   '(filtrado de _MAX_ registros no total)',
          'sInfoPostFix' =>    '',
          'sInfoThousands' =>  ',',
          'sLengthMenu' =>     '_MENU_ registros por pagina',
          'sLoadingRecords' => 'Carregando...',
          'sProcessing' =>     'Processando...',
          'sSearch' =>         'Buscar:',
          'sZeroRecords' =>    'Nenhum dado encontrado',
          'oPaginate' => {
              'sFirst' =>    'Primeiro',
              'sLast' =>     'Ultimo',
              'sNext' =>     'Seguinte',
              'sPrevious' => 'Anterior'
          },
          'oAria' => {
              'sSortAscending' =>  ': ativar ordenacaoo crescente na coluna',
              'sSortDescending' => ': ativar ordenacaoo decrescente na coluna'
          }
      }
    render :json => locale
  end

end