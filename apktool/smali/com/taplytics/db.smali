.class Lcom/taplytics/db;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/hz;


# instance fields
.field final synthetic a:Lcom/taplytics/cs;


# direct methods
.method constructor <init>(Lcom/taplytics/cs;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/taplytics/db;->a:Lcom/taplytics/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    const-string v0, "Writing JSON to Disk: "

    invoke-static {v0, p1}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 74
    :cond_0
    return-void
.end method
