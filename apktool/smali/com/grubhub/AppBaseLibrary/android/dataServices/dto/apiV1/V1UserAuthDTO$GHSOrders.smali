.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSOrders;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSIOrders;


# instance fields
.field private order:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSOrder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSOrders;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSOrders;->order:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
