.class Lcom/braintreepayments/api/models/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/braintreepayments/api/models/b;

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kind"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/braintreepayments/api/models/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/braintreepayments/api/models/c;->a:Lcom/braintreepayments/api/models/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/braintreepayments/api/models/c;->b:Ljava/lang/String;

    .line 43
    return-void
.end method
