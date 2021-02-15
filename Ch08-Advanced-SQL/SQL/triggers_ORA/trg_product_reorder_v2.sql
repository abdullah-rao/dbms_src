CREATE OR REPLACE TRIGGER TRG_PRODUCT_REORDER
AFTER INSERT OR UPDATE OF P_QOH, P_MIN ON PRODUCT
BEGIN 
   UPDATE PRODUCT
     SET P_REORDER = 1 
       WHERE P_QOH <= P_MIN;
END;

