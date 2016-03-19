.class public Landroid/support/v4/app/bd;
.super Landroid/support/v4/app/bs;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1636
    invoke-direct {p0}, Landroid/support/v4/app/bs;-><init>()V

    .line 1637
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/bd;
    .locals 0

    .prologue
    .line 1665
    iput-object p1, p0, Landroid/support/v4/app/bd;->a:Landroid/graphics/Bitmap;

    .line 1666
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bd;
    .locals 1

    .prologue
    .line 1648
    invoke-static {p1}, Landroid/support/v4/app/bf;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/bd;->e:Ljava/lang/CharSequence;

    .line 1649
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bd;
    .locals 1

    .prologue
    .line 1656
    invoke-static {p1}, Landroid/support/v4/app/bf;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/bd;->f:Ljava/lang/CharSequence;

    .line 1657
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/bd;->g:Z

    .line 1658
    return-object p0
.end method
