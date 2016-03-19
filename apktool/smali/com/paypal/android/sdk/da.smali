.class public final Lcom/paypal/android/sdk/da;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/ak;


# instance fields
.field private a:Lcom/paypal/android/sdk/cz;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/cz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/cz;

    return-void
.end method


# virtual methods
.method public final a(Lcom/paypal/android/sdk/dz;)V
    .locals 2

    instance-of v0, p1, Lcom/paypal/android/sdk/fp;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/cz;

    check-cast p1, Lcom/paypal/android/sdk/fp;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/cz;->a(Lcom/paypal/android/sdk/fp;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/cz;

    check-cast p1, Lcom/paypal/android/sdk/fp;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/cz;->b(Lcom/paypal/android/sdk/fp;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/paypal/android/sdk/fl;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/cz;

    check-cast p1, Lcom/paypal/android/sdk/fl;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/cz;->a(Lcom/paypal/android/sdk/fl;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/cz;

    check-cast p1, Lcom/paypal/android/sdk/fl;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/cz;->b(Lcom/paypal/android/sdk/fl;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/paypal/android/sdk/fg;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/cz;

    check-cast p1, Lcom/paypal/android/sdk/fg;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/cz;->a(Lcom/paypal/android/sdk/fg;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/cz;

    check-cast p1, Lcom/paypal/android/sdk/fg;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/cz;->b(Lcom/paypal/android/sdk/fg;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/paypal/android/sdk/fr;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/cz;

    check-cast p1, Lcom/paypal/android/sdk/fr;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/cz;->a(Lcom/paypal/android/sdk/fr;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/cz;

    check-cast p1, Lcom/paypal/android/sdk/fr;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/cz;->b(Lcom/paypal/android/sdk/fr;)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/paypal/android/sdk/fh;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->r()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/cz;

    invoke-interface {v0}, Lcom/paypal/android/sdk/cz;->a()V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/cz;

    check-cast p1, Lcom/paypal/android/sdk/fh;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/cz;->a(Lcom/paypal/android/sdk/fh;)V

    goto :goto_0

    :cond_9
    instance-of v0, p1, Lcom/paypal/android/sdk/fe;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->r()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/cz;

    check-cast p1, Lcom/paypal/android/sdk/fe;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/cz;->a(Lcom/paypal/android/sdk/fe;)V

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/cz;

    check-cast p1, Lcom/paypal/android/sdk/fe;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/cz;->b(Lcom/paypal/android/sdk/fe;)V

    goto/16 :goto_0

    :cond_b
    instance-of v0, p1, Lcom/paypal/android/sdk/ff;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->r()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/cz;

    check-cast p1, Lcom/paypal/android/sdk/ff;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/cz;->a(Lcom/paypal/android/sdk/ff;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/cz;

    check-cast p1, Lcom/paypal/android/sdk/ff;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/cz;->b(Lcom/paypal/android/sdk/ff;)V

    goto/16 :goto_0

    :cond_d
    instance-of v0, p1, Lcom/paypal/android/sdk/fc;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->r()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/cz;

    check-cast p1, Lcom/paypal/android/sdk/fc;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/cz;->a(Lcom/paypal/android/sdk/fc;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/cz;

    check-cast p1, Lcom/paypal/android/sdk/fc;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/cz;->b(Lcom/paypal/android/sdk/fc;)V

    goto/16 :goto_0

    :cond_f
    instance-of v0, p1, Lcom/paypal/android/sdk/fj;

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->r()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/cz;

    check-cast p1, Lcom/paypal/android/sdk/fj;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/cz;->a(Lcom/paypal/android/sdk/fj;)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/cz;

    check-cast p1, Lcom/paypal/android/sdk/fj;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/cz;->b(Lcom/paypal/android/sdk/fj;)V

    goto/16 :goto_0

    :cond_11
    instance-of v0, p1, Lcom/paypal/android/sdk/fk;

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->r()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/cz;

    check-cast p1, Lcom/paypal/android/sdk/fk;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/cz;->a(Lcom/paypal/android/sdk/fk;)V

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/cz;

    check-cast p1, Lcom/paypal/android/sdk/fk;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/cz;->b(Lcom/paypal/android/sdk/fk;)V

    goto/16 :goto_0

    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not handled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
