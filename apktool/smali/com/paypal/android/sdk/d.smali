.class public final Lcom/paypal/android/sdk/d;
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

    sput-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->a:Lcom/paypal/android/sdk/em;

    const-string v2, "Concordar e pagar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->b:Lcom/paypal/android/sdk/em;

    const-string v2, "& outros"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->c:Lcom/paypal/android/sdk/em;

    const-string v2, "A autenticar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->d:Lcom/paypal/android/sdk/em;

    const-string v2, "Voltar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->e:Lcom/paypal/android/sdk/em;

    const-string v2, "Reserva"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->f:Lcom/paypal/android/sdk/em;

    const-string v2, "Cancelar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->g:Lcom/paypal/android/sdk/em;

    const-string v2, "American Express"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->h:Lcom/paypal/android/sdk/em;

    const-string v2, "Carta Aura"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->i:Lcom/paypal/android/sdk/em;

    const-string v2, "Carte Aurore"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->j:Lcom/paypal/android/sdk/em;

    const-string v2, "Carta Prepagata PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->k:Lcom/paypal/android/sdk/em;

    const-string v2, "Carte Bancaire"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->l:Lcom/paypal/android/sdk/em;

    const-string v2, "Cofinoga"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->m:Lcom/paypal/android/sdk/em;

    const-string v2, "Delta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->n:Lcom/paypal/android/sdk/em;

    const-string v2, "Discover"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->o:Lcom/paypal/android/sdk/em;

    const-string v2, "Electron"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->p:Lcom/paypal/android/sdk/em;

    const-string v2, "JCB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->q:Lcom/paypal/android/sdk/em;

    const-string v2, "Maestro"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->r:Lcom/paypal/android/sdk/em;

    const-string v2, "MasterCard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->s:Lcom/paypal/android/sdk/em;

    const-string v2, "Postepay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->t:Lcom/paypal/android/sdk/em;

    const-string v2, "4 \u00e9toiles"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->u:Lcom/paypal/android/sdk/em;

    const-string v2, "Tarjeta Aurora"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->v:Lcom/paypal/android/sdk/em;

    const-string v2, "Visa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->w:Lcom/paypal/android/sdk/em;

    const-string v2, "Alterar meio de pagamento"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->x:Lcom/paypal/android/sdk/em;

    const-string v2, "Corrente"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->y:Lcom/paypal/android/sdk/em;

    const-string v2, "A verificar o dispositivo\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->z:Lcom/paypal/android/sdk/em;

    const-string v2, "Apagar informa\u00e7\u00f5es do cart\u00e3o"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->A:Lcom/paypal/android/sdk/em;

    const-string v2, "Confirmar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->B:Lcom/paypal/android/sdk/em;

    const-string v2, "Tem a certeza de que pretende apagar os dados do seu cart\u00e3o?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->C:Lcom/paypal/android/sdk/em;

    const-string v2, "Debitar no cart\u00e3o"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->D:Lcom/paypal/android/sdk/em;

    const-string v2, "Tem a certeza de que pretende terminar a sess\u00e3o no PayPal?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->E:Lcom/paypal/android/sdk/em;

    const-string v2, "Pagar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->F:Lcom/paypal/android/sdk/em;

    const-string v2, "Concordo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->G:Lcom/paypal/android/sdk/em;

    const-string v2, "Data de cria\u00e7\u00e3o da conta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->H:Lcom/paypal/android/sdk/em;

    const-string v2, "Estado da conta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->I:Lcom/paypal/android/sdk/em;

    const-string v2, "Tipo de conta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->J:Lcom/paypal/android/sdk/em;

    const-string v2, "Morada"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->K:Lcom/paypal/android/sdk/em;

    const-string v2, "Faixa et\u00e1ria"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->L:Lcom/paypal/android/sdk/em;

    const-string v2, "Data de nascimento"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->M:Lcom/paypal/android/sdk/em;

    const-string v2, "Endere\u00e7o de e-mail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->N:Lcom/paypal/android/sdk/em;

    const-string v2, "Nome completo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->O:Lcom/paypal/android/sdk/em;

    const-string v2, "Sexo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->P:Lcom/paypal/android/sdk/em;

    const-string v2, "Idioma"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->Q:Lcom/paypal/android/sdk/em;

    const-string v2, "Local"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->R:Lcom/paypal/android/sdk/em;

    const-string v2, "Telefone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->S:Lcom/paypal/android/sdk/em;

    const-string v2, "Fuso hor\u00e1rio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->T:Lcom/paypal/android/sdk/em;

    const-string v2, "Partilhar o seguinte: %s."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->U:Lcom/paypal/android/sdk/em;

    const-string v2, "Usar Express Checkout."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->V:Lcom/paypal/android/sdk/em;

    const-string v2, "%s pede-lhe para:"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->W:Lcom/paypal/android/sdk/em;

    const-string v2, "Partilhar os <a href=\'%1$s\'>meios de pagamento</a> associados \u00e0 sua conta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->X:Lcom/paypal/android/sdk/em;

    const-string v2, "Ativar a exibi\u00e7\u00e3o das suas op\u00e7\u00f5es de financiamento para que possa fazer uma escolha."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->Y:Lcom/paypal/android/sdk/em;

    const-string v2, "<a href=\'%1$s\'>Autorizar d\u00e9bitos</a> para compras futuras feitas em %2$s pagas com PayPal. Est\u00e1 a dar ao PayPal instru\u00e7\u00f5es para pagar todos os montantes solicitados por %3$s."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->Z:Lcom/paypal/android/sdk/em;

    const-string v2, "Permitir que adicionem e fa\u00e7am a gest\u00e3o do respetivo cart\u00e3o de fideliza\u00e7\u00e3o na sua carteira PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aa:Lcom/paypal/android/sdk/em;

    const-string v2, "Concordar com a <a href=\'%2$s\'>Pol\u00edtica de Privacidade</a> e o <a href=\'%3$s\'>Contrato do Utilizador</a> de %1$s."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ab:Lcom/paypal/android/sdk/em;

    const-string v2, "Permitir que <a href=\'%1$s\'>solicitem dinheiro</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ac:Lcom/paypal/android/sdk/em;

    const-string v2, "Permitir que <a href=\'%1$s\'>enviem dinheiro</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ad:Lcom/paypal/android/sdk/em;

    const-string v2, "Autorizar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ae:Lcom/paypal/android/sdk/em;

    const-string v2, "E-mail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->af:Lcom/paypal/android/sdk/em;

    const-string v2, "Dados fict\u00edcios"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ag:Lcom/paypal/android/sdk/em;

    const-string v2, "Sandbox"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ah:Lcom/paypal/android/sdk/em;

    const-string v2, "Validade"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ai:Lcom/paypal/android/sdk/em;

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais dos seus meios de pagamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aj:Lcom/paypal/android/sdk/em;

    const-string v2, "Esqueceu-se da palavra-passe?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ak:Lcom/paypal/android/sdk/em;

    const-string v2, "De"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->al:Lcom/paypal/android/sdk/em;

    const-string v2, "De que forma gostaria de financiar os pagamentos futuros a %1$s?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->am:Lcom/paypal/android/sdk/em;

    const-string v2, "<h1><strong>Contrato de Pagamento Futuro</strong></h1><p>A sua fonte de financiamento predefinida ser\u00e1 usada em pagamentos futuros com PayPal efetuados neste comerciante.</p><p>Para cancelar este contrato, inicie a sess\u00e3o na sua conta PayPal, entre em <strong>Perfil</strong> &gt; <strong>As minhas defini\u00e7\u00f5es</strong> &gt; <strong>Iniciar a sess\u00e3o com PayPal</strong> e remova este comerciante da lista.</p><p>Aplica-se a sec\u00e7\u00e3o de Pagamento Peri\u00f3dico do <a href=\'%s\'>Contrato do Utilizador do PayPal</a>.</p><p>Para garantir que os pagamentos s\u00e3o efetuados corretamente com a sua conta PayPal, esta aplica\u00e7\u00e3o poder\u00e1 simular uma pequena transa\u00e7\u00e3o de teste, mas n\u00e3o ser\u00e1 transferido qualquer dinheiro.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->an:Lcom/paypal/android/sdk/em;

    const-string v2, "Erro interno"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ao:Lcom/paypal/android/sdk/em;

    const-string v2, "<p>Ao clicar no bot\u00e3o em baixo, confirmo que concordo com os termos do <a href=\'%1$s\'>Contrato do Utilizador do PayPal</a> e declaro que estou em conformidade com as leis e regulamentos japoneses, inclusive as san\u00e7\u00f5es contra pagamentos \u00e0 Coreia do Norte e ao Ir\u00e3o definidas na <a href=\'%2$s\'>Lei do C\u00e2mbio Internacional e Com\u00e9rcio Externo (Foreign Exchange and Foreign Trade Act)</a>, para concluir a transa\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ap:Lcom/paypal/android/sdk/em;

    const-string v2, "Iniciar sess\u00e3o"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aq:Lcom/paypal/android/sdk/em;

    const-string v2, "Iniciar sess\u00e3o com PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ar:Lcom/paypal/android/sdk/em;

    const-string v2, "Terminar sess\u00e3o"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->as:Lcom/paypal/android/sdk/em;

    const-string v2, "Terminar sess\u00e3o"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->at:Lcom/paypal/android/sdk/em;

    const-string v2, "OK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->au:Lcom/paypal/android/sdk/em;

    const-string v2, "Palavra-passe"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->av:Lcom/paypal/android/sdk/em;

    const-string v2, "Pagar ap\u00f3s a entrega"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aw:Lcom/paypal/android/sdk/em;

    const-string v2, "Pagar com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ax:Lcom/paypal/android/sdk/em;

    const-string v2, "Pagar com cart\u00e3o"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ay:Lcom/paypal/android/sdk/em;

    const-string v2, "Saldo PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->az:Lcom/paypal/android/sdk/em;

    const-string v2, "PayPal Credit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aA:Lcom/paypal/android/sdk/em;

    const-string v2, "Telefone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aB:Lcom/paypal/android/sdk/em;

    const-string v2, "PIN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aC:Lcom/paypal/android/sdk/em;

    const-string v2, "Meio de pagamento preferido"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aD:Lcom/paypal/android/sdk/em;

    const-string v2, "O PayPal protege a sua <a href=\'%s\'>privacidade</a> e os seus dados financeiros."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aE:Lcom/paypal/android/sdk/em;

    const-string v2, "A processar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aF:Lcom/paypal/android/sdk/em;

    const-string v2, "Memorizar cart\u00e3o"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aG:Lcom/paypal/android/sdk/em;

    const-string v2, "Solicitar dinheiro"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aH:Lcom/paypal/android/sdk/em;

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre nas op\u00e7\u00f5es <strong>Iniciar sess\u00e3o com PayPal</strong> nas defini\u00e7\u00f5es de <strong>Perfil</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do parceiro.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aI:Lcom/paypal/android/sdk/em;

    const-string v2, "Poupan\u00e7a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aJ:Lcom/paypal/android/sdk/em;

    const-string v2, "Enviar dinheiro"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aK:Lcom/paypal/android/sdk/em;

    const-string v2, "Ocorreu um erro ao comunicar com os servidores do PayPal. Tente novamente."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aL:Lcom/paypal/android/sdk/em;

    const-string v2, "Inicie novamente a sess\u00e3o no PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aM:Lcom/paypal/android/sdk/em;

    const-string v2, "A sess\u00e3o expirou"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aN:Lcom/paypal/android/sdk/em;

    const-string v2, "Morada de envio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aO:Lcom/paypal/android/sdk/em;

    const-string v2, "Novo no PayPal? Criar conta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aP:Lcom/paypal/android/sdk/em;

    const-string v2, "Manter a sess\u00e3o iniciada"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aQ:Lcom/paypal/android/sdk/em;

    const-string v2, "Erro de sistema (%s). Tente novamente mais tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aR:Lcom/paypal/android/sdk/em;

    const-string v2, "Tente novamente"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aS:Lcom/paypal/android/sdk/em;

    const-string v2, "N\u00e3o foi poss\u00edvel iniciar a sess\u00e3o porque a autentica\u00e7\u00e3o de dois factores est\u00e1 ativada na sua conta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aT:Lcom/paypal/android/sdk/em;

    const-string v2, "C\u00f3digo de seguran\u00e7a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aU:Lcom/paypal/android/sdk/em;

    const-string v2, "Envie uma mensagem de texto para o seu telefone. O c\u00f3digo com 6 d\u00edgitos que receber ser\u00e1 v\u00e1lido durante 5 minutos."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aV:Lcom/paypal/android/sdk/em;

    const-string v2, "A enviar mensagem"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aW:Lcom/paypal/android/sdk/em;

    const-string v2, "Introduza o c\u00f3digo com 6 d\u00edgitos"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aX:Lcom/paypal/android/sdk/em;

    const-string v2, "O seu n\u00famero de telem\u00f3vel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aY:Lcom/paypal/android/sdk/em;

    const-string v2, "Enviar mensagem"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->aZ:Lcom/paypal/android/sdk/em;

    const-string v2, "Enviar mensagem novamente"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->ba:Lcom/paypal/android/sdk/em;

    const-string v2, "N\u00e3o foi poss\u00edvel iniciar a sess\u00e3o porque a autentica\u00e7\u00e3o de dois factores est\u00e1 ativada na sua conta. Visite o site do PayPal para ativar a sua chave de seguran\u00e7a."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bb:Lcom/paypal/android/sdk/em;

    const-string v2, "N\u00e3o s\u00e3o permitidos pagamentos com este dispositivo."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bc:Lcom/paypal/android/sdk/em;

    const-string v2, "Dispositivo n\u00e3o autorizado"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bd:Lcom/paypal/android/sdk/em;

    const-string v2, "N\u00e3o s\u00e3o permitidos pagamentos a este comerciante (ID de cliente inv\u00e1lida)."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->be:Lcom/paypal/android/sdk/em;

    const-string v2, "Comerciante inv\u00e1lido"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bf:Lcom/paypal/android/sdk/em;

    const-string v2, "Houve um problema no processamento do seu pagamento. Tente novamente."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bg:Lcom/paypal/android/sdk/em;

    const-string v2, "Fonte n\u00e3o reconhecida"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bh:Lcom/paypal/android/sdk/em;

    const-string v2, "Lamentamos"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bi:Lcom/paypal/android/sdk/em;

    const-string v2, "O seu pedido"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bj:Lcom/paypal/android/sdk/em;

    const-string v2, "Apagar cart\u00e3o?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bk:Lcom/paypal/android/sdk/em;

    const-string v2, "Erro na autoriza\u00e7\u00e3o"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bl:Lcom/paypal/android/sdk/em;

    const-string v2, "Falha na liga\u00e7\u00e3o"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bm:Lcom/paypal/android/sdk/em;

    const-string v2, "Falha de in\u00edcio de sess\u00e3o"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bn:Lcom/paypal/android/sdk/em;

    const-string v2, "Iniciar sess\u00e3o com palavra-passe"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bo:Lcom/paypal/android/sdk/em;

    const-string v2, "Iniciar sess\u00e3o com PIN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bp:Lcom/paypal/android/sdk/em;

    const-string v2, "Aguarde\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bq:Lcom/paypal/android/sdk/em;

    const-string v2, "O pagamento falhou"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->br:Lcom/paypal/android/sdk/em;

    const-string v2, "Ler"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bs:Lcom/paypal/android/sdk/em;

    const-string v2, "C\u00f3digo de seguran\u00e7a incorreto. Tente novamente."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bt:Lcom/paypal/android/sdk/em;

    const-string v2, "Via"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/em;->bu:Lcom/paypal/android/sdk/em;

    const-string v2, "Erro de sistema. Tente novamente mais tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|AT"

    const-string v2, "Partilhar informa\u00e7\u00f5es sobre as <a href=\'%1$s\'>fontes de financiamento</a> associadas \u00e0 sua conta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BE"

    const-string v2, "Partilhar as informa\u00e7\u00f5es sobre as <a href=\'%1$s\'>fontes de financiamento</a> associadas \u00e0 sua conta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BG"

    const-string v2, "Partilhar as <a href=\'%1$s\'>fontes de financiamento</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CH"

    const-string v2, "Partilhar informa\u00e7\u00f5es sobre as <a href=\'%1$s\'>fontes de financiamento</a> associadas \u00e0 sua conta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CY"

    const-string v2, "Partilhar as <a href=\'%1$s\'>fontes de financiamento</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CZ"

    const-string v2, "Partilhar as <a href=\'%1$s\'>fontes de financiamento</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DE"

    const-string v2, "Partilhar informa\u00e7\u00f5es sobre as <a href=\'%1$s\'>fontes de financiamento</a> associadas \u00e0 sua conta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DK"

    const-string v2, "Partilhar informa\u00e7\u00f5es sobre os <a href=\'%1$s\'>meios de pagamento</a> associados \u00e0 sua conta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|EE"

    const-string v2, "Partilhar as <a href=\'%1$s\'>fontes de financiamento</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|ES"

    const-string v2, "Partilhar informa\u00e7\u00f5es com eles sobre as <a href=\'%1$s\'>fontes de financiamento</a> associadas \u00e0 sua conta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|FI"

    const-string v2, "Partilhar as <a href=\'%1$s\'>fontes de financiamento</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GB"

    const-string v2, "Partilhar as <a href=\'%1$s\'>fontes de financiamento</a> associadas \u00e0 sua conta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GR"

    const-string v2, "Partilhar as <a href=\'%1$s\'>fontes de financiamento</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|HU"

    const-string v2, "Partilhar as <a href=\'%1$s\'>fontes de financiamento</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IE"

    const-string v2, "Partilhar as <a href=\'%1$s\'>fontes de financiamento</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IT"

    const-string v2, "Partilhar as <a href=\'%1$s\'>fontes de financiamento</a> associadas \u00e0 sua conta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LI"

    const-string v2, "Partilhar as <a href=\'%1$s\'>fontes de financiamento</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LT"

    const-string v2, "Partilhar as <a href=\'%1$s\'>fontes de financiamento</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LU"

    const-string v2, "Partilhar as <a href=\'%1$s\'>fontes de financiamento</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LV"

    const-string v2, "Partilhar as <a href=\'%1$s\'>fontes de financiamento</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|MT"

    const-string v2, "Partilhar as <a href=\'%1$s\'>fontes de financiamento</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NL"

    const-string v2, "Partilhar as informa\u00e7\u00f5es sobre as <a href=\'%1$s\'>fontes de financiamento</a> associadas \u00e0 sua conta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NO"

    const-string v2, "Partilhar informa\u00e7\u00f5es sobre os <a href=\'%1$s\'>meios de pagamento</a> associados \u00e0 sua conta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PL"

    const-string v2, "Partilhar as informa\u00e7\u00f5es sobre as <a href=\'%1$s\'>fontes de financiamento</a> associadas \u00e0 sua conta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PT"

    const-string v2, "Partilhar as <a href=\'%1$s\'>fontes de financiamento</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SE"

    const-string v2, "Partilhar informa\u00e7\u00f5es sobre os <a href=\'%1$s\'>meios de pagamento</a> associados \u00e0 sua conta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SI"

    const-string v2, "Partilhar as <a href=\'%1$s\'>fontes de financiamento</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SK"

    const-string v2, "Partilhar as <a href=\'%1$s\'>fontes de financiamento</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SM"

    const-string v2, "Partilhar as <a href=\'%1$s\'>fontes de financiamento</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|VA"

    const-string v2, "Partilhar as <a href=\'%1$s\'>fontes de financiamento</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|AU"

    const-string v2, "<p><a href=\'%1$s\'>Autorizar d\u00e9bitos</a> para compras futuras feitas em %2$s pagas com PayPal. Est\u00e1 a dar ao PayPal instru\u00e7\u00f5es para pagar todos os montantes solicitados por %3$s.</p><p>Para mais informa\u00e7\u00f5es, consulte o <a href=\'https://www.paypal.com/webapps/mpp/ua/recurringpymts-full\'>Contrato de Pagamentos Peri\u00f3dicos e Fatura\u00e7\u00e3o do PayPal</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|CN"

    const-string v2, "<p><a href=\'%1$s\'>Autorizar d\u00e9bitos</a> para compras futuras feitas em %2$s pagas com PayPal. Est\u00e1 a dar ao PayPal instru\u00e7\u00f5es para pagar todos os montantes solicitados por %3$s.</p><p>Para mais informa\u00e7\u00f5es, consulte o <a href=\'https://cms.paypal.com/c2/cgi-bin/?cmd=_render-content&content_ID=ua/UserAgreement_full\'>Contrato de Pagamentos Peri\u00f3dicos e Fatura\u00e7\u00e3o do PayPal</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|MY"

    const-string v2, "<a href=\'%1$s\'>Autorizar d\u00e9bitos</a> para compras futuras realizadas com o PayPal. Est\u00e1 a dar instru\u00e7\u00f5es ao PayPal para pagar todos os montantes."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|NZ"

    const-string v2, "<a href=\'%1$s\'>Autorizar d\u00e9bitos</a> para compras futuras realizadas com o PayPal. Est\u00e1 a dar instru\u00e7\u00f5es ao PayPal para pagar todos os montantes."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|SG"

    const-string v2, "<a href=\'%1$s\'>Autorizar d\u00e9bitos</a> para compras futuras realizadas com o PayPal. Est\u00e1 a dar instru\u00e7\u00f5es ao PayPal para pagar todos os montantes."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|US"

    const-string v2, "Pr\u00e9-aprovar pagamentos futuros realizados com a sua conta PayPal sem iniciar sempre a sess\u00e3o no PayPal. <a href=\'%1$s\'>Consulte os termos adicionais</a>, incluindo meios de pagamento e como cancelar pagamentos futuros."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|AT"

    const-string v2, "Permitir que %2$s <a href=\'%1$s\'>solicite dinheiro</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|BE"

    const-string v2, "Permitir que %2$s <a href=\'%1$s\'>solicite dinheiro</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|CH"

    const-string v2, "Permitir que %2$s <a href=\'%1$s\'>solicite dinheiro</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|DE"

    const-string v2, "Permitir que %2$s <a href=\'%1$s\'>solicite dinheiro</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|GB"

    const-string v2, "Permitir que %2$s <a href=\'%1$s\'>solicite dinheiro</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|NL"

    const-string v2, "Permitir que %2$s <a href=\'%1$s\'>solicite dinheiro</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|PL"

    const-string v2, "Permitir que %2$s <a href=\'%1$s\'>solicite dinheiro</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|AT"

    const-string v2, "Permitir que %2$s <a href=\'%1$s\'>envie dinheiro</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|BE"

    const-string v2, "Permitir que %2$s <a href=\'%1$s\'>envie dinheiro</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|CH"

    const-string v2, "Permitir que %2$s <a href=\'%1$s\'>envie dinheiro</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|DE"

    const-string v2, "Permitir que %2$s <a href=\'%1$s\'>envie dinheiro</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|GB"

    const-string v2, "Permitir que %2$s <a href=\'%1$s\'>envie dinheiro</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|NL"

    const-string v2, "Permitir que %2$s <a href=\'%1$s\'>envie dinheiro</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|PL"

    const-string v2, "Permitir que %2$s <a href=\'%1$s\'>envie dinheiro</a> em seu nome at\u00e9 que retire o seu consentimento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha as informa\u00e7\u00f5es sobre quais as fontes de financiamento que est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha as informa\u00e7\u00f5es sobre quais as fontes de financiamento que est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha as informa\u00e7\u00f5es sobre quais as fontes de financiamento que est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>Meios de pagamento</strong></h1><p>O PayPal apenas partilha quais das suas fontes de financiamento est\u00e3o dispon\u00edveis para utiliza\u00e7\u00e3o.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>Contrato de Pagamento Futuro</strong></h1><p>Para garantir que a sua conta PayPal pode ser debitada no futuro, esta aplica\u00e7\u00e3o poder\u00e1 simular uma pequena transa\u00e7\u00e3o de teste, mas n\u00e3o ser\u00e1 transferido qualquer dinheiro.</p><p>O seu meio de pagamento predefinido (saldo PayPal, conta banc\u00e1ria associada, cart\u00e3o de d\u00e9bito ou de cr\u00e9dito, por esta ordem) ser\u00e1 usado para o pagamento de compras com PayPal. Tenha em aten\u00e7\u00e3o que, se o meio de pagamento predefinido n\u00e3o tiver fundos suficientes para cobrir a compra, o seu banco ou fornecedor do cart\u00e3o poder\u00e1 cobrar uma tarifa.</p><p>Para cancelar este contrato, inicie a sess\u00e3o na sua conta PayPal e entre em <strong>Perfil</strong>, depois clique em <strong>As minhas defini\u00e7\u00f5es</strong> e em <strong>Alterar</strong>, ao lado de \u201cIniciar a sess\u00e3o com PayPal\u201d.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|BR"

    const-string v2, "<h1><strong>Contrato de Pagamento Futuro</strong></h1><p>Para garantir que a sua conta PayPal pode ser debitada no futuro, esta aplica\u00e7\u00e3o poder\u00e1 simular uma pequena transa\u00e7\u00e3o de teste, mas n\u00e3o ser\u00e1 transferido qualquer dinheiro.</p><p>O seu saldo PayPal ou o seu cart\u00e3o de cr\u00e9dito ou de d\u00e9bito predefinido ser\u00e1 usado para o pagamento de compras com PayPal.</p><p>Para cancelar este contrato, inicie a sess\u00e3o na sua conta PayPal, entre em <strong>Perfil</strong> &gt; <strong>As minhas defini\u00e7\u00f5es</strong> &gt; <strong>Iniciar a sess\u00e3o com PayPal</strong> e remova este comerciante da lista.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|CN"

    const-string v2, "<h1><strong>Contrato de Pagamento Futuro</strong></h1><p>Para garantir que a sua conta PayPal pode ser debitada no futuro, esta aplica\u00e7\u00e3o poder\u00e1 simular uma pequena transa\u00e7\u00e3o de teste, mas n\u00e3o ser\u00e1 transferido qualquer dinheiro.</p><p>O seu meio de pagamento predefinido ser\u00e1 usado para o pagamento de compras com PayPal.</p><p>Para cancelar este contrato, inicie a sess\u00e3o na sua conta PayPal, entre em <strong>Perfil</strong> &gt; <strong>As minhas defini\u00e7\u00f5es</strong> &gt; <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante da lista.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>Contrato de Pagamento Futuro</strong></h1><p>A sua fonte de financiamento predefinida ser\u00e1 usada em pagamentos futuros com PayPal efetuados neste comerciante.</p><p>Para cancelar este contrato, inicie sess\u00e3o na sua conta PayPal, entre em <strong>Perfil</strong> &gt; <strong>As minhas defini\u00e7\u00f5es</strong> &gt; <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante da lista.</p><p>Aplica-se a sec\u00e7\u00e3o de Pagamento Peri\u00f3dico do <a href=\'%s\'>Contrato do Utilizador do PayPal</a>.</p><p>Para garantir que os pagamentos s\u00e3o efetuados corretamente com a sua conta PayPal, esta aplica\u00e7\u00e3o poder\u00e1 simular uma pequena transa\u00e7\u00e3o de teste, mas n\u00e3o ser\u00e1 transferido qualquer dinheiro.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|HK"

    const-string v2, "<h1><strong>Autoriza\u00e7\u00e3o de Pagamento Futuro</strong></h1><p>Para garantir que a sua conta PayPal pode ser debitada no futuro, esta aplica\u00e7\u00e3o poder\u00e1 simular uma pequena transa\u00e7\u00e3o de teste, mas n\u00e3o ser\u00e1 transferido qualquer dinheiro.</p><p>O seu meio de pagamento predefinido ser\u00e1 usado para o pagamento de compras com PayPal.</p><p>Para cancelar esta autoriza\u00e7\u00e3o, inicie sess\u00e3o na sua conta PayPal, entre em <strong>Perfil</strong> &gt; <strong>As minhas defini\u00e7\u00f5es</strong> &gt; <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante da lista.</p><p>Para mais informa\u00e7\u00f5es, consulte a sec\u00e7\u00e3o \u201cPagamentos pr\u00e9-aprovados\u201d do <a href=\'%s\'>Contrato do Utilizador do PayPal</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|JP"

    const-string v2, "<h1><strong>Autoriza\u00e7\u00e3o de Pagamento Futuro</strong></h1><p>Para garantir que a sua conta PayPal pode ser debitada no futuro, esta aplica\u00e7\u00e3o poder\u00e1 simular uma pequena transa\u00e7\u00e3o de teste, mas n\u00e3o ser\u00e1 transferido qualquer dinheiro.</p><p>O seu meio de pagamento predefinido ser\u00e1 usado para o pagamento de compras com PayPal.</p><p>Para cancelar esta autoriza\u00e7\u00e3o, inicie sess\u00e3o na sua conta PayPal, entre em <strong>Perfil</strong> &gt; <strong>As minhas defini\u00e7\u00f5es</strong> &gt; <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante da lista.</p><p>Para mais informa\u00e7\u00f5es, consulte a sec\u00e7\u00e3o \u201cPagamentos pr\u00e9-aprovados\u201d do <a href=\'%s\'>Contrato do Utilizador do PayPal</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MX"

    const-string v2, "<h1><strong>Contrato de Pagamento Futuro</strong></h1><p>Para garantir que a sua conta PayPal pode ser debitada no futuro, esta aplica\u00e7\u00e3o poder\u00e1 simular uma pequena transa\u00e7\u00e3o de teste, mas n\u00e3o ser\u00e1 transferido qualquer dinheiro.</p><p>O seu saldo PayPal ou o seu cart\u00e3o de cr\u00e9dito ou de d\u00e9bito predefinido ser\u00e1 usado para o pagamento de compras com PayPal.</p><p>Para cancelar este contrato, inicie a sess\u00e3o na sua conta PayPal, entre em <strong>Perfil</strong> &gt; <strong>As minhas defini\u00e7\u00f5es</strong> &gt; <strong>Iniciar a sess\u00e3o com PayPal</strong> e remova este comerciante da lista.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MY"

    const-string v2, "<h1><strong>Autoriza\u00e7\u00e3o de Pagamento Futuro</strong></h1><p>Para garantir que a sua conta PayPal pode ser debitada no futuro, esta aplica\u00e7\u00e3o poder\u00e1 simular uma pequena transa\u00e7\u00e3o de teste, mas n\u00e3o ser\u00e1 transferido qualquer dinheiro.</p><p>O seu meio de pagamento predefinido ser\u00e1 usado para o pagamento de compras com PayPal.</p><p>Para cancelar esta autoriza\u00e7\u00e3o, inicie sess\u00e3o na sua conta PayPal, entre em <strong>Perfil</strong> &gt; <strong>As minhas defini\u00e7\u00f5es</strong> &gt; <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante da lista.</p><p>Para mais informa\u00e7\u00f5es, consulte a sec\u00e7\u00e3o \u201cPagamentos pr\u00e9-aprovados\u201d do <a href=\'%s\'>Contrato do Utilizador do PayPal</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|NZ"

    const-string v2, "<h1><strong>Autoriza\u00e7\u00e3o de Pagamento Futuro</strong></h1><p>Para garantir que a sua conta PayPal pode ser debitada no futuro, esta aplica\u00e7\u00e3o poder\u00e1 simular uma pequena transa\u00e7\u00e3o de teste, mas n\u00e3o ser\u00e1 transferido qualquer dinheiro.</p><p>O seu meio de pagamento predefinido ser\u00e1 usado para o pagamento de compras com PayPal.</p><p>Para cancelar esta autoriza\u00e7\u00e3o, inicie sess\u00e3o na sua conta PayPal, entre em <strong>Perfil</strong> &gt; <strong>As minhas defini\u00e7\u00f5es</strong> &gt; <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante da lista.</p><p>Para mais informa\u00e7\u00f5es, consulte a sec\u00e7\u00e3o \u201cPagamentos pr\u00e9-aprovados\u201d do <a href=\'%s\'>Contrato do Utilizador do PayPal</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|SG"

    const-string v2, "<h1><strong>Autoriza\u00e7\u00e3o de Pagamento Futuro</strong></h1><p>Para garantir que a sua conta PayPal pode ser debitada no futuro, esta aplica\u00e7\u00e3o poder\u00e1 simular uma pequena transa\u00e7\u00e3o de teste, mas n\u00e3o ser\u00e1 transferido qualquer dinheiro.</p><p>O seu meio de pagamento predefinido ser\u00e1 usado para o pagamento de compras com PayPal.</p><p>Para cancelar esta autoriza\u00e7\u00e3o, inicie sess\u00e3o na sua conta PayPal, entre em <strong>Perfil</strong> &gt; <strong>As minhas defini\u00e7\u00f5es</strong> &gt; <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante da lista.</p><p>Para mais informa\u00e7\u00f5es, consulte a sec\u00e7\u00e3o \u201cPagamentos pr\u00e9-aprovados\u201d do <a href=\'%s\'>Contrato do Utilizador do PayPal</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>Contrato de Pagamento Futuro</strong></h1><p>O PayPal ir\u00e1 usar em primeiro lugar o seu saldo PayPal para fazer o pagamento da sua compra. Se isso n\u00e3o cobrir o seu total, ser\u00e1 usada a sua conta banc\u00e1ria, o cart\u00e3o de d\u00e9bito, o cart\u00e3o de cr\u00e9dito e/ou o eCheck, por esta ordem.</p><p>Para cancelar este contrato, visite www.paypal.com, entre em <strong>Perfil</strong> &gt; <strong>As minhas defini\u00e7\u00f5es</strong> &gt; <strong>Iniciar a sess\u00e3o com PayPal</strong> e remova este comerciante da lista.</p><p>Pode ser necess\u00e1ria a autoriza\u00e7\u00e3o de um pagamento de baixo valor para garantir que a sua conta PayPal pode ser debitada no futuro. A autoriza\u00e7\u00e3o ser\u00e1 anulada e n\u00e3o ser\u00e1 efetuado qualquer d\u00e9bito.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|AU"

    const-string v2, "Iniciar sess\u00e3o com PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|GB"

    const-string v2, "Iniciar sess\u00e3o com PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AD"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o parceiro.</p><p>Para retirar o seu consentimento, inicie a sess\u00e3o na sua conta PayPal e clique no \u00edcone em forma de roda dentada. Entre em <strong>Seguran\u00e7a</strong>, selecione <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este parceiro.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do parceiro.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre nas op\u00e7\u00f5es <strong>Iniciar sess\u00e3o com PayPal</strong> nas defini\u00e7\u00f5es de <strong>Perfil</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do parceiro.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o na sua conta PayPal, entre nas op\u00e7\u00f5es <strong>Iniciar sess\u00e3o com PayPal</strong> nas suas defini\u00e7\u00f5es de <strong>Perfil</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o parceiro.</p><p>Para retirar o seu consentimento, inicie a sess\u00e3o na sua conta PayPal e clique no \u00edcone em forma de roda dentada. Entre em <strong>Seguran\u00e7a</strong>, selecione <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este parceiro.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do parceiro.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o parceiro.</p><p>Para retirar o seu consentimento, inicie a sess\u00e3o na sua conta PayPal e clique no \u00edcone em forma de roda dentada. Entre em <strong>Seguran\u00e7a</strong>, selecione <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este parceiro.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do parceiro.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DK"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o na sua conta PayPal, entre nas op\u00e7\u00f5es <strong>Iniciar sess\u00e3o com PayPal</strong> nas defini\u00e7\u00f5es de <strong>Perfil</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o na sua conta PayPal, clique no \u00edcone em forma de roda dentada no canto superior direito, escolha <strong>Centro de Seguran\u00e7a</strong>, selecione <strong>Iniciar sess\u00e3o com PayPal</strong> e remova o comerciante. Se ainda estiver a utilizar o site cl\u00e1ssico, entre em <strong>O Meu Perfil</strong>, escolha <strong>As minhas defini\u00e7\u00f5es</strong>, selecione <strong>Iniciar sess\u00e3o com PayPal</strong> e remova o comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o parceiro.</p><p>Para retirar o consentimento, inicie sess\u00e3o na sua conta PayPal e, nas defini\u00e7\u00f5es de <strong>Perfil</strong> entre em <strong>Iniciar sess\u00e3o com PayPal</strong> para remover este parceiro.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do parceiro.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IS"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.it, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o na sua conta PayPal, entre nas op\u00e7\u00f5es <strong>Iniciar sess\u00e3o com PayPal</strong> nas suas defini\u00e7\u00f5es de <strong>Perfil</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NO"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o na sua conta PayPal, entre nas op\u00e7\u00f5es <strong>Iniciar sess\u00e3o com PayPal</strong> nas defini\u00e7\u00f5es de <strong>Perfil</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o na sua conta PayPal, entre nas op\u00e7\u00f5es <strong>Iniciar sess\u00e3o com PayPal</strong> nas suas defini\u00e7\u00f5es de <strong>Perfil</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RO"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o parceiro.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.ru, clique no \u00edcone em forma de roda dentada no canto superior direito, escolha o separador <strong>Seguran\u00e7a</strong> e, na op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong>, remova este parceiro.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do parceiro.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o na sua conta PayPal, entre nas op\u00e7\u00f5es <strong>Iniciar sess\u00e3o com PayPal</strong> nas defini\u00e7\u00f5es de <strong>Perfil</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|TR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com.tr, clique no \u00edcone em forma de roda dentada no canto superior direito, escolha o separador <strong>Seguran\u00e7a</strong> e, na op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong>, remova este parceiro.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|UA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre nas op\u00e7\u00f5es <strong>Iniciar sess\u00e3o com PayPal</strong> nas defini\u00e7\u00f5es de <strong>Perfil</strong> e remova este comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ZA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Quaisquer detalhes relevantes da transa\u00e7\u00e3o ser\u00e3o partilhados com o comerciante.</p><p>Para retirar o consentimento, inicie sess\u00e3o em paypal.com, entre em <strong>Perfil</strong>, <strong>Seguran\u00e7a</strong>, localize a op\u00e7\u00e3o <strong>Iniciar sess\u00e3o com PayPal</strong> e remova este comerciante.</p><p>O PayPal n\u00e3o \u00e9 respons\u00e1vel por quaisquer a\u00e7\u00f5es ou erros da parte do comerciante.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "AMOUNT_MISMATCH"

    const-string v2, "O total de artigos no carrinho de compras n\u00e3o coincide com o valor da venda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ALREADY_COMPLETED"

    const-string v2, "Esta autoriza\u00e7\u00e3o j\u00e1 foi conclu\u00edda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_CANNOT_BE_VOIDED"

    const-string v2, "O estado da autoriza\u00e7\u00e3o n\u00e3o permite a anula\u00e7\u00e3o."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_EXPIRED"

    const-string v2, "A autoriza\u00e7\u00e3o expirou."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ID_DOES_NOT_EXIST"

    const-string v2, "A ID de autoriza\u00e7\u00e3o solicitada n\u00e3o existe."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_VOIDED"

    const-string v2, "A autoriza\u00e7\u00e3o foi anulada."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_CHILD_AUTHORIZATION"

    const-string v2, "S\u00f3 \u00e9 poss\u00edvel reautorizar a autoriza\u00e7\u00e3o original e n\u00e3o uma reautoriza\u00e7\u00e3o."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_INSIDE_HONOR_PERIOD"

    const-string v2, "A reautoriza\u00e7\u00e3o n\u00e3o \u00e9 permitida dentro do per\u00edodo de honra."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "CAPTURE_AMOUNT_LIMIT_EXCEEDED"

    const-string v2, "O valor excede o limite permitido."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "CARD_TOKEN_PAYER_MISMATCH"

    const-string v2, "N\u00e3o \u00e9 poss\u00edvel aceder \u00e0s informa\u00e7\u00f5es guardadas do cart\u00e3o."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_CVV_CHECK_FAILED"

    const-string v2, "As informa\u00e7\u00f5es do cart\u00e3o s\u00e3o inv\u00e1lidas. Corrija e envie novamente."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_REFUSED"

    const-string v2, "Cart\u00e3o recusado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_MISMATCH"

    const-string v2, "A moeda de captura deve ser id\u00eantica \u00e0 moeda de autoriza\u00e7\u00e3o."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_NOT_ALLOWED"

    const-string v2, "Esta moeda n\u00e3o \u00e9 suportada atualmente pelo PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "DATA_RETRIEVAL"

    const-string v2, "Erro de sistema. Tente novamente mais tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_REQUEST_ID"

    const-string v2, "Erro de sistema. Tente novamente mais tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD"

    const-string v2, "O cart\u00e3o j\u00e1 n\u00e3o \u00e9 v\u00e1lido"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD_TOKEN"

    const-string v2, "Os dados deste cart\u00e3o j\u00e1 n\u00e3o se encontram arquivados.\nEnvie-os novamente."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "FEATURE_UNSUPPORTED_FOR_PAYEE"

    const-string v2, "A funcionalidade n\u00e3o \u00e9 suportada para este fornecedor."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "FULL_REFUND_NOT_ALLOWED_AFTER_PARTIAL_REFUND"

    const-string v2, "Esta transa\u00e7\u00e3o j\u00e1 foi parcialmente reembolsada."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "IMMEDIATE_PAY_NOT_SUPPORTED"

    const-string v2, "O pagamento imediato n\u00e3o \u00e9 suportado para essa finalidade."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "INSTRUMENT_DECLINED"

    const-string v2, "O seu meio de pagamento selecionado n\u00e3o foi aceite. Escolha um meio diferente."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "INSUFFICIENT_FUNDS"

    const-string v2, "O comprador n\u00e3o consegue pagar - fundos insuficientes."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "INTERNAL_SERVICE_ERROR"

    const-string v2, "Erro de sistema. Tente novamente mais tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "INVALID_ACCOUNT_NUMBER"

    const-string v2, "Esse n\u00famero de conta n\u00e3o existe."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "INVALID_ARGUMENT"

    const-string v2, "Transa\u00e7\u00e3o recusada devido a um argumento inv\u00e1lido"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "INVALID_CITY_STATE_ZIP"

    const-string v2, "Combina\u00e7\u00e3o inv\u00e1lida de cidade/localidade/c\u00f3digo postal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "INVALID_FACILITATOR_CONFIGURATION"

    const-string v2, "Esta transa\u00e7\u00e3o n\u00e3o pode ser processada devido a uma configura\u00e7\u00e3o de facilitador inv\u00e1lida."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "INVALID_PAYER_ID"

    const-string v2, "Erro de sistema (ID de pagante inv\u00e1lida). Tente novamente mais tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "INVALID_RESOURCE_ID"

    const-string v2, "Erro de sistema. Tente novamente mais tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_INVALID"

    const-string v2, "A conta do fornecedor n\u00e3o tem um e-mail confirmado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "Este fornecedor n\u00e3o pode receber pagamentos de momento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_NO_CONFIRMED_EMAIL"

    const-string v2, "A conta do fornecedor n\u00e3o tem um e-mail confirmado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_RESTRICTED"

    const-string v2, "Este fornecedor n\u00e3o pode receber pagamentos de momento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "A sua conta est\u00e1 bloqueada ou foi encerrada."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_RESTRICTED"

    const-string v2, "A sua conta encontra-se restrita."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYER_CANNOT_PAY"

    const-string v2, "N\u00e3o pode pagar esta transa\u00e7\u00e3o com PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYER_EMPTY_BILLING_ADDRESS"

    const-string v2, "A morada de fatura\u00e7\u00e3o \u00e9 obrigat\u00f3ria em transa\u00e7\u00f5es com cart\u00e3o de cr\u00e9dito n\u00e3o-PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYER_ID_MISSING_FOR_CARD_TOKEN"

    const-string v2, "N\u00e3o \u00e9 poss\u00edvel aceder \u00e0s informa\u00e7\u00f5es guardadas do cart\u00e3o."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_APPROVAL_EXPIRED"

    const-string v2, "A aprova\u00e7\u00e3o do pagamento expirou."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_EXPIRED"

    const-string v2, "O pagamento expirou."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_NOT_APPROVED_FOR_EXECUTION"

    const-string v2, "O pagante n\u00e3o aprovou o pagamento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_REQUEST_ID_INVALID"

    const-string v2, "A ID do pedido PayPal \u00e9 inv\u00e1lida. Tente novamente mais tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_STATE_INVALID"

    const-string v2, "Este pedido \u00e9 inv\u00e1lido devido ao estado atual do pagamento."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PERMISSION_DENIED"

    const-string v2, "A opera\u00e7\u00e3o solicitada n\u00e3o \u00e9 permitida."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "REFUND_EXCEEDED_TRANSACTION_AMOUNT"

    const-string v2, "O reembolso solicitado excede o valor da transa\u00e7\u00e3o original."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "REFUND_TIME_LIMIT_EXCEEDED"

    const-string v2, "Esta transa\u00e7\u00e3o \u00e9 demasiado antiga para ser reembolsada."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "REQUIRED_SCOPE_MISSING"

    const-string v2, "Erro de sistema. Tente novamente mais tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "TOO_MANY_REAUTHORIZATIONS"

    const-string v2, "N\u00e3o s\u00e3o permitidas mais reautoriza\u00e7\u00f5es para esta autoriza\u00e7\u00e3o."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_ALREADY_REFUNDED"

    const-string v2, "Esta transa\u00e7\u00e3o j\u00e1 foi reembolsada."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_LIMIT_EXCEEDED"

    const-string v2, "O valor excede o limite permitido."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED"

    const-string v2, "A transa\u00e7\u00e3o foi recusada."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_BY_PAYPAL_RISK"

    const-string v2, "A transa\u00e7\u00e3o foi recusada."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_PAYEE_PREFERENCE"

    const-string v2, "A prefer\u00eancia no perfil do comerciante est\u00e1 configurada para recusar automaticamente determinadas transa\u00e7\u00f5es."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "UNKNOWN_ERROR"

    const-string v2, "Erro do sistema. Tente novamente mais tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "UNSUPPORTED_PAYEE_COUNTRY"

    const-string v2, "O seu pa\u00eds n\u00e3o \u00e9 suportado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "VALIDATION_ERROR"

    const-string v2, "A informa\u00e7\u00e3o sobre o pagamento \u00e9 inv\u00e1lida. Corrija e envie novamente."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "ORDER_ALREADY_COMPLETED"

    const-string v2, "O seu pedido foi anulado, j\u00e1 n\u00e3o \u00e9 v\u00e1lido ou est\u00e1 conclu\u00eddo."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "MAXIMUM_ALLOWED_AUTHORIZATION_REACHED_FOR_ORDER"

    const-string v2, "Foi atingido o n\u00famero m\u00e1ximo de autoriza\u00e7\u00f5es permitidas para o pedido."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "ORDER_VOIDED"

    const-string v2, "O pedido foi anulado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "ORDER_CANNOT_BE_VOIDED"

    const-string v2, "O pedido encontra-se num estado que impede a anula\u00e7\u00e3o."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "INVALID_EXPERIENCE_PROFILE_ID"

    const-string v2, "Erro do sistema. Tente novamente mais tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "UNAUTHORIZED_PAYMENT"

    const-string v2, "O comerciante n\u00e3o aceita pagamentos deste tipo."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "DCC_UNSUPPORTED_CURRENCY_CC_TYPE"

    const-string v2, "Moeda sem suporte para o tipo de cart\u00e3o."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "DCC_CC_TYPE_NOT_SUPPORTED"

    const-string v2, "Tipo de cart\u00e3o n\u00e3o suportado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "ADDRESS_ADDITION_ERROR"

    const-string v2, "Ocorreu um erro ao adicionar a morada de envio \u00e0 conta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_TRANSACTION"

    const-string v2, "Transa\u00e7\u00e3o duplicada."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "INVALID_SHIPPING_ADDRESS"

    const-string v2, "A morada de envio fornecida n\u00e3o \u00e9 v\u00e1lida."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR"

    const-string v2, "Ocorreu um problema ao configurar este pagamento. Visite o site do PayPal para verificar a sua conta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_EXPIRED_PAYMENT_CARD"

    const-string v2, "Ocorreu um problema ao configurar este pagamento - o seu cart\u00e3o perdeu a validade. Visite o site do PayPal para verificar a sua conta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_INSTANT_PAYMENT_REQUIRED"

    const-string v2, "Ocorreu um problema ao configurar este pagamento - necess\u00e1rio pagamento imediato, como um cart\u00e3o de cr\u00e9dito. Visite o site do PayPal para verificar a sua conta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_CONFIRMED_CARD"

    const-string v2, "Ocorreu um problema ao configurar este pagamento - o cart\u00e3o deve ser confirmado. Visite o site do PayPal para verificar a sua conta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_PHONE_NUMBER"

    const-string v2, "Ocorreu um problema ao configurar este pagamento - esta aplica\u00e7\u00e3o requer que a sua conta inclua um n\u00famero de telefone. Visite o site do PayPal para verificar a sua conta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_VALID_FUNDING_INSTRUMENT"

    const-string v2, "Ocorreu um erro ao configurar este pagamento - a conta precisa de uma fonte de financiamento v\u00e1lida, como um banco ou um cart\u00e3o de pagamento. Visite o site do PayPal para verificar a sua conta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEGATIVE_BALANCE"

    const-string v2, "Ocorreu um problema ao configurar este pagamento - o seu saldo est\u00e1 negativo. Visite o site do PayPal para verificar a sua conta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_SENDING_LIMIT_REACHED"

    const-string v2, "Ocorreu um problema ao configurar este pagamento - j\u00e1 atingiu o limite de envio. Visite o site do PayPal para verificar a sua conta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_RISK_FAILURE"

    const-string v2, "Recusado devido a risco."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_OFAC_BLOCKED_IP"

    const-string v2, "Cliente n\u00e3o autorizado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_IP_COMPLIANCE_FAILURE"

    const-string v2, "Cliente n\u00e3o autorizado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "invalid_user"

    const-string v2, "Nome de utilizador ou palavra-passe incorrecto. Tente novamente."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "locked_user"

    const-string v2, "A sua conta PayPal foi bloqueada temporariamente. Tente de novo mais tarde ou entre em www.paypal.com para desbloquear imediatamente a sua conta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "max_attempts_exceeded"

    const-string v2, "Demasiadas tentativas de in\u00edcio de sess\u00e3o falhadas. Tente novamente mais tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "invalid_request"

    const-string v2, "Ocorreu um erro."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "unauthorized_client"

    const-string v2, "Pedido n\u00e3o autorizado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "access_denied"

    const-string v2, "Pedido n\u00e3o autorizado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "unsupported_response_type"

    const-string v2, "Ocorreu um erro."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "invalid_scope"

    const-string v2, "Pedido n\u00e3o autorizado."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "server_error"

    const-string v2, "Erro de sistema. Tente novamente mais tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "temporarily_unavailable"

    const-string v2, "Erro de sistema. Tente novamente mais tarde."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    const-string v1, "stepup_required"

    const-string v2, "Neste momento n\u00e3o \u00e9 poss\u00edvel concluir o seu in\u00edcio de sess\u00e3o. Volte a tentar mais tarde ou entre em www.paypal.com caso tenha alguma quest\u00e3o sobre a sua conta PayPal relacionada com seguran\u00e7a."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "pt"

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

    sget-object v1, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/paypal/android/sdk/d;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/paypal/android/sdk/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
