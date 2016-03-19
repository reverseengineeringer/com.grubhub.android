.class public Lcom/facebook/share/internal/u;
.super Lcom/facebook/internal/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/o",
        "<",
        "Lcom/facebook/share/internal/LikeContent;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/facebook/internal/k;->Like:Lcom/facebook/internal/k;

    .line 50
    invoke-virtual {v0}, Lcom/facebook/internal/k;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/internal/u;->b:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 85
    sget v0, Lcom/facebook/share/internal/u;->b:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/o;-><init>(Landroid/app/Activity;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/facebook/share/internal/u;->b:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/o;-><init>(Landroid/support/v4/app/Fragment;I)V

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/LikeContent;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lcom/facebook/share/internal/u;->b(Lcom/facebook/share/internal/LikeContent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/facebook/share/internal/LikeContent;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    const-string v1, "object_id"

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeContent;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "object_type"

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeContent;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-object v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/facebook/share/internal/u;->g()Lcom/facebook/internal/l;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/m;->a(Lcom/facebook/internal/l;)Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/facebook/share/internal/u;->g()Lcom/facebook/internal/l;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/m;->b(Lcom/facebook/internal/l;)Z

    move-result v0

    return v0
.end method

.method static synthetic f()Lcom/facebook/internal/l;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/facebook/share/internal/u;->g()Lcom/facebook/internal/l;

    move-result-object v0

    return-object v0
.end method

.method private static g()Lcom/facebook/internal/l;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/facebook/share/internal/x;->LIKE_DIALOG:Lcom/facebook/share/internal/x;

    return-object v0
.end method


# virtual methods
.method protected b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/o",
            "<",
            "Lcom/facebook/share/internal/LikeContent;",
            "Ljava/lang/Object;",
            ">.com/facebook/internal/p;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    new-instance v1, Lcom/facebook/share/internal/v;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/internal/v;-><init>(Lcom/facebook/share/internal/u;Lcom/facebook/share/internal/u$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Lcom/facebook/share/internal/w;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/internal/w;-><init>(Lcom/facebook/share/internal/u;Lcom/facebook/share/internal/u$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    return-object v0
.end method

.method protected c()Lcom/facebook/internal/a;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/facebook/internal/a;

    invoke-virtual {p0}, Lcom/facebook/share/internal/u;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/internal/a;-><init>(I)V

    return-object v0
.end method
