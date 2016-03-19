.class public final Lcom/paypal/android/sdk/gh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/fz;


# static fields
.field private static final a:Ljava/util/Map;

.field private static final b:Ljava/util/Map;

.field private static final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->a:Lcom/paypal/android/sdk/em;

    const-string v2, "Aceptar y pagar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->b:Lcom/paypal/android/sdk/em;

    const-string v2, "y otro"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->c:Lcom/paypal/android/sdk/em;

    const-string v2, "Autenticando"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->d:Lcom/paypal/android/sdk/em;

    const-string v2, "Atr\u00e1s"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->e:Lcom/paypal/android/sdk/em;

    const-string v2, "Garant\u00eda"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->f:Lcom/paypal/android/sdk/em;

    const-string v2, "Cancelar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->g:Lcom/paypal/android/sdk/em;

    const-string v2, "American Express"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->h:Lcom/paypal/android/sdk/em;

    const-string v2, "Carta Aura"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->i:Lcom/paypal/android/sdk/em;

    const-string v2, "Carte Aurore"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->j:Lcom/paypal/android/sdk/em;

    const-string v2, "Carta Prepagata PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->k:Lcom/paypal/android/sdk/em;

    const-string v2, "Carte Bancaire"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->l:Lcom/paypal/android/sdk/em;

    const-string v2, "Cofinoga"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->m:Lcom/paypal/android/sdk/em;

    const-string v2, "Delta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->n:Lcom/paypal/android/sdk/em;

    const-string v2, "Discover"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->o:Lcom/paypal/android/sdk/em;

    const-string v2, "Electron"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->p:Lcom/paypal/android/sdk/em;

    const-string v2, "JCB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->q:Lcom/paypal/android/sdk/em;

    const-string v2, "Maestro"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->r:Lcom/paypal/android/sdk/em;

    const-string v2, "MasterCard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->s:Lcom/paypal/android/sdk/em;

    const-string v2, "Postepay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->t:Lcom/paypal/android/sdk/em;

    const-string v2, "4 \u00e9toiles"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->u:Lcom/paypal/android/sdk/em;

    const-string v2, "Tarjeta Aurora"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->v:Lcom/paypal/android/sdk/em;

    const-string v2, "Visa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->w:Lcom/paypal/android/sdk/em;

    const-string v2, "Cambiar forma de pago"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->x:Lcom/paypal/android/sdk/em;

    const-string v2, "Cheques"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->y:Lcom/paypal/android/sdk/em;

    const-string v2, "Comprobando el dispositivo\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->z:Lcom/paypal/android/sdk/em;

    const-string v2, "Borrar los datos de la tarjeta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->A:Lcom/paypal/android/sdk/em;

    const-string v2, "Confirmar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->B:Lcom/paypal/android/sdk/em;

    const-string v2, "\u00bfSeguro que desea borrar los datos de su tarjeta?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->C:Lcom/paypal/android/sdk/em;

    const-string v2, "Cargar en tarjeta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->D:Lcom/paypal/android/sdk/em;

    const-string v2, "\u00bfEst\u00e1 seguro que desea cerrar la sesi\u00f3n de PayPal?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->E:Lcom/paypal/android/sdk/em;

    const-string v2, "Pagar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->F:Lcom/paypal/android/sdk/em;

    const-string v2, "Aceptar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->G:Lcom/paypal/android/sdk/em;

    const-string v2, "Fecha de apertura de la cuenta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->H:Lcom/paypal/android/sdk/em;

    const-string v2, "Estado de la cuenta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->I:Lcom/paypal/android/sdk/em;

    const-string v2, "Tipo de cuenta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->J:Lcom/paypal/android/sdk/em;

    const-string v2, "Direcci\u00f3n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->K:Lcom/paypal/android/sdk/em;

    const-string v2, "Rango de edad"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->L:Lcom/paypal/android/sdk/em;

    const-string v2, "Fecha de nacimiento"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->M:Lcom/paypal/android/sdk/em;

    const-string v2, "Direcci\u00f3n de correo electr\u00f3nico"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->N:Lcom/paypal/android/sdk/em;

    const-string v2, "Nombre completo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->O:Lcom/paypal/android/sdk/em;

    const-string v2, "Sexo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->P:Lcom/paypal/android/sdk/em;

    const-string v2, "Idioma"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->Q:Lcom/paypal/android/sdk/em;

    const-string v2, "Configuraci\u00f3n regional"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->R:Lcom/paypal/android/sdk/em;

    const-string v2, "Tel\u00e9fono"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->S:Lcom/paypal/android/sdk/em;

    const-string v2, "Zona horaria"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->T:Lcom/paypal/android/sdk/em;

    const-string v2, "Compartir lo siguiente: %s."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->U:Lcom/paypal/android/sdk/em;

    const-string v2, "Utilizar pago integrado"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->V:Lcom/paypal/android/sdk/em;

    const-string v2, "%s le solicita que usted:"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->W:Lcom/paypal/android/sdk/em;

    const-string v2, "Comparta las <a href=\'%1$s\'>formas de pago</a> asociadas a su cuenta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->X:Lcom/paypal/android/sdk/em;

    const-string v2, "Active la visualizaci\u00f3n de sus opciones de pago para que usted pueda elegir."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->Y:Lcom/paypal/android/sdk/em;

    const-string v2, "<a href=\'%1$s\'>Autorizar cargos</a> correspondientes a futuras compras en %2$s pagadas con PayPal. Le instruye a PayPal de pagar todos los importes solicitados por %3$s."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->Z:Lcom/paypal/android/sdk/em;

    const-string v2, "Le permita agregar y administrar su tarjeta de lealtad en su cartera de PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aa:Lcom/paypal/android/sdk/em;

    const-string v2, "Acepte la <a href=\'%2$s\'>Pol\u00edtica de privacidad</a> y las <a href=\'%3$s\'>Condiciones de uso</a> de %1$s."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ab:Lcom/paypal/android/sdk/em;

    const-string v2, "Le permita <a href=\'%1$s\'>solicitar pagos</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ac:Lcom/paypal/android/sdk/em;

    const-string v2, "Le permita <a href=\'%1$s\'>enviar pagos</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ad:Lcom/paypal/android/sdk/em;

    const-string v2, "Permiso"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ae:Lcom/paypal/android/sdk/em;

    const-string v2, "Correo electr\u00f3nico"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->af:Lcom/paypal/android/sdk/em;

    const-string v2, "Datos de prueba"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ag:Lcom/paypal/android/sdk/em;

    const-string v2, "Sandbox"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ah:Lcom/paypal/android/sdk/em;

    const-string v2, "Caduca"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ai:Lcom/paypal/android/sdk/em;

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aj:Lcom/paypal/android/sdk/em;

    const-string v2, "\u00bfOlvid\u00f3 su contrase\u00f1a?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ak:Lcom/paypal/android/sdk/em;

    const-string v2, "De"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->al:Lcom/paypal/android/sdk/em;

    const-string v2, "\u00bfC\u00f3mo le gustar\u00eda respaldar sus pagos futuros %1$s?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->am:Lcom/paypal/android/sdk/em;

    const-string v2, "<h1><strong>Acuerdo de pago futuro</strong></h1><p>Su forma de pago predeterminada se utilizar\u00e1 para realizar futuros pagos con PayPal de este vendedor.</p><p>Para cancelar este acuerdo, inicie sesi\u00f3n en su cuenta PayPal, vaya a <strong>Perfil</strong> &gt; <strong>Mi configuraci\u00f3n</strong> &gt; <strong>Iniciar sesi\u00f3n con PayPal</strong> y eliminar a este comercio de la lista.</p><p>Aplicar\u00e1 el art\u00edculo Pagos recurrentes de las <a href=\'%s\'>Condiciones de uso de PayPal</a>.</p><p>Para asegurarse de que los pagos con tu cuenta PayPal funcionen correctamente, esta aplicaci\u00f3n puede simular una peque\u00f1a transacci\u00f3n de prueba, pero no se transferir\u00e1 dinero.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->an:Lcom/paypal/android/sdk/em;

    const-string v2, "Error interno"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ao:Lcom/paypal/android/sdk/em;

    const-string v2, "<p>Al hacer clic en el bot\u00f3n a continuaci\u00f3n, por el presente documento acepto los t\u00e9rminos de las <a href=\'%1$s\'>Condiciones de uso de PayPal</a> y declaro que cumplo las leyes y normas japonesas, incluidas las sanciones contra pagos a Corea del Norte e Ir\u00e1n de conformidad con la <a href=\'%2$s\'>Ley de divisas y comercio exterior</a> para realizar la transacci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ap:Lcom/paypal/android/sdk/em;

    const-string v2, "Iniciar sesi\u00f3n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aq:Lcom/paypal/android/sdk/em;

    const-string v2, "Iniciar sesi\u00f3n con Paypal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ar:Lcom/paypal/android/sdk/em;

    const-string v2, "Cerrar sesi\u00f3n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->as:Lcom/paypal/android/sdk/em;

    const-string v2, "Cerrar sesi\u00f3n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->at:Lcom/paypal/android/sdk/em;

    const-string v2, "Aceptar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->au:Lcom/paypal/android/sdk/em;

    const-string v2, "Contrase\u00f1a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->av:Lcom/paypal/android/sdk/em;

    const-string v2, "Pagar despu\u00e9s de la entrega"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aw:Lcom/paypal/android/sdk/em;

    const-string v2, "Pagar con"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ax:Lcom/paypal/android/sdk/em;

    const-string v2, "Pagar con tarjeta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ay:Lcom/paypal/android/sdk/em;

    const-string v2, "Saldo de la cuenta PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->az:Lcom/paypal/android/sdk/em;

    const-string v2, "PayPal Credit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aA:Lcom/paypal/android/sdk/em;

    const-string v2, "Tel\u00e9fono"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aB:Lcom/paypal/android/sdk/em;

    const-string v2, "NIP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aC:Lcom/paypal/android/sdk/em;

    const-string v2, "Forma de pago preferida"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aD:Lcom/paypal/android/sdk/em;

    const-string v2, "PayPal protege su <a href=\'%s\'>privacidad</a> e informaci\u00f3n financiera."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aE:Lcom/paypal/android/sdk/em;

    const-string v2, "Proceso en curso"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aF:Lcom/paypal/android/sdk/em;

    const-string v2, "Recordar tarjeta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aG:Lcom/paypal/android/sdk/em;

    const-string v2, "Solicitar pago"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aH:Lcom/paypal/android/sdk/em;

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a las opciones <strong>Iniciar sesi\u00f3n con PayPal</strong> en la secci\u00f3n de configuraci\u00f3n del <strong>Perfil</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el partner.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aI:Lcom/paypal/android/sdk/em;

    const-string v2, "Ahorros"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aJ:Lcom/paypal/android/sdk/em;

    const-string v2, "Enviar un pago"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aK:Lcom/paypal/android/sdk/em;

    const-string v2, "Se ha producido un problema en la comunicaci\u00f3n con los servidores de PayPal. Int\u00e9ntelo de nuevo."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aL:Lcom/paypal/android/sdk/em;

    const-string v2, "Inicie sesi\u00f3n de nuevo en PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aM:Lcom/paypal/android/sdk/em;

    const-string v2, "Sesi\u00f3n caducada"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aN:Lcom/paypal/android/sdk/em;

    const-string v2, "Direcci\u00f3n de env\u00edo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aO:Lcom/paypal/android/sdk/em;

    const-string v2, "\u00bfNuevo usuario de PayPal? Registrarse"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aP:Lcom/paypal/android/sdk/em;

    const-string v2, "Mantener la sesi\u00f3n activa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aQ:Lcom/paypal/android/sdk/em;

    const-string v2, "Error de sistema (%s). Int\u00e9ntelo de nuevo m\u00e1s tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aR:Lcom/paypal/android/sdk/em;

    const-string v2, "Int\u00e9ntelo de nuevo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aS:Lcom/paypal/android/sdk/em;

    const-string v2, "No logra iniciar sesi\u00f3n, porque la autenticaci\u00f3n de dos factores fue activada para su cuenta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aT:Lcom/paypal/android/sdk/em;

    const-string v2, "C\u00f3digo de seguridad"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aU:Lcom/paypal/android/sdk/em;

    const-string v2, "Env\u00ede un mensaje de texto a su tel\u00e9fono. El c\u00f3digo de 6 d\u00edgitos que reciba ser\u00e1 v\u00e1lido durante 5 minutos."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aV:Lcom/paypal/android/sdk/em;

    const-string v2, "Enviando mensaje de texto"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aW:Lcom/paypal/android/sdk/em;

    const-string v2, "Ingrese el c\u00f3digo de seguridad de 6 d\u00edgitos."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aX:Lcom/paypal/android/sdk/em;

    const-string v2, "Su tel\u00e9fono m\u00f3vil"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aY:Lcom/paypal/android/sdk/em;

    const-string v2, "Enviar mensaje de texto"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aZ:Lcom/paypal/android/sdk/em;

    const-string v2, "Enviar mensaje de texto de nuevo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ba:Lcom/paypal/android/sdk/em;

    const-string v2, "No es posible iniciar sesi\u00f3n porque se ha activado la autenticaci\u00f3n de dos factores para la cuenta. Visite el sitio web de PayPal para activar su clave de seguridad."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bb:Lcom/paypal/android/sdk/em;

    const-string v2, "No se permiten los pagos desde este dispositivo."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bc:Lcom/paypal/android/sdk/em;

    const-string v2, "Dispositivo no autorizado"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bd:Lcom/paypal/android/sdk/em;

    const-string v2, "Los pagos a este comercio no se permiten (id. de cliente no v\u00e1lida)."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->be:Lcom/paypal/android/sdk/em;

    const-string v2, "Comercio no v\u00e1lido"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bf:Lcom/paypal/android/sdk/em;

    const-string v2, "Hubo un problema al procesar su pago. Int\u00e9ntelo de nuevo."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bg:Lcom/paypal/android/sdk/em;

    const-string v2, "Origen no reconocido"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bh:Lcom/paypal/android/sdk/em;

    const-string v2, "Lo sentimos"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bi:Lcom/paypal/android/sdk/em;

    const-string v2, "Su pedido"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bj:Lcom/paypal/android/sdk/em;

    const-string v2, "\u00bfEliminar tarjeta?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bk:Lcom/paypal/android/sdk/em;

    const-string v2, "Error en el permiso"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bl:Lcom/paypal/android/sdk/em;

    const-string v2, "Error de conexi\u00f3n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bm:Lcom/paypal/android/sdk/em;

    const-string v2, "Error de inicio de sesi\u00f3n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bn:Lcom/paypal/android/sdk/em;

    const-string v2, "Iniciar sesi\u00f3n con contrase\u00f1a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bo:Lcom/paypal/android/sdk/em;

    const-string v2, "Iniciar sesi\u00f3n con NIP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bp:Lcom/paypal/android/sdk/em;

    const-string v2, "Un momento\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bq:Lcom/paypal/android/sdk/em;

    const-string v2, "Error de pago"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->br:Lcom/paypal/android/sdk/em;

    const-string v2, "Escanear"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bs:Lcom/paypal/android/sdk/em;

    const-string v2, "C\u00f3digo de seguridad incorrecto. Int\u00e9ntelo de nuevo."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bt:Lcom/paypal/android/sdk/em;

    const-string v2, "V\u00eda"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bu:Lcom/paypal/android/sdk/em;

    const-string v2, "Error del sistema. Int\u00e9ntelo de nuevo m\u00e1s tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|AT"

    const-string v2, "Comparta informaci\u00f3n acerca de las <a href=\'%1$s\'>formas de pago</a> asociadas a su cuenta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BE"

    const-string v2, "Comparta la informaci\u00f3n acerca de las <a href=\'%1$s\'>formas de pago</a> asociadas a su cuenta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BG"

    const-string v2, "Comparta las <a href=\'%1$s\'>formas de pago</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CH"

    const-string v2, "Comparta informaci\u00f3n acerca de las <a href=\'%1$s\'>formas de pago</a> asociadas a su cuenta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CY"

    const-string v2, "Comparta las <a href=\'%1$s\'>formas de pago</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CZ"

    const-string v2, "Comparta las <a href=\'%1$s\'>formas de pago</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DE"

    const-string v2, "Comparta informaci\u00f3n acerca de las <a href=\'%1$s\'>formas de pago</a> asociadas a su cuenta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DK"

    const-string v2, "Comparta informaci\u00f3n acerca de las <a href=\'%1$s\'>formas de pago</a> asociadas a su cuenta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|EE"

    const-string v2, "Comparta las <a href=\'%1$s\'>formas de pago</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|ES"

    const-string v2, "Comparta con ellos la informaci\u00f3n acerca de las <a href=\'%1$s\'>formas de pago</a> asociadas a su cuenta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|FI"

    const-string v2, "Comparta las <a href=\'%1$s\'>formas de pago</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GB"

    const-string v2, "Comparta las <a href=\'%1$s\'>formas de pago</a> asociadas a su cuenta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GR"

    const-string v2, "Comparta las <a href=\'%1$s\'>formas de pago</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|HU"

    const-string v2, "Comparta las <a href=\'%1$s\'>formas de pago</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IE"

    const-string v2, "Comparta las <a href=\'%1$s\'>formas de pago</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IT"

    const-string v2, "Comparta las <a href=\'%1$s\'>formas de pago</a> asociadas a su cuenta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LI"

    const-string v2, "Comparta las <a href=\'%1$s\'>formas de pago</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LT"

    const-string v2, "Comparta las <a href=\'%1$s\'>formas de pago</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LU"

    const-string v2, "Comparta las <a href=\'%1$s\'>formas de pago</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LV"

    const-string v2, "Comparta las <a href=\'%1$s\'>formas de pago</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|MT"

    const-string v2, "Comparta las <a href=\'%1$s\'>formas de pago</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NL"

    const-string v2, "Comparta la informaci\u00f3n acerca de las <a href=\'%1$s\'>formas de pago</a> asociadas a su cuenta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NO"

    const-string v2, "Comparta informaci\u00f3n acerca de las <a href=\'%1$s\'>formas de pago</a> asociadas a su cuenta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PL"

    const-string v2, "Comparta la informaci\u00f3n acerca de las <a href=\'%1$s\'>formas de pago</a> asociadas a su cuenta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PT"

    const-string v2, "Comparta las <a href=\'%1$s\'>formas de pago</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SE"

    const-string v2, "Comparta informaci\u00f3n acerca de las <a href=\'%1$s\'>formas de pago</a> asociadas a su cuenta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SI"

    const-string v2, "Comparta las <a href=\'%1$s\'>formas de pago</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SK"

    const-string v2, "Comparta las <a href=\'%1$s\'>formas de pago</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SM"

    const-string v2, "Comparta las <a href=\'%1$s\'>formas de pago</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|VA"

    const-string v2, "Comparta las <a href=\'%1$s\'>formas de pago</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|AU"

    const-string v2, "<p><a href=\'%1$s\'>Autorizar cargos</a> correspondientes a futuras compras en %2$s pagadas con PayPal. Le instruye a PayPal de pagar todos los importes solicitados por %3$s.</p><p>Consulte los <a href=\'https://www.paypal.com/webapps/mpp/ua/recurringpymts-full\'>Pagos recurrentes de PayPal y el Acuerdo de pagos</a> para obtener m\u00e1s informaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|CN"

    const-string v2, "<p><a href=\'%1$s\'>Autorizar cargos</a> correspondientes a futuras compras en %2$s pagadas con PayPal. Le instruye a PayPal de pagar todos los importes solicitados por %3$s.</p><p>Consulte los <a href=\'https://cms.paypal.com/c2/cgi-bin/?cmd=_render-content&content_ID=ua/UserAgreement_full\'>Pagos recurrentes de PayPal y el Acuerdo de pagos</a> para obtener m\u00e1s informaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|MY"

    const-string v2, "<a href=\'%1$s\'>Autorice cargos</a> para compras futuras realizadas con PayPal. Autorice y d\u00e9 instrucciones a PayPal para que pague todos los importes."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|NZ"

    const-string v2, "<a href=\'%1$s\'>Autorice cargos</a> para compras futuras realizadas con PayPal. Autorice y d\u00e9 instrucciones a PayPal para que pague todos los importes."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|SG"

    const-string v2, "<a href=\'%1$s\'>Autorice cargos</a> para compras futuras realizadas con PayPal. Autorice y d\u00e9 instrucciones a PayPal para que pague todos los importes."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|US"

    const-string v2, "Preapruebe pagos futuros realizados desde su cuenta PayPal sin tener que identificarse en PayPal cada vez. <a href=\'%1$s\'>Consulte los t\u00e9rminos adicionales</a>, incluidas las formas de pago y c\u00f3mo cancelar pagos futuros."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|AT"

    const-string v2, "Le permita a %2$s <a href=\'%1$s\'>solicitar pagos</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|BE"

    const-string v2, "Le permita a %2$s <a href=\'%1$s\'>solicitar pagos</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|CH"

    const-string v2, "Le permita a %2$s <a href=\'%1$s\'>solicitar pagos</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|DE"

    const-string v2, "Le permita a %2$s <a href=\'%1$s\'>solicitar pagos</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|GB"

    const-string v2, "Le permita a %2$s <a href=\'%1$s\'>solicitar pagos</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|NL"

    const-string v2, "Le permita a %2$s <a href=\'%1$s\'>solicitar pagos</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|PL"

    const-string v2, "Le permita a %2$s <a href=\'%1$s\'>solicitar pagos</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|AT"

    const-string v2, "Le permita a %2$s <a href=\'%1$s\'>enviar pagos</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|BE"

    const-string v2, "Le permita a %2$s <a href=\'%1$s\'>enviar pagos</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|CH"

    const-string v2, "Le permita a %2$s <a href=\'%1$s\'>enviar pagos</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|DE"

    const-string v2, "Le permita a %2$s <a href=\'%1$s\'>enviar pagos</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|GB"

    const-string v2, "Le permita a %2$s <a href=\'%1$s\'>enviar pagos</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|NL"

    const-string v2, "Le permita a %2$s <a href=\'%1$s\'>enviar pagos</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|PL"

    const-string v2, "Le permita a %2$s <a href=\'%1$s\'>enviar pagos</a> en su nombre hasta que usted retire dicho permiso."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte informaci\u00f3n sobre qu\u00e9 formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte informaci\u00f3n sobre qu\u00e9 formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte informaci\u00f3n sobre qu\u00e9 formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>Formas de pago</strong></h1><p>PayPal solo comparte las formas de pago que est\u00e1n disponibles para su utilizaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>Acuerdo de pago futuro</strong></h1><p>Para asegurarse de que se puedan hacer cargos en su cuenta PayPal en el futuro, esta aplicaci\u00f3n podr\u00eda simular una peque\u00f1a transacci\u00f3n de prueba, pero no se transferir\u00e1 dinero alguno.</p><p>Su forma de pago predeterminada (su saldo PayPal, cuenta bancaria asociada, tarjeta de d\u00e9bito o tarjeta de cr\u00e9dito, en ese orden) se utilizar\u00e1 para pagar sus compras de PayPal. Tenga en cuenta que si su forma de pago predeterminada no tiene suficientes fondos para cubrir la compra, su banco o el proveedor de su tarjeta podr\u00edan cobrarle una comisi\u00f3n.</p><p>Para cancelar este acuerdo, inicie sesi\u00f3n en su cuenta PayPal y vaya a <strong>Perfil</strong>, luego haga clic en <strong>Mi configuraci\u00f3n</strong> y <strong>Cambiar</strong> junto a \u00abIniciar sesi\u00f3n con PayPal\u00bb.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|BR"

    const-string v2, "<h1><strong>Acuerdo de pago futuro</strong></h1><p>Para asegurarse de que se puedan hacer cargos en su cuenta PayPal en el futuro, esta aplicaci\u00f3n podr\u00eda simular una peque\u00f1a transacci\u00f3n de prueba, pero no se transferir\u00e1 dinero alguno.</p><p>Su saldo PayPal o tarjeta de d\u00e9bito o cr\u00e9dito principal se utilizar\u00e1n para pagar sus compras de PayPal.</p><p>Para cancelar este acuerdo, inicie sesi\u00f3n en su cuenta PayPal, vaya a <strong>Perfil</strong> &gt; <strong>Mi configuraci\u00f3n</strong> &gt; <strong>Iniciar sesi\u00f3n con PayPal</strong> y eliminar a este comercio de la lista.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|CN"

    const-string v2, "<h1><strong>Acuerdo de pago futuro</strong></h1><p>Para asegurarse de que se puedan hacer cargos en su cuenta PayPal en el futuro, esta aplicaci\u00f3n podr\u00eda simular una peque\u00f1a transacci\u00f3n de prueba, pero no se transferir\u00e1 pago alguno.</p><p>Su forma de pago predeterminada se utilizar\u00e1 para pagar las compras de PayPal.</p><p>Para cancelar este acuerdo, inicie sesi\u00f3n en su cuenta PayPal, vaya a <strong>Perfil</strong> &gt; <strong>Configuraci\u00f3n</strong> &gt; <strong>Iniciar sesi\u00f3n con PayPal</strong> y eliminar a este comercio de la lista.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>Acuerdo de pagos futuros</strong></h1><p>Su forma de pago predeterminada se utilizar\u00e1 para realizar futuros pagos con PayPal de este vendedor.</p><p>Para cancelar este acuerdo, inicie sesi\u00f3n en su cuenta PayPal, vaya a <strong>Perfil</strong> &gt; <strong>Mi configuraci\u00f3n</strong> &gt; <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio de la lista.</p><p>Aplicar\u00e1 el art\u00edculo Pagos recurrentes de las <a href=\'%s\'>Condiciones de uso de PayPal</a>.</p><p>Para asegurarse de que los pagos con tu cuenta PayPal funcionen correctamente, esta aplicaci\u00f3n puede simular una peque\u00f1a transacci\u00f3n de prueba, pero no se transferir\u00e1 dinero.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|HK"

    const-string v2, "<h1><strong>Autorizaci\u00f3n de pago futuro</strong></h1><p>Para asegurarse de que se puedan hacer cargos en su cuenta PayPal en el futuro, esta aplicaci\u00f3n podr\u00eda simular una peque\u00f1a transacci\u00f3n de prueba, pero no se transferir\u00e1 pago alguno.</p><p>Su forma de pago predeterminada se utilizar\u00e1 para pagar las compras de PayPal.</p><p>Para cancelar esta autorizaci\u00f3n, inicie sesi\u00f3n en su cuenta PayPal, vaya a <strong>Perfil</strong> &gt; <strong>Configuraci\u00f3n de mi cuenta</strong> &gt; <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio de la lista.</p><p>Consulte la secci\u00f3n \u00abPagos preaprobados\u00bb de las <a href=\'%s\'>Condiciones de uso de PayPal</a> para obtener m\u00e1s informaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|JP"

    const-string v2, "<h1><strong>Autorizaci\u00f3n de pago futuro</strong></h1><p>Para asegurarse de que se puedan hacer cargos en su cuenta PayPal en el futuro, esta aplicaci\u00f3n podr\u00eda simular una peque\u00f1a transacci\u00f3n de prueba, pero no se transferir\u00e1 pago alguno.</p><p>Su forma de pago predeterminada se utilizar\u00e1 para pagar las compras de PayPal.</p><p>Para cancelar esta autorizaci\u00f3n, inicie sesi\u00f3n en su cuenta PayPal, vaya a <strong>Perfil</strong> &gt; <strong>Configuraci\u00f3n de mi cuenta</strong> &gt; <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio de la lista.</p><p>Consulte el art\u00edculo \u00abPagos preaprobados\u00bb de las <a href=\'%s\'>Condiciones de uso de PayPal</a> para obtener m\u00e1s informaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MX"

    const-string v2, "<h1><strong>Acuerdo de pago futuro</strong></h1><p>Para asegurarse de que se puedan hacer cargos en su cuenta PayPal en el futuro, esta aplicaci\u00f3n podr\u00eda simular una peque\u00f1a transacci\u00f3n de prueba, pero no se transferir\u00e1 dinero alguno.</p><p>Su saldo PayPal o tarjeta de d\u00e9bito o cr\u00e9dito principal se utilizar\u00e1n para pagar sus compras de PayPal.</p><p>Para cancelar este acuerdo, inicie sesi\u00f3n en su cuenta PayPal, vaya a <strong>Perfil</strong> &gt; <strong>Mi configuraci\u00f3n</strong> &gt; <strong>Iniciar sesi\u00f3n con PayPal</strong> y eliminar a este comercio de la lista.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MY"

    const-string v2, "<h1><strong>Autorizaci\u00f3n de pago futuro</strong></h1><p>Para asegurarse de que se puedan hacer cargos en su cuenta PayPal en el futuro, esta aplicaci\u00f3n podr\u00eda simular una peque\u00f1a transacci\u00f3n de prueba, pero no se transferir\u00e1 pago alguno.</p><p>Su forma de pago predeterminada se utilizar\u00e1 para pagar las compras de PayPal.</p><p>Para cancelar esta autorizaci\u00f3n, inicie sesi\u00f3n en su cuenta PayPal, vaya a <strong>Perfil</strong> &gt; <strong>Configuraci\u00f3n de mi cuenta</strong> &gt; <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio de la lista.</p><p>Consulte la secci\u00f3n \u00abPagos preaprobados\u00bb de las <a href=\'%s\'>Condiciones de uso de PayPal</a> para obtener m\u00e1s informaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|NZ"

    const-string v2, "<h1><strong>Autorizaci\u00f3n de pago futuro</strong></h1><p>Para asegurarse de que se puedan hacer cargos en su cuenta PayPal en el futuro, esta aplicaci\u00f3n podr\u00eda simular una peque\u00f1a transacci\u00f3n de prueba, pero no se transferir\u00e1 pago alguno.</p><p>Su forma de pago predeterminada se utilizar\u00e1 para pagar las compras de PayPal.</p><p>Para cancelar esta autorizaci\u00f3n, inicie sesi\u00f3n en su cuenta PayPal, vaya a <strong>Perfil</strong> &gt; <strong>Configuraci\u00f3n de mi cuenta</strong> &gt; <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio de la lista.</p><p>Consulte la secci\u00f3n \u00abPagos preaprobados\u00bb de las <a href=\'%s\'>Condiciones de uso de PayPal</a> para obtener m\u00e1s informaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|SG"

    const-string v2, "<h1><strong>Autorizaci\u00f3n de pago futuro</strong></h1><p>Para asegurarse de que se puedan hacer cargos en su cuenta PayPal en el futuro, esta aplicaci\u00f3n podr\u00eda simular una peque\u00f1a transacci\u00f3n de prueba, pero no se transferir\u00e1 pago alguno.</p><p>Su forma de pago predeterminada se utilizar\u00e1 para pagar las compras de PayPal.</p><p>Para cancelar esta autorizaci\u00f3n, inicie sesi\u00f3n en su cuenta PayPal, vaya a <strong>Perfil</strong> &gt; <strong>Configuraci\u00f3n de mi cuenta</strong> &gt; <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio de la lista.</p><p>Consulte la secci\u00f3n \u00abPagos preaprobados\u00bb de las <a href=\'%s\'>Condiciones de uso de PayPal</a> para obtener m\u00e1s informaci\u00f3n.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>Acuerdo de pago futuro</strong></h1><p>PayPal utilizar\u00e1 primero el saldo de su cuenta PayPal para pagar su compra. Si el saldo no cubre el total, se utilizar\u00e1n las siguientes formas de pago en este orden: cuenta bancaria, PayPal Credit, tarjeta de d\u00e9bito, tarjeta de cr\u00e9dito y/o eCheck.</p><p>Para cancelar este acuerdo, vaya a www.paypal.com <strong>Perfil</strong> &gt; <strong>Mi configuraci\u00f3n</strong> &gt; <strong>Iniciar sesi\u00f3n con PayPal</strong> y eliminar a este comercio de la lista.</p><p>Se puede requerir la autorizaci\u00f3n de un peque\u00f1o pago para garantizar que se puedan hacer cargos en su cuenta PayPal en el futuro. La autorizaci\u00f3n se anular\u00e1 y no se le har\u00e1 ning\u00fan cobro.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|AU"

    const-string v2, "Iniciar sesi\u00f3n con Paypal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|GB"

    const-string v2, "Iniciar sesi\u00f3n con Paypal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AD"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el partner.</p><p>Para retirar el permiso, inicie sesi\u00f3n en su cuenta PayPal y haga clic en el icono del engrane. Vaya a <strong>Seguridad</strong>, seleccione <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este partner.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el partner.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a las opciones <strong>Iniciar sesi\u00f3n con PayPal</strong> en la secci\u00f3n de configuraci\u00f3n del <strong>Perfil</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el partner.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en su cuenta PayPal y luego vaya a las opciones <strong>Iniciar sesi\u00f3n con PayPal</strong> en la secci\u00f3n de configuraci\u00f3n de su <strong>Perfil</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el partner.</p><p>Para retirar el permiso, inicie sesi\u00f3n en su cuenta PayPal y haga clic en el icono del engrane. Vaya a <strong>Seguridad</strong>, seleccione <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este partner.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el partner.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el partner.</p><p>Para retirar el permiso, inicie sesi\u00f3n en su cuenta PayPal y haga clic en el icono del engrane. Vaya a <strong>Seguridad</strong>, seleccione <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este partner.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el partner.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DK"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en su cuenta PayPal y luego vaya a las opciones <strong>Iniciar sesi\u00f3n con PayPal</strong> en la secci\u00f3n de configuraci\u00f3n del <strong>Perfil</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en su cuenta PayPal, haga clic en el icono del engrane situado en el extremo superior derecho de la pantalla, elija <strong>Centro de Seguridad</strong>, seleccione <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine al comercio. Si todav\u00eda est\u00e1 utilizando el sitio web cl\u00e1sico, vaya a <strong>Mi perfil</strong>, seleccione <strong>La configuraci\u00f3n de mi cuenta</strong>, luego seleccione <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine al comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el partner.</p><p>Para retirar el permiso, inicie sesi\u00f3n en su cuenta PayPal, luego, en la configuraci\u00f3n de <strong>Perfil</strong> vaya a <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este partner.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el partner.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IS"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.it y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en su cuenta PayPal y luego vaya a las opciones <strong>Iniciar sesi\u00f3n con PayPal</strong> en la secci\u00f3n de configuraci\u00f3n de su <strong>Perfil</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NO"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en su cuenta PayPal y luego vaya a las opciones <strong>Iniciar sesi\u00f3n con PayPal</strong> en la secci\u00f3n de configuraci\u00f3n del <strong>Perfil</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en su cuenta PayPal y luego vaya a las opciones <strong>Iniciar sesi\u00f3n con PayPal</strong> en la secci\u00f3n de configuraci\u00f3n de su <strong>Perfil</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RO"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el partner.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.ru, haga clic en el icono del engrane situado en el extremo superior derecho de la pantalla, elija la pesta\u00f1a <strong>Seguridad</strong> y en la opci\u00f3n <strong>Iniciar sesi\u00f3n con PayPal</strong> elimine a este partner.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el partner.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en su cuenta PayPal y luego vaya a las opciones <strong>Iniciar sesi\u00f3n con PayPal</strong> en la secci\u00f3n de configuraci\u00f3n del <strong>Perfil</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|TR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com.tr, haga clic en el icono del engrane situado en el extremo superior derecho de la pantalla, elija la pesta\u00f1a <strong>Seguridad</strong> y en la opci\u00f3n <strong>Iniciar sesi\u00f3n con PayPal</strong> elimine a este partner.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|UA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a las opciones <strong>Iniciar sesi\u00f3n con PayPal</strong> en la secci\u00f3n de configuraci\u00f3n del <strong>Perfil</strong> y elimine a este comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ZA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Todos los detalles relevantes de la transacci\u00f3n se compartir\u00e1n con el comercio.</p><p>Para retirar el permiso, inicie sesi\u00f3n en paypal.com y luego vaya a <strong>Perfil</strong>, <strong>Seguridad</strong>; encuentre <strong>Iniciar sesi\u00f3n con PayPal</strong> y elimine a este comercio.</p><p>PayPal no se responsabiliza de ninguna acci\u00f3n o error cometido por el comercio.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "AMOUNT_MISMATCH"

    const-string v2, "El importe total de los art\u00edculos del carrito no coincide con el importe de la venta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ALREADY_COMPLETED"

    const-string v2, "Ya se realiz\u00f3 esta autorizaci\u00f3n."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_CANNOT_BE_VOIDED"

    const-string v2, "La autorizaci\u00f3n est\u00e1 en un estado que no se puede anular."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_EXPIRED"

    const-string v2, "La autorizaci\u00f3n ha caducado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ID_DOES_NOT_EXIST"

    const-string v2, "El Id. de la autorizaci\u00f3n solicitada no existe."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_VOIDED"

    const-string v2, "La autorizaci\u00f3n se ha anulado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_CHILD_AUTHORIZATION"

    const-string v2, "Solo puede volver a aprobar la autorizaci\u00f3n original; no una nueva autorizaci\u00f3n."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_INSIDE_HONOR_PERIOD"

    const-string v2, "No se permite la nueva autorizaci\u00f3n en el per\u00edodo de tramitaci\u00f3n."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "CAPTURE_AMOUNT_LIMIT_EXCEEDED"

    const-string v2, "El importe supera el l\u00edmite aceptable."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "CARD_TOKEN_PAYER_MISMATCH"

    const-string v2, "No puede acceder a la informaci\u00f3n de la tarjeta guardada."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_CVV_CHECK_FAILED"

    const-string v2, "Los datos de la tarjeta no son v\u00e1lidos. Corr\u00edjala y env\u00edela de nuevo."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_REFUSED"

    const-string v2, "Tarjeta declinada."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_MISMATCH"

    const-string v2, "La divisa de la captura debe ser igual que la divisa de la autorizaci\u00f3n."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_NOT_ALLOWED"

    const-string v2, "Esta divisa no es compatible actualmente con PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "DATA_RETRIEVAL"

    const-string v2, "Error del sistema. Int\u00e9ntelo de nuevo m\u00e1s tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_REQUEST_ID"

    const-string v2, "Error del sistema. Int\u00e9ntelo de nuevo m\u00e1s tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD"

    const-string v2, "La tarjeta ha vencido"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD_TOKEN"

    const-string v2, "Los datos de esta tarjeta ya no est\u00e1n registrados.\nEnv\u00edelos nuevamente."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "FEATURE_UNSUPPORTED_FOR_PAYEE"

    const-string v2, "Funci\u00f3n no disponible para este vendedor."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "FULL_REFUND_NOT_ALLOWED_AFTER_PARTIAL_REFUND"

    const-string v2, "Esta transacci\u00f3n se ha reembolsado parcialmente."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "IMMEDIATE_PAY_NOT_SUPPORTED"

    const-string v2, "Pago inmediato no compatible con la finalidad transmitida."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "INSTRUMENT_DECLINED"

    const-string v2, "No se ha aceptado la forma de pago seleccionada. Seleccione otra forma de pago."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "INSUFFICIENT_FUNDS"

    const-string v2, "El comprador no puede pagar - saldo insuficiente."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "INTERNAL_SERVICE_ERROR"

    const-string v2, "Error del sistema. Int\u00e9ntelo de nuevo m\u00e1s tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "INVALID_ACCOUNT_NUMBER"

    const-string v2, "Ese n\u00famero de cuenta no existe."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "INVALID_ARGUMENT"

    const-string v2, "La transacci\u00f3n se declin\u00f3 debido a un argumento no v\u00e1lido"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "INVALID_CITY_STATE_ZIP"

    const-string v2, "Combinaci\u00f3n de ciudad/estado/c\u00f3digo postal no v\u00e1lida."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "INVALID_FACILITATOR_CONFIGURATION"

    const-string v2, "Esta transacci\u00f3n no puede procesarse debido a una configuraci\u00f3n no v\u00e1lida del facilitador."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "INVALID_PAYER_ID"

    const-string v2, "Error del sistema (la id. del pagador no es v\u00e1lida). Int\u00e9ntelo de nuevo m\u00e1s tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "INVALID_RESOURCE_ID"

    const-string v2, "Error del sistema. Int\u00e9ntelo de nuevo m\u00e1s tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_INVALID"

    const-string v2, "La cuenta del proveedor no tiene un correo electr\u00f3nico confirmado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "Este proveedor no puede recibir pagos por el momento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_NO_CONFIRMED_EMAIL"

    const-string v2, "La cuenta del proveedor no tiene un correo electr\u00f3nico confirmado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_RESTRICTED"

    const-string v2, "Este proveedor no puede recibir pagos por el momento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "Su cuenta est\u00e1 bloqueada o cerrada."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_RESTRICTED"

    const-string v2, "Su cuenta est\u00e1 restringida."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYER_CANNOT_PAY"

    const-string v2, "No puede pagar esta transacci\u00f3n con PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYER_EMPTY_BILLING_ADDRESS"

    const-string v2, "La direcci\u00f3n de facturaci\u00f3n es obligatoria para las transacciones con tarjetas de cr\u00e9dito que no sean de PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYER_ID_MISSING_FOR_CARD_TOKEN"

    const-string v2, "No puede acceder a la informaci\u00f3n de la tarjeta guardada."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_APPROVAL_EXPIRED"

    const-string v2, "La aprobaci\u00f3n del pago ha vencido."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_EXPIRED"

    const-string v2, "El pago ha vencido."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_NOT_APPROVED_FOR_EXECUTION"

    const-string v2, "El pagador no ha aprobado el pago."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_REQUEST_ID_INVALID"

    const-string v2, "El Id. de la solicitud de PayPal no es v\u00e1lido. Int\u00e9ntelo de nuevo m\u00e1s tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_STATE_INVALID"

    const-string v2, "Esta solicitud no es v\u00e1lida debido al estado actual del pago."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PERMISSION_DENIED"

    const-string v2, "No hay permiso para la operaci\u00f3n solicitada."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "REFUND_EXCEEDED_TRANSACTION_AMOUNT"

    const-string v2, "El reembolso solicitado supera el importe de la transacci\u00f3n original."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "REFUND_TIME_LIMIT_EXCEEDED"

    const-string v2, "Esta transacci\u00f3n es muy antigua para reembolsarse."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "REQUIRED_SCOPE_MISSING"

    const-string v2, "Error del sistema. Int\u00e9ntelo de nuevo m\u00e1s tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "TOO_MANY_REAUTHORIZATIONS"

    const-string v2, "No se permiten nuevas autorizaciones para esta autorizaci\u00f3n."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_ALREADY_REFUNDED"

    const-string v2, "El importe de esta transacci\u00f3n ya se ha reembolsado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_LIMIT_EXCEEDED"

    const-string v2, "El importe supera el l\u00edmite aceptable."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED"

    const-string v2, "La transacci\u00f3n se ha declinado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_BY_PAYPAL_RISK"

    const-string v2, "La transacci\u00f3n se ha declinado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_PAYEE_PREFERENCE"

    const-string v2, "Hay una preferencia de perfil definida para rechazar autom\u00e1ticamente todas las transacciones."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "UNKNOWN_ERROR"

    const-string v2, "Error del sistema. Int\u00e9ntelo de nuevo m\u00e1s tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "UNSUPPORTED_PAYEE_COUNTRY"

    const-string v2, "No disponible en su pa\u00eds."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "VALIDATION_ERROR"

    const-string v2, "La informaci\u00f3n de pago no es v\u00e1lida. Corr\u00edjala y env\u00edela de nuevo."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "ORDER_ALREADY_COMPLETED"

    const-string v2, "El pedido ya fue anulado, ha caducado o fue realizado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "MAXIMUM_ALLOWED_AUTHORIZATION_REACHED_FOR_ORDER"

    const-string v2, "Se ha llegado al n\u00famero m\u00e1ximo de autorizaciones permitidas para el pedido."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "ORDER_VOIDED"

    const-string v2, "El pedido se ha anulado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "ORDER_CANNOT_BE_VOIDED"

    const-string v2, "El pedido est\u00e1 en un estado que previene la anulaci\u00f3n."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "INVALID_EXPERIENCE_PROFILE_ID"

    const-string v2, "Error del sistema. Int\u00e9ntelo de nuevo m\u00e1s tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "UNAUTHORIZED_PAYMENT"

    const-string v2, "El comercio no acepta este tipo de pagos."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "DCC_UNSUPPORTED_CURRENCY_CC_TYPE"

    const-string v2, "Divisa no compatible para el tipo de tarjeta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "DCC_CC_TYPE_NOT_SUPPORTED"

    const-string v2, "Tipo de tarjeta no compatible."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "ADDRESS_ADDITION_ERROR"

    const-string v2, "Error encontrado al agregar direcci\u00f3n de env\u00edo a cuenta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_TRANSACTION"

    const-string v2, "Transacci\u00f3n duplicada."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "INVALID_SHIPPING_ADDRESS"

    const-string v2, "La direcci\u00f3n de env\u00edo suministrada no es v\u00e1lida."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR"

    const-string v2, "Se ha producido un problema al configurar este pago. Visite el sitio web de PayPal para revisar su cuenta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_EXPIRED_PAYMENT_CARD"

    const-string v2, "Se ha producido un problema al configurar este pago: su tarjeta ha vencido. Visite el sitio web de PayPal para revisar su cuenta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_INSTANT_PAYMENT_REQUIRED"

    const-string v2, "Se ha producido un problema al configurar este pago: se requiere un pago instant\u00e1neo, como una tarjeta de cr\u00e9dito. Visite el sitio web de PayPal para revisar su cuenta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_CONFIRMED_CARD"

    const-string v2, "Se ha producido un problema al configurar este pago: la tarjeta debe estar confirmada. Visite el sitio web de PayPal para revisar su cuenta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_PHONE_NUMBER"

    const-string v2, "Se ha producido un problema al configurar este pago: esta aplicaci\u00f3n requiere que su cuenta incluya un n\u00famero de tel\u00e9fono. Visite el sitio web de PayPal para revisar su cuenta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_VALID_FUNDING_INSTRUMENT"

    const-string v2, "Se ha producido un problema al configurar este pago: la cuenta necesita una forma de pago v\u00e1lida, como una cuenta bancaria o tarjeta de pago. Visite el sitio web de PayPal para revisar su cuenta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEGATIVE_BALANCE"

    const-string v2, "Se ha producido un problema al configurar este pago: su saldo es negativo. Visite el sitio web de PayPal para revisar su cuenta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_SENDING_LIMIT_REACHED"

    const-string v2, "Se ha producido un problema al configurar este pago: ha alcanzado su l\u00edmite de env\u00edo. Visite el sitio web de PayPal para revisar su cuenta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_RISK_FAILURE"

    const-string v2, "Declinado debido a riesgo."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_OFAC_BLOCKED_IP"

    const-string v2, "Cliente no autorizado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_IP_COMPLIANCE_FAILURE"

    const-string v2, "Cliente no autorizado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "invalid_user"

    const-string v2, "Nombre de usuario o contrase\u00f1a incorrectos. Int\u00e9ntelo de nuevo."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "locked_user"

    const-string v2, "Su cuenta PayPal ha sido bloqueada temporalmente. Int\u00e9ntelo de nuevo m\u00e1s tarde o visite www.paypal.com para desbloquear inmediatamente su cuenta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "max_attempts_exceeded"

    const-string v2, "Demasiados intentos fallidos de inicio de sesi\u00f3n. Int\u00e9ntelo de nuevo m\u00e1s tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "invalid_request"

    const-string v2, "Ha habido un error."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "unauthorized_client"

    const-string v2, "Solicitud no autorizada."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "access_denied"

    const-string v2, "Solicitud no autorizada."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "unsupported_response_type"

    const-string v2, "Ha habido un error."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "invalid_scope"

    const-string v2, "Solicitud no autorizada."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "server_error"

    const-string v2, "Error del sistema. Int\u00e9ntelo de nuevo m\u00e1s tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "temporarily_unavailable"

    const-string v2, "Error del sistema. Int\u00e9ntelo de nuevo m\u00e1s tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    const-string v1, "stepup_required"

    const-string v2, "El inicio de sesi\u00f3n no se puede completar en este momento. Int\u00e9ntelo de nuevo m\u00e1s tarde o visite www.paypal.com para tratar cualquier problema de seguridad relacionado con su cuenta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "es_MX"

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    check-cast p1, Lcom/paypal/android/sdk/em;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/em;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/paypal/android/sdk/gh;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/paypal/android/sdk/gh;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/gh;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
