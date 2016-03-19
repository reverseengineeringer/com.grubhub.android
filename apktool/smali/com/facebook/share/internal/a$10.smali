.class Lcom/facebook/share/internal/a$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/internal/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/a;->n()V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/share/internal/a;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a;)V
    .locals 0

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/facebook/share/internal/a$10;->a:Lcom/facebook/share/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 1083
    sget-object v0, Lcom/facebook/share/internal/a$3;->a:[I

    iget-object v1, p0, Lcom/facebook/share/internal/a$10;->a:Lcom/facebook/share/internal/a;

    invoke-static {v1}, Lcom/facebook/share/internal/a;->i(Lcom/facebook/share/internal/a;)Lcom/facebook/share/widget/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/share/widget/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1088
    new-instance v0, Lcom/facebook/share/internal/g;

    iget-object v1, p0, Lcom/facebook/share/internal/a$10;->a:Lcom/facebook/share/internal/a;

    iget-object v2, p0, Lcom/facebook/share/internal/a$10;->a:Lcom/facebook/share/internal/a;

    .line 1089
    invoke-static {v2}, Lcom/facebook/share/internal/a;->h(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/share/internal/a$10;->a:Lcom/facebook/share/internal/a;

    invoke-static {v3}, Lcom/facebook/share/internal/a;->i(Lcom/facebook/share/internal/a;)Lcom/facebook/share/widget/d;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/share/internal/g;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/d;)V

    .line 1092
    :goto_0
    new-instance v1, Lcom/facebook/share/internal/e;

    iget-object v2, p0, Lcom/facebook/share/internal/a$10;->a:Lcom/facebook/share/internal/a;

    iget-object v3, p0, Lcom/facebook/share/internal/a$10;->a:Lcom/facebook/share/internal/a;

    .line 1093
    invoke-static {v3}, Lcom/facebook/share/internal/a;->h(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/share/internal/a$10;->a:Lcom/facebook/share/internal/a;

    invoke-static {v4}, Lcom/facebook/share/internal/a;->i(Lcom/facebook/share/internal/a;)Lcom/facebook/share/widget/d;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/share/internal/e;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/d;)V

    .line 1095
    new-instance v2, Lcom/facebook/x;

    invoke-direct {v2}, Lcom/facebook/x;-><init>()V

    .line 1096
    invoke-interface {v0, v2}, Lcom/facebook/share/internal/j;->a(Lcom/facebook/x;)V

    .line 1097
    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/e;->a(Lcom/facebook/x;)V

    .line 1099
    new-instance v3, Lcom/facebook/share/internal/a$10$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/facebook/share/internal/a$10$1;-><init>(Lcom/facebook/share/internal/a$10;Lcom/facebook/share/internal/j;Lcom/facebook/share/internal/e;)V

    invoke-virtual {v2, v3}, Lcom/facebook/x;->a(Lcom/facebook/y;)V

    .line 1123
    invoke-virtual {v2}, Lcom/facebook/x;->h()Lcom/facebook/w;

    .line 1124
    return-void

    .line 1085
    :pswitch_0
    new-instance v0, Lcom/facebook/share/internal/i;

    iget-object v1, p0, Lcom/facebook/share/internal/a$10;->a:Lcom/facebook/share/internal/a;

    iget-object v2, p0, Lcom/facebook/share/internal/a$10;->a:Lcom/facebook/share/internal/a;

    invoke-static {v2}, Lcom/facebook/share/internal/a;->h(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/internal/i;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;)V

    goto :goto_0

    .line 1083
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
