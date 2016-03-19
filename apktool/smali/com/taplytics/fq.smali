.class public Lcom/taplytics/fq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/taplytics/fq;


# instance fields
.field a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:I

.field private e:Ljava/lang/reflect/Method;

.field private f:Ljava/lang/reflect/Field;

.field private g:Ljava/lang/reflect/Field;

.field private h:Landroid/view/View$OnLayoutChangeListener;

.field private i:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/taplytics/fq;->e:Ljava/lang/reflect/Method;

    .line 49
    iput-object v0, p0, Lcom/taplytics/fq;->f:Ljava/lang/reflect/Field;

    .line 50
    iput-object v0, p0, Lcom/taplytics/fq;->g:Ljava/lang/reflect/Field;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taplytics/fq;->a:Ljava/util/HashSet;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taplytics/fq;->b:Ljava/util/HashMap;

    .line 78
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->t()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/taplytics/fq;->d:I

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 81
    new-instance v0, Lcom/taplytics/fr;

    invoke-direct {v0, p0}, Lcom/taplytics/fr;-><init>(Lcom/taplytics/fq;)V

    iput-object v0, p0, Lcom/taplytics/fq;->h:Landroid/view/View$OnLayoutChangeListener;

    .line 120
    new-instance v0, Lcom/taplytics/fs;

    invoke-direct {v0, p0}, Lcom/taplytics/fs;-><init>(Lcom/taplytics/fq;)V

    iput-object v0, p0, Lcom/taplytics/fq;->i:Landroid/view/View$OnLayoutChangeListener;

    .line 159
    :cond_0
    return-void
.end method

.method public static a()Lcom/taplytics/fq;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/taplytics/fq;->c:Lcom/taplytics/fq;

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/taplytics/fq;->c:Lcom/taplytics/fq;

    .line 36
    :goto_0
    return-object v0

    .line 34
    :cond_0
    new-instance v0, Lcom/taplytics/fq;

    invoke-direct {v0}, Lcom/taplytics/fq;-><init>()V

    sput-object v0, Lcom/taplytics/fq;->c:Lcom/taplytics/fq;

    .line 36
    sget-object v0, Lcom/taplytics/fq;->c:Lcom/taplytics/fq;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 178
    const-class v0, Landroid/support/v4/app/ac;

    if-ne p1, v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/taplytics/fq;->f:Ljava/lang/reflect/Field;

    .line 181
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taplytics/fq;->g:Ljava/lang/reflect/Field;

    goto :goto_0
.end method

.method public a(Ljava/lang/reflect/Field;Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 170
    const-class v0, Landroid/support/v4/app/ac;

    if-ne p2, v0, :cond_1

    .line 171
    iput-object p1, p0, Lcom/taplytics/fq;->f:Ljava/lang/reflect/Field;

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const-class v0, Landroid/support/v4/app/ad;

    if-ne p2, v0, :cond_0

    .line 173
    iput-object p1, p0, Lcom/taplytics/fq;->g:Ljava/lang/reflect/Field;

    goto :goto_0
.end method

.method public a(Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/taplytics/fq;->e:Ljava/lang/reflect/Method;

    .line 167
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/taplytics/fq;->d:I

    return v0
.end method

.method public c()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/taplytics/fq;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public d()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/taplytics/fq;->a:Ljava/util/HashSet;

    return-object v0
.end method

.method public e()Landroid/view/View$OnLayoutChangeListener;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/taplytics/fq;->h:Landroid/view/View$OnLayoutChangeListener;

    return-object v0
.end method

.method public f()Landroid/view/View$OnLayoutChangeListener;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/taplytics/fq;->i:Landroid/view/View$OnLayoutChangeListener;

    return-object v0
.end method

.method public g()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/taplytics/fq;->e:Ljava/lang/reflect/Method;

    return-object v0
.end method
