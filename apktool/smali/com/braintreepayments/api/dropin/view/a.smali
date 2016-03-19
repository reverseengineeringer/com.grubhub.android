.class public final enum Lcom/braintreepayments/api/dropin/view/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/braintreepayments/api/dropin/view/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/braintreepayments/api/dropin/view/a;

.field public static final enum ERROR:Lcom/braintreepayments/api/dropin/view/a;

.field public static final enum LOADING:Lcom/braintreepayments/api/dropin/view/a;

.field public static final enum SUCCESS:Lcom/braintreepayments/api/dropin/view/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/braintreepayments/api/dropin/view/a;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcom/braintreepayments/api/dropin/view/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/braintreepayments/api/dropin/view/a;->LOADING:Lcom/braintreepayments/api/dropin/view/a;

    new-instance v0, Lcom/braintreepayments/api/dropin/view/a;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/braintreepayments/api/dropin/view/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/braintreepayments/api/dropin/view/a;->SUCCESS:Lcom/braintreepayments/api/dropin/view/a;

    new-instance v0, Lcom/braintreepayments/api/dropin/view/a;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/braintreepayments/api/dropin/view/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/braintreepayments/api/dropin/view/a;->ERROR:Lcom/braintreepayments/api/dropin/view/a;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/braintreepayments/api/dropin/view/a;

    sget-object v1, Lcom/braintreepayments/api/dropin/view/a;->LOADING:Lcom/braintreepayments/api/dropin/view/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/braintreepayments/api/dropin/view/a;->SUCCESS:Lcom/braintreepayments/api/dropin/view/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/braintreepayments/api/dropin/view/a;->ERROR:Lcom/braintreepayments/api/dropin/view/a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/braintreepayments/api/dropin/view/a;->$VALUES:[Lcom/braintreepayments/api/dropin/view/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/braintreepayments/api/dropin/view/a;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/braintreepayments/api/dropin/view/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/dropin/view/a;

    return-object v0
.end method

.method public static values()[Lcom/braintreepayments/api/dropin/view/a;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/braintreepayments/api/dropin/view/a;->$VALUES:[Lcom/braintreepayments/api/dropin/view/a;

    invoke-virtual {v0}, [Lcom/braintreepayments/api/dropin/view/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/braintreepayments/api/dropin/view/a;

    return-object v0
.end method
