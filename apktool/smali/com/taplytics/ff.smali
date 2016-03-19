.class Lcom/taplytics/ff;
.super Lcom/taplytics/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taplytics/sdk/CodeBlockListener;

.field final synthetic c:Lcom/taplytics/fe;


# direct methods
.method constructor <init>(Lcom/taplytics/fe;Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/taplytics/ff;->c:Lcom/taplytics/fe;

    iput-object p2, p0, Lcom/taplytics/ff;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/taplytics/ff;->b:Lcom/taplytics/sdk/CodeBlockListener;

    invoke-direct {p0}, Lcom/taplytics/h;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 4

    .prologue
    .line 115
    invoke-super {p0}, Lcom/taplytics/h;->a()V

    .line 116
    iget-object v0, p0, Lcom/taplytics/ff;->c:Lcom/taplytics/fe;

    iget-object v1, p0, Lcom/taplytics/ff;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/taplytics/ff;->b:Lcom/taplytics/sdk/CodeBlockListener;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/taplytics/fe;->a(Lcom/taplytics/fe;Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;Z)Z

    .line 117
    return-void
.end method
