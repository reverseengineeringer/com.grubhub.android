.class Lcom/taplytics/ei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/ga;


# instance fields
.field final synthetic a:Lcom/taplytics/cs;


# direct methods
.method constructor <init>(Lcom/taplytics/cs;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/taplytics/ei;->a:Lcom/taplytics/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 121
    if-eqz p1, :cond_0

    .line 122
    const-string v0, "Deleting TLProperties From Disk"

    invoke-static {v0, p1}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 123
    :cond_0
    return-void
.end method
