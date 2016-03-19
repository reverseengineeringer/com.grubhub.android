.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO$CartLineOptionData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel$GHSICartOptions;


# instance fields
.field private id:Ljava/lang/String;

.field private sub_option_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO$CartLineOptionData;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel$GHSICartOptions;)V
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO$CartLineOptionData;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-eqz p2, :cond_0

    .line 70
    invoke-interface {p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel$GHSICartOptions;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO$CartLineOptionData;->setId(Ljava/lang/String;)V

    .line 71
    invoke-interface {p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel$GHSICartOptions;->getSubOptionIds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO$CartLineOptionData;->setSubOptionIds(Ljava/util/List;)V

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO$CartLineOptionData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSubOptionIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO$CartLineOptionData;->sub_option_ids:Ljava/util/List;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO$CartLineOptionData;->id:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setSubOptionIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO$CartLineOptionData;->sub_option_ids:Ljava/util/List;

    .line 88
    return-void
.end method
