.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSToggleButton;
.super Landroid/widget/ToggleButton;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-static {p1, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/views/h;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    invoke-static {p1, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/views/h;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public setFont(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSToggleButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/h;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 33
    return-void
.end method
