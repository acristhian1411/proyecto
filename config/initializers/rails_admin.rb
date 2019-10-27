  RailsAdmin.config do |config|

    config.main_app_name = ["Farmacia", "Remedios"]
    config.default_items_per_page = 5

      config.authenticate_with do
        warden.authenticate! scope: :user
      end
      config.current_user_method(&:current_user)

    ### Popular gems integration

    ## == Devise ==
    # config.authenticate_with do
    #   warden.authenticate! scope: :user
    # end
    # config.current_user_method(&:current_user)

    ## == CancanCan ==
    # config.authorize_with :cancancan

    ## == Pundit ==
    # config.authorize_with :pundit

    ## == PaperTrail ==
    # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

    ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

    ## == Gravatar integration ==
    ## To disable Gravatar integration in Navigation Bar set to false
    # config.show_gravatar = true

    config.actions do
      dashboard                     # mandatory
      index                         # mandatory
      new
      export
      bulk_delete
      show
      edit
      delete
      show_in_app

      ## With an audit adapter, you can add:
      # history_index
      # history_show
    end

config.excluded_models = ["ProdFarma", "ProdSectore"]


  # MODELO RUBRO
    config.model 'Rubro' do
  # metodo index
      list do
        field :rubro_desc do
          label "Descripcion"
        end
        field :rubro_iba do
          label "Iva"
        end
      end
  # formulario
      edit do
        field :rubro_desc do
          label "Descripcion"
        end
        field :rubro_iba do
            label "Iva"
        end
      end
  #metodo show
      show do
        field :rubro_desc do
          label "Descripcion"
        end
        field :rubro_iba do
            label "Iva"
        end
      end
  # FIN MODELO RUBRO
    end

  # MODELO LABORATORIO
    config.model 'Laboratorio' do
      # metodo index

      list do
        scopes [:activos, :inactivos]
        #scopes [:inactivo]
        field :lab_desc do
          label "Descripcion"
        end
        field :lab_active do
          label "Activo"
        end
      end
      # formulario
      edit do
        field :lab_desc do
          label "Descripcion"
        end
        field :lab_active do
            label "Activo"
        end
      end


      # metodo show
      show do
        field :lab_desc do
          label "Descripcion"
        end
        field :lab_active do
            label "Activo"
        end
      end
  #FIN MODELO LABORATORIO
    end

  # MODELO PRODUCTO
      config.model 'Producto' do
        # metodo index
        list do
          field :prod_desc do
            label "Descripcion"
          end
          field :prod_precio do
            label "Precio"
          end
          field :prod_bcode do
            label "Codigo de barra"
          end
        end
  # formulario
        edit do

          field :prod_desc do
            label "Descripcion"
          end

          field :prod_precio do
            label "Precio"
          end

          field :laboratorio_id , :enum do
            enum do
              Laboratorio.all.collect {|p| [p.lab_desc, p.id]}
            end
          end

          field :rubro_id , :enum do
            enum do
              Rubro.all.collect {|p| [p.rubro_desc, p.id]}
            end
          end

          field :prod_bcode do
            label "Codigo de barra"
          end

          field :prod_active do
            label "Activo"
          end
#FIN FORMULARIO
        end
  # metodo show
        show do
          field :prod_desc do
            label "Descripcion"
          end

          field :prod_precio do
            label "Precio"
          end

          field :laboratorio_id , :enum do
            enum do
              Laboratorio.all.collect {|p| [p.lab_desc, p.id]}
            end
          end

          field :rubro_id , :enum do
            enum do
              Rubro.all.collect {|p| [p.rubro_desc, p.id]}
            end
          end

          field :prod_bcode do
            label "Codigo de barra"
          end

          field :prod_active do
            label "Activo"
          end
        end
    #FIN MODELO PRODUCTO
      end

      # MODELO FARMACOS
        config.model 'Farmaco' do
          # metodo index
          list do
            field :farma_desc do
              label "Descripcion"
            end
          end
          # formulario
          edit do
            field :farma_desc do
              label "Descripcion"
            end
          end
          # metodo show
          show do
            field :farma_desc do
              label "Descripcion"
            end
          end
      #FIN MODELO FARMACOS
        end

        # MODELO ALMACENES
          config.model 'Almacene' do
            # metodo index
            list do
              field :alma_desc do
                label "Descripcion"
              end
            end
            # formulario
            edit do
              field :alma_desc do
                label "Descripcion"
              end
            end
            # metodo show
            show do
              field :alma_desc do
                label "Descripcion"
              end
            end
        #FIN MODELO ALMACENES
          end

          # MODELO SECTORES
            config.model 'Sectore' do

              # metodo index
              list do
                field :sect_desc do
                  label "Descripcion"
                end
              end
              # formulario
              edit do
                field :sect_desc do
                  label "Descripcion"
                end

                field :almacene_id , :enum do
                  enum do
                    Almacene.all.collect {|p| [p.alma_desc, p.id]}
                  end
                end

              end
              # metodo show
              show do
                field :sect_desc do
                  label "Descripcion"
                end
              end
          #FIN MODELO SECTORES
            end

            # MODELO CLIENTES
              config.model 'Cliente' do
                # metodo index
                list do
                  field :cliente_nombre do
                    label "Nombre"
                  end
                  field :cliente_ruc do
                    label "Ruc"
                  end
                  field :cliente_direccion do
                    label "Direccion"
                  end
                  field :cliente_telefono do
                    label "Telefono"
                  end
                end
                # formulario
                edit do
                  field :cliente_nombre do
                    label "Nombre"
                  end
                  field :cliente_ruc do
                    label "Ruc"
                  end
                  field :cliente_direccion do
                    label "Direccion"
                  end
                  field :cliente_telefono do
                    label "Telefono"
                  end
                  field :cliente_email do
                    label "Email"
                  end

                end
                # metodo show
                show do
                  field :cliente_nombre do
                    label "Nombre"
                  end
                  field :cliente_ruc do
                    label "Ruc"
                  end
                  field :cliente_direccion do
                    label "Direccion"
                  end
                  field :cliente_telefono do
                    label "Telefono"
                  end
                  field :cliente_email do
                    label "Email"
                  end
                end
            #FIN MODELO CLIENTES
              end

              # MODELO EMPLEADOS
                config.model 'Empleado' do

                  # metodo index
                  list do
                    field :emple_nombre do
                      label "Nombre"
                    end
                    field :emple_ruc do
                      label "Ruc"
                    end
                    field :emple_direccion do
                      label "Direccion"
                    end
                    field :emple_telefono do
                      label "Telefono"
                    end
                  end
                  # formulario
                  edit do
                    field :emple_nombre do
                      label "Nombre"
                    end
                    field :emple_ruc do
                      label "Ruc"
                    end
                    field :emple_direccion do
                      label "Direccion"
                    end
                    field :emple_telefono do
                      label "Telefono"
                    end
                    field :emple_email do
                      label "Email"
                    end

                  end
                  # metodo show
                  show do
                    field :emple_nombre do
                      label "Nombre"
                    end
                    field :emple_ruc do
                      label "Ruc"
                    end
                    field :emple_direccion do
                      label "Direccion"
                    end
                    field :emple_telefono do
                      label "Telefono"
                    end
                    field :emple_email do
                      label "Email"
                    end
                  end
              #FIN MODELO EMPLEADOS
                end


                              # MODELO PROVEEDORES
                                config.model 'Proveedore' do
                                  # metodo index
                                  list do
                                    field :prov_nombre do
                                      label "Nombre"
                                    end
                                    field :prov_ruc do
                                      label "Ruc"
                                    end
                                    field :prov_direccion do
                                      label "Direccion"
                                    end
                                    field :prov_telefono do
                                      label "Telefono"
                                    end
                                  end
                                  # formulario
                                  edit do
                                    field :prov_nombre do
                                      label "Nombre"
                                    end
                                    field :prov_ruc do
                                      label "Ruc"
                                    end
                                    field :prov_direccion do
                                      label "Direccion"
                                    end
                                    field :prov_telefono do
                                      label "Telefono"
                                    end
                                    field :prov_email do
                                      label "Email"
                                    end

                                  end
                                  # metodo show
                                  show do
                                    field :prov_nombre do
                                      label "Nombre"
                                    end
                                    field :prov_ruc do
                                      label "Ruc"
                                    end
                                    field :prov_direccion do
                                      label "Direccion"
                                    end
                                    field :prov_telefono do
                                      label "Telefono"
                                    end
                                    field :prov_email do
                                      label "Email"
                                    end
                                  end
                              #FIN MODELO PROVEEDORES
                                end

                                # MODELO Tipo de Movimiento
                                  config.model 'MovTipo' do
                                # metodo index
                                label "Tipo de movimiento" 
                                    list do
                                      field :mov_desc do
                                        label "Descripcion"
                                      end
                                      field :mov_est do
                                        label "Estado"
                                      end
                                    end
                                # formulario
                                    edit do
                                      field :mov_desc do
                                        label "Descripcion"
                                      end
                                      field :mov_est do
                                          label "Estado"
                                      end
                                    end
                                #metodo show
                                    show do
                                      field :mov_desc do
                                        label "Descripcion"
                                      end
                                      field :mov_est do
                                          label "Estado"
                                      end
                                    end
                                # FIN MODELO TIPO DE Movimiento
                                  end


  end
