.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-static {p1, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/views/h;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-static {p1, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/views/h;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public setFont(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/h;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 35
    return-void
.end method
