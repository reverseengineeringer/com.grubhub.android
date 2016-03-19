.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;
.super Landroid/widget/Spinner;
.source "SourceFile"


# instance fields
.field private a:Lcom/grubhub/AppBaseLibrary/android/views/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;)Lcom/grubhub/AppBaseLibrary/android/views/j;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;->a:Lcom/grubhub/AppBaseLibrary/android/views/j;

    return-object v0
.end method


# virtual methods
.method public getLocation()Lcom/grubhub/AppBaseLibrary/android/views/j;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;->a:Lcom/grubhub/AppBaseLibrary/android/views/j;

    return-object v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;->a:Lcom/grubhub/AppBaseLibrary/android/views/j;

    if-nez v0, :cond_0

    .line 71
    const-string v0, "PAYMENT_DROPDOWN_OPENED"

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;)V

    .line 78
    :goto_0
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    return v0

    .line 73
    :cond_0
    const-string v0, "PAYMENT_DROPDOWN_OPENED"

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setLocation(Lcom/grubhub/AppBaseLibrary/android/views/j;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;->a:Lcom/grubhub/AppBaseLibrary/android/views/j;

    .line 61
    return-void
.end method
