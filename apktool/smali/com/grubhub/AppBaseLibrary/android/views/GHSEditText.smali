.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/view/KeyEvent$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-static {p1, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/views/h;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-static {p1, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/views/h;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->a:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->b:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->b:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->b:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->b:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 76
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setFont(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/h;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 56
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->setFont(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method public setKeyEventCallback(Landroid/view/KeyEvent$Callback;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->b:Landroid/view/KeyEvent$Callback;

    .line 48
    return-void
.end method
