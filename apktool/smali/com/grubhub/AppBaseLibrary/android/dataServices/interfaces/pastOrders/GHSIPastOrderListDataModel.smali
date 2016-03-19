.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final pastOrders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;->pastOrders:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public abstract getEmail()Ljava/lang/String;
.end method

.method public abstract getFirstName()Ljava/lang/String;
.end method

.method public abstract getLastName()Ljava/lang/String;
.end method

.method public abstract getPastOrders()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPastOrdersCount()I
.end method

.method public abstract getToken()Ljava/lang/String;
.end method
