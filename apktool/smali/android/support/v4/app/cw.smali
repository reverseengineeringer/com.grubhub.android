.class public final Landroid/support/v4/app/cw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/CharSequence;

.field private c:[Ljava/lang/CharSequence;

.field private d:Z

.field private e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/cw;->d:Z

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/cw;->e:Landroid/os/Bundle;

    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Result key can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/cw;->a:Ljava/lang/String;

    .line 110
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/app/cv;
    .locals 6

    .prologue
    .line 176
    new-instance v0, Landroid/support/v4/app/cv;

    iget-object v1, p0, Landroid/support/v4/app/cw;->a:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/app/cw;->b:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/v4/app/cw;->c:[Ljava/lang/CharSequence;

    iget-boolean v4, p0, Landroid/support/v4/app/cw;->d:Z

    iget-object v5, p0, Landroid/support/v4/app/cw;->e:Landroid/os/Bundle;

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/cv;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)V

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)Landroid/support/v4/app/cw;
    .locals 1

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    iget-object v0, p0, Landroid/support/v4/app/cw;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 159
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/cw;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Landroid/support/v4/app/cw;->b:Ljava/lang/CharSequence;

    .line 119
    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;)Landroid/support/v4/app/cw;
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Landroid/support/v4/app/cw;->c:[Ljava/lang/CharSequence;

    .line 131
    return-object p0
.end method
