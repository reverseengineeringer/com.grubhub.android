.class Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/grubhub/AppBaseLibrary/android/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1127
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane$SavedState$1;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane$SavedState$1;-><init>()V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 1146
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1148
    :try_start_0
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/j;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/j;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane$SavedState;->a:Lcom/grubhub/AppBaseLibrary/android/j;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    :goto_0
    return-void

    .line 1149
    :catch_0
    move-exception v0

    .line 1150
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/j;->COLLAPSED:Lcom/grubhub/AppBaseLibrary/android/j;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane$SavedState;->a:Lcom/grubhub/AppBaseLibrary/android/j;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane$1;)V
    .locals 0

    .prologue
    .line 1126
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 1142
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1143
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1156
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1157
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane$SavedState;->a:Lcom/grubhub/AppBaseLibrary/android/j;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/j;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1158
    return-void
.end method
