.class public abstract Lcom/facebook/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONTENT:",
        "Ljava/lang/Object;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/Object;


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Landroid/support/v4/app/Fragment;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/o",
            "<TCONTENT;TRESU",
            "LT;",
            ">.com/facebook/internal/p;>;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/internal/o;->a:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/facebook/internal/ap;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/facebook/internal/o;->b:Landroid/app/Activity;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/internal/o;->c:Landroid/support/v4/app/Fragment;

    .line 56
    iput p2, p0, Lcom/facebook/internal/o;->e:I

    .line 57
    return-void
.end method

.method protected constructor <init>(Landroid/support/v4/app/Fragment;I)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "fragment"

    invoke-static {p1, v0}, Lcom/facebook/internal/ap;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/facebook/internal/o;->c:Landroid/support/v4/app/Fragment;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/internal/o;->b:Landroid/app/Activity;

    .line 63
    iput p2, p0, Lcom/facebook/internal/o;->e:I

    .line 65
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot use a fragment that is not attached to an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/internal/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/internal/a;"
        }
    .end annotation

    .prologue
    .line 177
    sget-object v0, Lcom/facebook/internal/o;->a:Ljava/lang/Object;

    if-ne p2, v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 179
    :goto_0
    const/4 v2, 0x0

    .line 180
    invoke-direct {p0}, Lcom/facebook/internal/o;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/p;

    .line 181
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/internal/p;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/facebook/internal/al;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    :cond_1
    invoke-virtual {v0, p1}, Lcom/facebook/internal/p;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/facebook/internal/p;->b(Ljava/lang/Object;)Lcom/facebook/internal/a;
    :try_end_0
    .catch Lcom/facebook/h; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 197
    :goto_1
    if-nez v0, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/facebook/internal/o;->c()Lcom/facebook/internal/a;

    move-result-object v0

    .line 199
    invoke-static {v0}, Lcom/facebook/internal/m;->a(Lcom/facebook/internal/a;)V

    .line 202
    :cond_2
    return-object v0

    .line 177
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    invoke-virtual {p0}, Lcom/facebook/internal/o;->c()Lcom/facebook/internal/a;

    move-result-object v0

    .line 192
    invoke-static {v0, v1}, Lcom/facebook/internal/m;->a(Lcom/facebook/internal/a;Lcom/facebook/h;)V

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method

.method private d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/o",
            "<TCONTENT;TRESU",
            "LT;",
            ">.com/facebook/internal/p;>;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/facebook/internal/o;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/facebook/internal/o;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/o;->d:Ljava/util/List;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/o;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/facebook/internal/o;->e:I

    return v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;)V"
        }
    .end annotation

    .prologue
    .line 142
    sget-object v0, Lcom/facebook/internal/o;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/o;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/internal/a;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_2

    .line 149
    iget-object v1, p0, Lcom/facebook/internal/o;->c:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/facebook/internal/o;->c:Landroid/support/v4/app/Fragment;

    invoke-static {v0, v1}, Lcom/facebook/internal/m;->a(Lcom/facebook/internal/a;Landroid/support/v4/app/Fragment;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/facebook/internal/o;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/facebook/internal/m;->a(Lcom/facebook/internal/a;Landroid/app/Activity;)V

    goto :goto_0

    .line 156
    :cond_2
    const-string v0, "No code path should ever result in a null appCall"

    .line 157
    const-string v1, "FacebookDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Lcom/facebook/m;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/o",
            "<TCONTENT;TRESU",
            "LT;",
            ">.com/facebook/internal/p;>;"
        }
    .end annotation
.end method

.method protected abstract c()Lcom/facebook/internal/a;
.end method
