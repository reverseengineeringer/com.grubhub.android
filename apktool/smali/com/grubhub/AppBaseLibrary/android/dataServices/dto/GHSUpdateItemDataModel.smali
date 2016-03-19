.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private choiceOptions:Ljava/lang/String;

.field private itemSpecialInstructions:Ljava/lang/String;

.field private menuGenerationDate:Ljava/lang/String;

.field private menuItemId:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private orderItemId:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private quantity:Ljava/lang/Integer;

.field private subOptions:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->menuGenerationDate:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->menuItemId:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->quantity:Ljava/lang/Integer;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->choiceOptions:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->subOptions:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->password:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->username:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChoiceOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->choiceOptions:Ljava/lang/String;

    return-object v0
.end method

.method public getGenerationDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->menuGenerationDate:Ljava/lang/String;

    return-object v0
.end method

.method public getItemSpecialInstructions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->itemSpecialInstructions:Ljava/lang/String;

    return-object v0
.end method

.method public getNewMenuItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->menuItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getOldMenuItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->orderItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->quantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSubOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->subOptions:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setChoiceOptions(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->choiceOptions:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setChoiceOptions(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    const-string v1, ""

    .line 63
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 65
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v1

    .line 69
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 74
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v1, v0

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->choiceOptions:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setGenerationDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->menuGenerationDate:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setItemSpecialInstructions(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->itemSpecialInstructions:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setNewMenuItemId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->menuItemId:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setOldMenuItemId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->orderItemId:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->orderId:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->password:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setQuantity(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->quantity:Ljava/lang/Integer;

    .line 44
    return-void
.end method

.method public setSubOptions(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->subOptions:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSUpdateItemDataModel;->username:Ljava/lang/String;

    .line 160
    return-void
.end method
