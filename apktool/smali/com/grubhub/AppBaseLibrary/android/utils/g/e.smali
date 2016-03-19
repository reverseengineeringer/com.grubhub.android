.class public abstract Lcom/grubhub/AppBaseLibrary/android/utils/g/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

.field protected b:Landroid/app/Activity;

.field protected c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

.field protected d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

.field private e:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/b;

.field private f:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/f;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;Lcom/grubhub/AppBaseLibrary/android/utils/g/f;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->b:Landroid/app/Activity;

    .line 32
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    .line 33
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/utils/g/e;Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->c(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    return-void
.end method

.method private c(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    .line 125
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$7;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/e;Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 131
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$8;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/e;Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 137
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->a()V

    .line 138
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
.end method

.method protected abstract a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;)V
.end method

.method protected abstract a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;)V
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 78
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/f;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->b:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/f;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/f;

    .line 79
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/f;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$3;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/e;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/f;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 86
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/f;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$4;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/e;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/f;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 93
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/f;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/f;->a()V

    .line 94
    return-void
.end method

.method protected abstract b(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
.end method

.method protected b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    .line 103
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$5;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 109
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$6;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/e;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 115
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->a()V

    .line 116
    return-void
.end method

.method protected abstract e()V
.end method

.method protected f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/b;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/b;

    .line 62
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/e;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 68
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/e$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/e;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 74
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/b;->a()V

    .line 75
    return-void
.end method

.method public h_()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/b;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/b;->g()V

    .line 43
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/b;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/f;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/f;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/f;->g()V

    .line 48
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/f;

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->g()V

    .line 53
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    .line 55
    :cond_2
    return-void
.end method
