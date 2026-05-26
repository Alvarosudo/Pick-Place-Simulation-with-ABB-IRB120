MODULE Module1
    

    CONST robtarget pPick_App_C3:=[[-316,-368.6,572],[0,0,-0.707106781,0.707106781],[-2,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPick_C3_C_1:=[[-316,-368.6,482],[0,0,-0.707106781,0.707106781],[-2,1,-3,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPlace_App_C6:=[[349.296,299.975,572],[0.5,-0.5,0.5,-0.5],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPlace_C3_C_6:=[[349.296,299.975,482],[0.5,-0.5,0.5,-0.5],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Inicio_V3:=[[364.353821314,95.000001192,593.99994615],[0.499999995,0,0.866025407,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    ! Variables para la generacion aleatoria
    VAR num nCintaAleatoria := 0;
    VAR num nTipoAleatorio := 0;
    VAR num nSeed := 42;
    
    ! Contadores y requeridas
    VAR num nCajasT1_Req := 0; 
    VAR num nCajasT2_Req := 0;
    VAR num nCajasT3_Req := 0;
    VAR num nCajasT1_Gen := 0;
    VAR num nCajasT2_Gen := 0;
    VAR num nCajasT3_Gen := 0;
    VAR num nTotalCajas := 0;
    VAR num nCajasProcesadas := 0;
   ! Posición de los diferentes puntos  
    CONST robtarget pPick_C3_C1:=[[-316,-368.6,482],[0,0,-0.707106781,0.707106781],[-2,1,-3,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPlace_App_C3:=[[349.296,299.975,572],[0.5,-0.5,0.5,-0.5],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPlace_C3:=[[349.296,299.975,482],[0.5,-0.5,0.5,-0.5],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Inicio_V4:=[[364.353851784,-95,594.000006911],[0.500000003,0,0.866025402,0],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPick_App_C2:=[[-316.000000141,-368.6,562],[0.707106781,0.707106781,-0.000000001,0],[-2,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPick_C2_C1:=[[-316,-368.6,462],[0.707106781,0.707106781,-0.000000001,0],[-2,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPick_App_C1:=[[-315.999999859,-368.6,532],[-0.000000001,0,0.707106781,-0.707106781],[-2,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPick_C1_C1:=[[-316,-368.6,432],[0.000000001,0,-0.707106781,0.707106781],[-2,1,-3,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPlace_App_C1:=[[-289.15,308.032,532],[0.707106781,-0.707106781,-0.000000002,0.000000002],[1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPlace_C1:=[[-289.15,308.032,432],[0.707106781,-0.707106781,-0.000000002,0.000000002],[1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPlace_App_C2:=[[15.071999873,413.101,552],[0.499999999,0.5,-0.500000001,-0.5],[0,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPlace_C2:=[[15.072,413.101,462],[0.499999999,0.5,-0.500000001,-0.5],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPick_App__C3_C3:=[[339.99999988,-365.8,548],[0.500000001,-0.5,0.499999999,-0.5],[-1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPick_C3_C3:=[[340,-365.8,488],[0.500000001,-0.5,0.499999999,-0.5],[-1,1,-3,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPick_App_C2_C3:=[[340.00000016,-365.8,548],[0.499999999,0.5,0.500000001,0.5],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPick_C2_C3:=[[340,-365.8,468],[0.499999999,0.5,0.500000001,0.5],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPick_App_C1_C3:=[[339.999999859,-365.8,538],[0.000000001,0,0.707106781,-0.707106781],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPick_C1_C3:=[[340,-365.8,438],[0.000000001,0,0.707106781,-0.707106781],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPick_App_C3_C_2:=[[13.000012661,-365.800008465,587.999971855],[0.50000001,-0.500000001,0.499999988,-0.500000001],[-2,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPick_C3_C2:=[[13,-365.8,488],[0.500000001,-0.499999999,0.499999999,-0.500000001],[-2,0,-3,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPick_App_C2_C2:=[[12.9999999,-365.7999999,568],[0.500000001,0.5,0.5,0.5],[-2,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPick_C2_C2:=[[13,-365.8,468],[0.500000001,0.5,0.5,0.5],[-2,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPick_App_C1_C2:=[[13.0000002,-365.8,538],[0.5,-0.500000001,0.5,-0.499999999],[-2,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPick_C1_C2:=[[13,-365.8,438],[0.5,-0.500000001,0.5,-0.499999999],[-2,0,-3,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPlace_App_3:=[[337.838,283.8969998,582.539],[0.500000001,-0.5,0.5,-0.499999999],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPlace_3:=[[337.838,283.897,482.539],[0.500000001,-0.5,0.5,-0.499999999],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPlace_App_1:=[[-289.081000141,301.279,514.372],[0.707106781,-0.707106781,-0.000000001,0],[1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPlace_1:=[[-289.081,301.279,414.372],[0.707106781,-0.707106781,-0.000000001,0],[1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPlace_App_2:=[[12.9999999,405.0210001,558.778],[0.5,0.5,-0.500000001,-0.5],[0,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPlace_2:=[[13,405.021,458.778],[0.5,0.5,-0.5,-0.500000001],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];


    PROC main()
        
        ! Inicializar variables
        nCajasT1_Gen := 0;
        nCajasT2_Gen := 0;
        nCajasT3_Gen := 0;
        nCajasProcesadas := 0;
        
        !PEDIR DATOS AL USUARIO EN EL FLEXPENDANT
        TPErase; ! Limpiamos la pantalla
        TPWrite "=====================================";
        TPWrite "   CONFIGURACION DE PRODUCCION";
        TPWrite "=====================================";
        TPReadNum nCajasT1_Req, "Numero de cajas Tipo 1 a generar:";
        TPReadNum nCajasT2_Req, "Numero de cajas Tipo 2 a generar:";
        TPReadNum nCajasT3_Req, "Numero de cajas Tipo 3 a generar:";
        
        nTotalCajas := nCajasT1_Req + nCajasT2_Req + nCajasT3_Req;
        
        TPWrite " ";
        TPWrite "-> Produccion Total: " \Num:=nTotalCajas;
        TPWrite "=====================================";
        WaitTime 1.5;

        ! Colocar el robot en su posición inicial
        MoveJ Inicio_V3, v1000, fine, Ventosas3\WObj:=wobj0;

        ! Encender cintas
        SetDO DO_Mover_C1, 1;
        SetDO DO_Mover_C2, 1;
        SetDO DO_Mover_C3, 1;
        
        WaitTime 1;

        ! BUCLE SECUENCIAL LIMITADO POR CANTIDAD
        WHILE nCajasProcesadas < nTotalCajas DO
    
            GenerarCajaAleatoria;

            ! Esperar a que la caja llegue a la zona de recogida
            WaitUntil (DI_Sen_C1_Bajo = 1 OR DI_Sen_C2_Bajo = 1 OR DI_Sen_C3_Bajo = 1);
            WaitTime 0.3; 
            
            ! Para las cintas para correcto procesamiento
            SetDO DO_Mover_C1, 0; 
            SetDO DO_Mover_C2, 0; 
            SetDO DO_Mover_C3, 0;
            WaitTime 0.2;
            
            ! Procesar la caja
            IF DI_Sen_C1_Bajo = 1 THEN
                IF DI_Sen_C1_Medio = 0 AND DI_Sen_C1_Alto = 0 THEN
                    Ruta_Coger_C1_Caja1; Ruta_Dejar1;
                ELSEIF DI_Sen_C1_Medio = 1 AND DI_Sen_C1_Alto = 0 THEN
                    Ruta_Coger_C1_Caja2; Ruta_Dejar2;
                ELSEIF DI_Sen_C1_Medio = 1 AND DI_Sen_C1_Alto = 1 THEN
                    Ruta_Coger_C1_Caja3; Ruta_Dejar3;
                ENDIF
                
            ELSEIF DI_Sen_C2_Bajo = 1 THEN
                IF DI_Sen_C2_Medio = 0 AND DI_Sen_C2_Alto = 0 THEN
                    Ruta_Coger_C2_Caja1; Ruta_Dejar1;
                ELSEIF DI_Sen_C2_Medio = 1 AND DI_Sen_C2_Alto = 0 THEN
                    Ruta_Coger_C2_Caja2; Ruta_Dejar2;
                ELSEIF DI_Sen_C2_Medio = 1 AND DI_Sen_C2_Alto = 1 THEN
                    Ruta_Coger_C2_Caja3; Ruta_Dejar3;
                ENDIF
                
            ELSEIF DI_Sen_C3_Bajo = 1 THEN
                IF DI_Sen_C3_Medio = 0 AND DI_Sen_C3_Alto = 0 THEN
                    Ruta_Coger_C3_Caja1; Ruta_Dejar1;
                ELSEIF DI_Sen_C3_Medio = 1 AND DI_Sen_C3_Alto = 0 THEN
                    Ruta_Coger_C3_Caja2; Ruta_Dejar2;
                ELSEIF DI_Sen_C3_Medio = 1 AND DI_Sen_C3_Alto = 1 THEN
                    Ruta_Coger_C3_Caja3; Ruta_Dejar3;
                ENDIF
            ENDIF
            
            ! Esperar a que el robot llegue a la posición inicial
            WaitRob \InPos; 
            
            ! Actualizar contador
            nCajasProcesadas := nCajasProcesadas + 1;
            
            ! Reactivar las cintas de entrada
            SetDO DO_Mover_C1, 1; 
            SetDO DO_Mover_C2, 1; 
            SetDO DO_Mover_C3, 1;
            
            WaitTime 0.5;

        ENDWHILE 
        
        ! Mensaje de finalizacion del programa
        TPWrite "=====================================";
        TPWrite "  ¡PRODUCCION COMPLETADA CON EXITO!  ";
        TPWrite "=====================================";
        Stop; ! Detener la ejecución
        
    ENDPROC
    
    ! Subrutina para generar cajas aleatorias en cintas aleatorias
    PROC GenerarCajaAleatoria()
        VAR bool bGenerada := FALSE;
        
        WHILE bGenerada = FALSE DO
            
            ! Calculo  del LCG para cintas y tipos 
            nSeed := (nSeed * 13 + 7) MOD 1000;
            ! Normalizar el numero para las 3 cintas (0, 1 , 2)
            nCintaAleatoria := (nSeed MOD 3) + 1; 
            
            nSeed := (nSeed * 13 + 7) MOD 1000;
            ! Normalizar el numero para los 3 tipos de cajas (0, 1 , 2)
            nTipoAleatorio := (nSeed MOD 3) + 1;  
            
            ! Comprobar si se ha pedido esa caja y generar la caja requerida
            IF nTipoAleatorio = 1 AND nCajasT1_Gen < nCajasT1_Req THEN
                IF nCintaAleatoria = 1 THEN PulseDO \PLength:=0.02, DO_Gen_C1_T1;
                ELSEIF nCintaAleatoria = 2 THEN PulseDO \PLength:=0.02, DO_Gen_C2_T1;
                ELSEIF nCintaAleatoria = 3 THEN PulseDO \PLength:=0.02, DO_Gen_C3_T1; ENDIF
                
                nCajasT1_Gen := nCajasT1_Gen + 1;
                TPWrite ">>> Generada TIPO 1 en Cinta " \Num:=nCintaAleatoria;
                bGenerada := TRUE;
                
            ELSEIF nTipoAleatorio = 2 AND nCajasT2_Gen < nCajasT2_Req THEN
                IF nCintaAleatoria = 1 THEN PulseDO \PLength:=0.02, DO_Gen_C1_T2;
                ELSEIF nCintaAleatoria = 2 THEN PulseDO \PLength:=0.02, DO_Gen_C2_T2;
                ELSEIF nCintaAleatoria = 3 THEN PulseDO \PLength:=0.02, DO_Gen_C3_T2; ENDIF
                
                nCajasT2_Gen := nCajasT2_Gen + 1;
                TPWrite ">>> Generada TIPO 2 en Cinta " \Num:=nCintaAleatoria;
                bGenerada := TRUE;
                
            ELSEIF nTipoAleatorio = 3 AND nCajasT3_Gen < nCajasT3_Req THEN
                IF nCintaAleatoria = 1 THEN PulseDO \PLength:=0.02, DO_Gen_C1_T3;
                ELSEIF nCintaAleatoria = 2 THEN PulseDO \PLength:=0.02, DO_Gen_C2_T3;
                ELSEIF nCintaAleatoria = 3 THEN PulseDO \PLength:=0.02, DO_Gen_C3_T3; ENDIF
                
                nCajasT3_Gen := nCajasT3_Gen + 1;
                TPWrite ">>> Generada TIPO 3 en Cinta " \Num:=nCintaAleatoria;
                bGenerada := TRUE;
            ENDIF
            
            ! Si el tipo elegido al azar ya había llegado a su límite de cajas,
            ! el bucle WHILE repetirá el proceso milisegundos después buscando
            ! otro tipo que aún necesitemos crear.
            
        ENDWHILE
    ENDPROC
    
! Trayectorias del robot
    PROC Path_Caja3()
        MoveL pPick_App_C3,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPick_C3_C_1,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPick_App_C3,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPlace_App_C6,v1000,z100,Ventosas3\WObj:=wobj0;
        MoveL pPlace_C3_C_6,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPlace_App_C6,v1000,fine,Ventosas3\WObj:=wobj0;
    ENDPROC
    PROC Ruta_Coger_C1_Caja3()
        MoveL Inicio_V3,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPick_App_C3,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPick_C3_C1,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPick_App_C3,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL Inicio_V3,v1000,fine,Ventosas3\WObj:=wobj0;
    ENDPROC
    PROC Ruta_Coger_C1_Caja2()
        MoveL Inicio_V4,v500,fine,Ventosas4\WObj:=wobj0;
        MoveL pPick_App_C2,v1000,fine,Ventosas4\WObj:=wobj0;
        MoveL pPick_C2_C1,v1000,fine,Ventosas4\WObj:=wobj0;
        MoveL pPick_App_C2,v1000,fine,Ventosas4\WObj:=wobj0;
        MoveL Inicio_V4,v1000,fine,Ventosas4\WObj:=wobj0;
    ENDPROC
    PROC Ruta_Coger_C1_Caja1()
        MoveL Inicio_V3,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPick_App_C1,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPick_C1_C1,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPick_App_C1,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL Inicio_V3,v1000,fine,Ventosas3\WObj:=wobj0;
    ENDPROC
    PROC Ruta_Coger_C3_Caja3()
        MoveL Inicio_V3,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPick_App__C3_C3,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPick_C3_C3,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPick_App__C3_C3,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL Inicio_V3,v1000,fine,Ventosas3\WObj:=wobj0;
    ENDPROC
    PROC Ruta_Coger_C3_Caja2()
        MoveL Inicio_V4,v1000,fine,Ventosas4\WObj:=wobj0;
        MoveL pPick_App_C2_C3,v1000,fine,Ventosas4\WObj:=wobj0;
        MoveL pPick_C2_C3,v1000,fine,Ventosas4\WObj:=wobj0;
        MoveL pPick_App_C2_C3,v1000,fine,Ventosas4\WObj:=wobj0;
        MoveL Inicio_V4,v1000,fine,Ventosas4\WObj:=wobj0;
    ENDPROC
    PROC Ruta_Coger_C3_Caja1()
        MoveL Inicio_V3,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPick_App_C1_C3,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPick_C1_C3,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPick_App_C1_C3,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL Inicio_V3,v1000,fine,Ventosas3\WObj:=wobj0;
    ENDPROC
    PROC Ruta_Coger_C2_Caja3()
        MoveL Inicio_V3,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPick_App_C3_C_2,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPick_C3_C2,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPick_App_C3_C_2,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL Inicio_V3,v1000,fine,Ventosas3\WObj:=wobj0;
    ENDPROC
    PROC Ruta_Coger_C2_Caja2()
        MoveL Inicio_V4,v1000,fine,Ventosas4\WObj:=wobj0;
        MoveL pPick_App_C2_C2,v1000,fine,Ventosas4\WObj:=wobj0;
        MoveL pPick_C2_C2,v1000,fine,Ventosas4\WObj:=wobj0;
        MoveL pPick_App_C2_C2,v1000,fine,Ventosas4\WObj:=wobj0;
        MoveL Inicio_V4,v1000,fine,Ventosas4\WObj:=wobj0;
    ENDPROC
    PROC Ruta_Coger_C2_Caja1()
        MoveL Inicio_V3,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPick_App_C1_C2,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPick_C1_C2,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPick_App_C1_C2,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL Inicio_V3,v1000,fine,Ventosas3\WObj:=wobj0;
    ENDPROC
    PROC Caja2()
        MoveL Inicio_V4,v1000,z100,Ventosas4\WObj:=wobj0;
        MoveL pPlace_App_C2,v1000,z100,Ventosas4\WObj:=wobj0;
        MoveL pPlace_C2,v1000,z100,Ventosas4\WObj:=wobj0;
    ENDPROC
    PROC Caja1()
        MoveL Inicio_V3,v1000,z100,Ventosas3\WObj:=wobj0;
        MoveL pPlace_App_C1,v1000,z100,Ventosas3\WObj:=wobj0;
        MoveL pPlace_C1,v1000,z100,Ventosas3\WObj:=wobj0;
    ENDPROC
    PROC Caja3()
        MoveL Inicio_V3,v1000,z100,Ventosas3\WObj:=wobj0;
        MoveL pPlace_App_C3,v1000,z100,Ventosas3\WObj:=wobj0;
        MoveL pPlace_C3,v1000,z100,Ventosas3\WObj:=wobj0;
   ENDPROC
    PROC Ruta_Dejar2()
        MoveL Inicio_V4,v1000,fine,Ventosas4\WObj:=wobj0;
        MoveL pPlace_App_2,v1000,fine,Ventosas4\WObj:=wobj0;
        MoveL pPlace_2,v1000,fine,Ventosas4\WObj:=wobj0;
        MoveL pPlace_App_2,v1000,fine,Ventosas4\WObj:=wobj0;
        MoveL Inicio_V4,v1000,fine,Ventosas4\WObj:=wobj0;
    ENDPROC
    PROC Ruta_Dejar1()
        MoveL Inicio_V3,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPlace_App_1,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPlace_1,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPlace_App_1,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL Inicio_V3,v1000,fine,Ventosas3\WObj:=wobj0;
    ENDPROC
    PROC Ruta_Dejar3()
        MoveL Inicio_V3,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPlace_App_3,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPlace_3,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL pPlace_App_3,v1000,fine,Ventosas3\WObj:=wobj0;
        MoveL Inicio_V3,v1000,fine,Ventosas3\WObj:=wobj0;
    ENDPROC
ENDMODULE