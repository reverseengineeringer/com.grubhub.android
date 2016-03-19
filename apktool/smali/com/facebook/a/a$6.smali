.class final Lcom/facebook/a/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/a;->a(Lcom/facebook/a/b;Lcom/facebook/a/l;ZLcom/facebook/a/i;)Lcom/facebook/GraphRequest;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/a/b;

.field final synthetic b:Lcom/facebook/GraphRequest;

.field final synthetic c:Lcom/facebook/a/l;

.field final synthetic d:Lcom/facebook/a/i;


# direct methods
.method constructor <init>(Lcom/facebook/a/b;Lcom/facebook/GraphRequest;Lcom/facebook/a/l;Lcom/facebook/a/i;)V
    .locals 0

    .prologue
    .line 957
    iput-object p1, p0, Lcom/facebook/a/a$6;->a:Lcom/facebook/a/b;

    iput-object p2, p0, Lcom/facebook/a/a$6;->b:Lcom/facebook/GraphRequest;

    iput-object p3, p0, Lcom/facebook/a/a$6;->c:Lcom/facebook/a/l;

    iput-object p4, p0, Lcom/facebook/a/a$6;->d:Lcom/facebook/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/aa;)V
    .locals 4

    .prologue
    .line 960
    iget-object v0, p0, Lcom/facebook/a/a$6;->a:Lcom/facebook/a/b;

    iget-object v1, p0, Lcom/facebook/a/a$6;->b:Lcom/facebook/GraphRequest;

    iget-object v2, p0, Lcom/facebook/a/a$6;->c:Lcom/facebook/a/l;

    iget-object v3, p0, Lcom/facebook/a/a$6;->d:Lcom/facebook/a/i;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/a/a;->a(Lcom/facebook/a/b;Lcom/facebook/GraphRequest;Lcom/facebook/aa;Lcom/facebook/a/l;Lcom/facebook/a/i;)V

    .line 961
    return-void
.end method
