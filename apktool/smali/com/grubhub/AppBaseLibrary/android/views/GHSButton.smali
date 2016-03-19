.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSButton;
.super Landroid/widget/Button;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-static {p1, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/views/h;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSButton;->a()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-static {p1, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/views/h;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSButton;->a()V

    .line 29
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSButton;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public setFont(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/h;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 38
    return-void
.end method
