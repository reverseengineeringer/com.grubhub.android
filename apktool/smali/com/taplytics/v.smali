.class Lcom/taplytics/v;
.super Lcom/taplytics/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taplytics/h",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taplytics/s;


# direct methods
.method constructor <init>(Lcom/taplytics/s;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/taplytics/v;->a:Lcom/taplytics/s;

    invoke-direct {p0}, Lcom/taplytics/h;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->b(Z)V

    .line 130
    sget-object v0, Lcom/taplytics/kb;->albatross:Lcom/taplytics/kb;

    invoke-static {v0}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v0

    const-string v1, "appBackground"

    invoke-virtual {v0, v1}, Lcom/taplytics/cc;->a(Ljava/lang/String;)V

    .line 133
    :cond_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/taplytics/cc;->a(Lcom/taplytics/eq;)V

    .line 134
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/cc;->a()Lcom/taplytics/cl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/taplytics/cl;->a(Lcom/taplytics/eq;)V

    .line 135
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    const-string v0, "App assumed to be backgrounded"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 138
    :cond_1
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    invoke-static {}, Lcom/taplytics/im;->a()Lcom/taplytics/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/im;->c()V

    .line 142
    :cond_2
    invoke-static {}, Lcom/taplytics/dg;->b()Lcom/taplytics/dg;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/taplytics/dg;->b()Lcom/taplytics/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/dg;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 143
    invoke-static {}, Lcom/taplytics/dg;->b()Lcom/taplytics/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/dg;->o()V

    .line 145
    :cond_3
    invoke-super {p0}, Lcom/taplytics/h;->b()V

    .line 146
    return-void
.end method
